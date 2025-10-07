import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart' as geo;
import 'package:geotypes/geotypes.dart' as geotypes;
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:vyra/feature/map/data/models/route_model.dart';
import 'package:vyra/feature/map/data/repositories/map_repository.dart';
import 'package:vyra/injection_container.dart';

import 'map_state.dart';

class MapCubit extends Cubit<MapState> {
  final geo.GeolocatorPlatform _geolocator = sl<geo.GeolocatorPlatform>();
  final MapRepository _mapRepository = sl<MapRepository>();

  MapCubit() : super(const MapState());

  void setMapboxMap(MapboxMap mapboxMap) {
    emit(state.copyWith(mapboxMap: mapboxMap));
  }

  void setLocationSearched() {
    emit(state.copyWith(status: MapStatus.locationSearched));
  }

  void setLocation(Point location) {
    emit(state.copyWith(location: location, status: MapStatus.loaded));
  }

  Future<void> getCurrentLocation() async {
    // Prevent multiple simultaneous calls
    if (state.status == MapStatus.loading) {
      return;
    }

    try {
      emit(state.copyWith(status: MapStatus.loading));

      // Check if location services are enabled
      bool serviceEnabled = await geo.Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        emit(state.copyWith(status: MapStatus.permissionDenied));
        return;
      }

      // Check location permission
      geo.LocationPermission permission =
          await geo.Geolocator.checkPermission();
      if (permission == geo.LocationPermission.denied) {
        permission = await geo.Geolocator.requestPermission();
        if (permission == geo.LocationPermission.denied) {
          emit(state.copyWith(status: MapStatus.permissionDenied));
          return;
        }
      }

      if (permission == geo.LocationPermission.deniedForever) {
        emit(
          state.copyWith(
            status: MapStatus.permissionDenied,
            isPermissionDeniedForever: true,
          ),
        );
        return;
      }

      // Get current position with timeout
      geo.Position position = await _geolocator.getCurrentPosition(
        locationSettings: const geo.LocationSettings(
          accuracy: geo.LocationAccuracy.high,
          timeLimit: Duration(seconds: 10),
        ),
      );

      // Create Point from position
      Point location = Point(
        coordinates: geotypes.Position(position.longitude, position.latitude),
      );

      setLocation(location);

      // Fly to the user's location
      flyToLocation(location);
    } catch (e) {
      emit(state.copyWith(status: MapStatus.permissionDenied));
    }
  }

  Future<bool> checkLocationPermissionStatus() async {
    try {
      // Check if location services are enabled
      bool serviceEnabled = await geo.Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        return false;
      }

      // Check location permission status without requesting
      geo.LocationPermission permission =
          await geo.Geolocator.checkPermission();

      return permission == geo.LocationPermission.whileInUse ||
          permission == geo.LocationPermission.always;
    } catch (e) {
      return false;
    }
  }

  Future<bool> requestLocationPermission() async {
    try {
      // Request location permission using permission_handler
      PermissionStatus status = await Permission.location.request();

      if (status.isGranted) {
        await getCurrentLocation();
        return true;
      } else if (status.isDenied) {
        emit(state.copyWith(status: MapStatus.permissionDenied));
        return false;
      } else if (status.isPermanentlyDenied) {
        emit(
          state.copyWith(
            status: MapStatus.permissionDenied,
            isPermissionDeniedForever: true,
          ),
        );
        return false;
      }

      return false;
    } catch (e) {
      emit(state.copyWith(status: MapStatus.permissionDenied));
      return false;
    }
  }

  void flyToLocation(Point location) {
    if (state.mapboxMap != null) {
      state.mapboxMap!.flyTo(
        CameraOptions(center: location, zoom: 15.0),
        MapAnimationOptions(duration: 2000),
      );
    }
  }

  Future<void> openAppSettings() async {
    await openAppSettings();
  }

  void setMode(String mode) {
    emit(state.copyWith(selectedMode: mode));
  }

  void setSeason(String season) {
    emit(state.copyWith(selectedSeason: season));
  }

  void toggleHeatmap() {
    final newHeatmapVisible = !state.isHeatmapVisible;
    emit(state.copyWith(isHeatmapVisible: newHeatmapVisible));

    if (newHeatmapVisible && state.routeData != null) {
      _drawHeatmap();
    } else {
      _clearHeatmap();
    }
  }

  void showRouteCard() {
    emit(state.copyWith(isRouteCardVisible: true));
  }

  void hideRouteCard() {
    emit(
      state.copyWith(
        isRouteCardVisible: false,
        routeData: null,
        status: MapStatus.loaded,
      ),
    );
    clearRoutesFromMap();
  }

  void setOriginDestination(Point origin, Point destination) {
    emit(state.copyWith(origin: origin, destination: destination));
  }

  Future<void> fetchRoute(String accessToken) async {
    if (state.origin == null || state.destination == null) {
      emit(state.copyWith(status: MapStatus.routeFailed));
      return;
    }

    emit(state.copyWith(status: MapStatus.routeLoading));

    final origin = <double>[
      state.origin!.coordinates.lng.toDouble(),
      state.origin!.coordinates.lat.toDouble(),
    ];
    final destination = <double>[
      state.destination!.coordinates.lng.toDouble(),
      state.destination!.coordinates.lat.toDouble(),
    ];

    final result = await _mapRepository.getRoute(
      accessToken: accessToken,
      origin: origin,
      destination: destination,
      mode: state.selectedMode,
      season: state.selectedSeason,
    );

    result.fold(
      (error) {
        emit(state.copyWith(status: MapStatus.routeFailed));
      },
      (routeData) {
        emit(
          state.copyWith(status: MapStatus.routeLoaded, routeData: routeData),
        );
        drawRoutesOnMap(routeData);

        // Also fetch heatmap data for the route area
        _fetchHeatmapData(accessToken, origin, destination);
      },
    );
  }

  Future<void> drawRoutesOnMap(RouteModel routeData) async {
    if (state.mapboxMap == null) {
      return;
    }

    try {
      final mapboxMap = state.mapboxMap!;
      // Clear any existing polylines
      await clearRoutesFromMap();

      // Extract coordinates from GeoJSON
      final healthiestCoordinates =
          routeData.healthiest.geojson.features.isNotEmpty
              ? routeData.healthiest.geojson.features[0].geometry.coordinates
              : <List<double>>[];

      final fastestCoordinates =
          routeData.fastest.geojson.features.isNotEmpty
              ? routeData.fastest.geojson.features[0].geometry.coordinates
              : <List<double>>[];

      // Create polyline for healthiest route (accent color)
      if (healthiestCoordinates.isNotEmpty) {
        await _createPolyline(
          mapboxMap: mapboxMap,
          id: 'healthiest-route',
          coordinates: healthiestCoordinates,
          color: 0xFF4CAF50, // Accent green color
          width: 8.0,
        );
      } else {}

      // Create polyline for fastest route (orange color)
      if (fastestCoordinates.isNotEmpty) {
        await _createPolyline(
          mapboxMap: mapboxMap,
          id: 'fastest-route',
          coordinates: fastestCoordinates,
          color: 0xFFFF9800, // Orange color
          width: 8.0,
        );
      } else {}

      // Add point annotations for route markers
      await _addRouteMarkers(mapboxMap, routeData);

      // Zoom to fit both routes
      await _zoomToFitRoutes(mapboxMap, routeData);
    } catch (e) {}
  }

  Future<void> _createPolyline({
    required MapboxMap mapboxMap,
    required String id,
    required List<List<double>> coordinates,
    required int color,
    required double width,
  }) async {
    try {
      if (coordinates.isEmpty) {
        return;
      }

      // Create GeoJSON string for the line
      final geoJsonData = '''
      {
        "type": "Feature",
        "geometry": {
          "type": "LineString",
          "coordinates": ${_coordinatesToJsonString(coordinates)}
        }
      }
      ''';

      await mapboxMap.style.addSource(
        GeoJsonSource(id: '$id-source', data: geoJsonData),
      );

      // Create a background line for better visibility (like Google Maps)
      await mapboxMap.style.addLayer(
        LineLayer(
          id: '$id-background',
          sourceId: '$id-source',
          lineColor: 0xFF000000, // Black background
          lineWidth: width + 4.0, // Slightly thicker background
          lineCap: LineCap.ROUND,
          lineJoin: LineJoin.ROUND,
        ),
      );

      // Create the main colored line
      await mapboxMap.style.addLayer(
        LineLayer(
          id: id,
          sourceId: '$id-source',
          lineColor: color,
          lineWidth: width,
          lineCap: LineCap.ROUND,
          lineJoin: LineJoin.ROUND,
        ),
      );
    } catch (e) {}
  }

  String _coordinatesToJsonString(List<List<double>> coordinates) {
    final coordStrings = coordinates
        .map((coord) => '[${coord[0]}, ${coord[1]}]')
        .join(', ');
    return '[$coordStrings]';
  }

  Future<void> _addRouteMarkers(
    MapboxMap mapboxMap,
    RouteModel routeData,
  ) async {
    try {
      // Add destination marker (red pin like Google Maps)
      await _addDestinationMarker(mapboxMap);

      // Add origin marker (blue pin for current location)
      await _addOriginMarker(mapboxMap);
    } catch (e) {}
  }

  // Add destination marker (red pin)
  Future<void> _addDestinationMarker(MapboxMap mapboxMap) async {
    try {
      if (state.destination == null) return;

      final destCoord = [
        state.destination!.coordinates.lng,
        state.destination!.coordinates.lat,
      ];

      // Create destination marker source
      await mapboxMap.style.addSource(
        GeoJsonSource(
          id: 'destination-source',
          data: '''
          {
            "type": "Feature",
            "geometry": {
              "type": "Point",
              "coordinates": [${destCoord[0]}, ${destCoord[1]}]
            }
          }
          ''',
        ),
      );

      // Create destination marker (red pin)
      await mapboxMap.style.addLayer(
        CircleLayer(
          id: 'destination-marker',
          sourceId: 'destination-source',
          circleRadius: 12.0,
          circleColor: 0xFFF44336, // Red color
          circleStrokeColor: 0xFFFFFFFF,
          circleStrokeWidth: 4.0,
        ),
      );

      // Add a smaller inner circle for the pin effect
      await mapboxMap.style.addLayer(
        CircleLayer(
          id: 'destination-marker-inner',
          sourceId: 'destination-source',
          circleRadius: 6.0,
          circleColor: 0xFFFFFFFF, // White inner circle
        ),
      );
    } catch (e) {}
  }

  // Add origin marker (blue pin for current location)
  Future<void> _addOriginMarker(MapboxMap mapboxMap) async {
    if (state.origin == null) return;

    final originCoord = [
      state.origin!.coordinates.lng,
      state.origin!.coordinates.lat,
    ];

    // Create origin marker source
    await mapboxMap.style.addSource(
      GeoJsonSource(
        id: 'origin-source',
        data: '''
          {
            "type": "Feature",
            "geometry": {
              "type": "Point",
              "coordinates": [${originCoord[0]}, ${originCoord[1]}]
            }
          }
          ''',
      ),
    );

    await mapboxMap.style.addLayer(
      CircleLayer(
        id: 'origin-marker',
        sourceId: 'origin-source',
        circleRadius: 10.0,
        circleColor: 0xFF2196F3, // Blue color
        circleStrokeColor: 0xFFFFFFFF,
        circleStrokeWidth: 3.0,
      ),
    );

    await mapboxMap.style.addLayer(
      CircleLayer(
        id: 'origin-marker-inner',
        sourceId: 'origin-source',
        circleRadius: 5.0,
        circleColor: 0xFFFFFFFF, // White inner circle
      ),
    );
  }

  Future<void> _zoomToFitRoutes(
    MapboxMap mapboxMap,
    RouteModel routeData,
  ) async {
    try {
      // Extract coordinates from GeoJSON
      final healthiestCoordinates =
          routeData.healthiest.geojson.features.isNotEmpty
              ? routeData.healthiest.geojson.features[0].geometry.coordinates
              : <List<double>>[];

      final fastestCoordinates =
          routeData.fastest.geojson.features.isNotEmpty
              ? routeData.fastest.geojson.features[0].geometry.coordinates
              : <List<double>>[];

      // Collect all coordinates from both routes
      final allCoordinates = [...healthiestCoordinates, ...fastestCoordinates];

      // Calculate bounds
      double minLng = allCoordinates[0][0];
      double maxLng = allCoordinates[0][0];
      double minLat = allCoordinates[0][1];
      double maxLat = allCoordinates[0][1];

      for (final coord in allCoordinates) {
        if (coord[0] < minLng) minLng = coord[0];
        if (coord[0] > maxLng) maxLng = coord[0];
        if (coord[1] < minLat) minLat = coord[1];
        if (coord[1] > maxLat) maxLat = coord[1];
      }

      await mapboxMap.flyTo(
        CameraOptions(
          center: Point(
            coordinates: geotypes.Position(
              (minLng + maxLng) / 2,
              (minLat + maxLat) / 2,
            ),
          ),
          zoom: 13.0,
        ),
        MapAnimationOptions(duration: 1500),
      );
    } catch (e) {}
  }

  Future<void> clearRoutesFromMap() async {
    if (state.mapboxMap == null) return;

    try {
      final mapboxMap = state.mapboxMap!;

      // Remove route layers
      try {
        await mapboxMap.style.removeStyleLayer('healthiest-route');
      } catch (_) {}
      try {
        await mapboxMap.style.removeStyleLayer('healthiest-route-background');
      } catch (_) {}
      try {
        await mapboxMap.style.removeStyleLayer('fastest-route');
      } catch (_) {}
      try {
        await mapboxMap.style.removeStyleLayer('fastest-route-background');
      } catch (_) {}

      // Remove route sources
      try {
        await mapboxMap.style.removeStyleSource('healthiest-route-source');
      } catch (_) {}
      try {
        await mapboxMap.style.removeStyleSource('fastest-route-source');
      } catch (_) {}

      // Remove destination marker layers
      try {
        await mapboxMap.style.removeStyleLayer('destination-marker');
      } catch (_) {}
      try {
        await mapboxMap.style.removeStyleLayer('destination-marker-inner');
      } catch (_) {}

      // Remove origin marker layers
      try {
        await mapboxMap.style.removeStyleLayer('origin-marker');
      } catch (_) {}
      try {
        await mapboxMap.style.removeStyleLayer('origin-marker-inner');
      } catch (_) {}

      // Remove marker sources
      try {
        await mapboxMap.style.removeStyleSource('destination-source');
      } catch (_) {}
      try {
        await mapboxMap.style.removeStyleSource('origin-source');
      } catch (_) {}
    } catch (e) {}
  }

  // Start navigation for a specific route
  Future<void> startNavigation({
    required RouteDetail routeDetail,
    required String routeType, // 'healthiest' or 'fastest'
  }) async {
    if (state.mapboxMap == null || state.routeData == null) return;

    try {
      // Clear existing routes
      await clearRoutesFromMap();

      // Draw only the selected route with enhanced styling
      await _drawNavigationRoute(routeDetail, routeType);

      // Update state to show navigation is active
      emit(
        state.copyWith(
          status: MapStatus.navigating,
          isRouteCardVisible: false, // Hide route card during navigation
          isNavigating: true,
          currentNavigationRoute: routeType,
        ),
      );

      // Zoom to the route
      await _zoomToRoute(routeDetail);
    } catch (e) {}
  }

  // Draw the selected route for navigation
  Future<void> _drawNavigationRoute(
    RouteDetail routeDetail,
    String routeType,
  ) async {
    try {
      final mapboxMap = state.mapboxMap!;
      // Extract coordinates from GeoJSON
      final coordinates =
          routeDetail.geojson.features.isNotEmpty
              ? routeDetail.geojson.features[0].geometry.coordinates
              : <List<double>>[];

      if (coordinates.isEmpty) {
        return;
      }

      // Determine color based on route type
      final color = routeType == 'healthiest' ? 0xFF4CAF50 : 0xFFFF9800;

      // Create polyline for navigation route with enhanced styling
      await _createPolyline(
        mapboxMap: mapboxMap,
        id: 'navigation-route',
        coordinates: coordinates,
        color: color,
        width: 10.0, // Thicker line for navigation
      );

      // Add start and end markers
      await _addNavigationMarkers(mapboxMap, coordinates);
    } catch (e) {}
  }

  // Add start and end markers for navigation
  Future<void> _addNavigationMarkers(
    MapboxMap mapboxMap,
    List<List<double>> coordinates,
  ) async {
    try {
      if (coordinates.isEmpty) return;

      // Start marker (green)
      final startCoord = coordinates.first;
      await mapboxMap.style.addSource(
        GeoJsonSource(
          id: 'navigation-start-source',
          data: '''
          {
            "type": "Feature",
            "geometry": {
              "type": "Point",
              "coordinates": [${startCoord[0]}, ${startCoord[1]}]
            }
          }
          ''',
        ),
      );

      await mapboxMap.style.addLayer(
        CircleLayer(
          id: 'navigation-start',
          sourceId: 'navigation-start-source',
          circleRadius: 8.0,
          circleColor: 0xFF4CAF50,
          circleStrokeColor: 0xFFFFFFFF,
          circleStrokeWidth: 3.0,
        ),
      );

      // End marker (red)
      final endCoord = coordinates.last;
      await mapboxMap.style.addSource(
        GeoJsonSource(
          id: 'navigation-end-source',
          data: '''
          {
            "type": "Feature",
            "geometry": {
              "type": "Point",
              "coordinates": [${endCoord[0]}, ${endCoord[1]}]
            }
          }
          ''',
        ),
      );

      await mapboxMap.style.addLayer(
        CircleLayer(
          id: 'navigation-end',
          sourceId: 'navigation-end-source',
          circleRadius: 8.0,
          circleColor: 0xFFF44336,
          circleStrokeColor: 0xFFFFFFFF,
          circleStrokeWidth: 3.0,
        ),
      );
    } catch (e) {}
  }

  // Zoom to fit the navigation route
  Future<void> _zoomToRoute(RouteDetail routeDetail) async {
    try {
      final mapboxMap = state.mapboxMap!;

      final coordinates =
          routeDetail.geojson.features.isNotEmpty
              ? routeDetail.geojson.features[0].geometry.coordinates
              : <List<double>>[];

      if (coordinates.isEmpty) return;

      // Calculate bounds
      double minLng = coordinates[0][0];
      double maxLng = coordinates[0][0];
      double minLat = coordinates[0][1];
      double maxLat = coordinates[0][1];

      for (final coord in coordinates) {
        if (coord[0] < minLng) minLng = coord[0];
        if (coord[0] > maxLng) maxLng = coord[0];
        if (coord[1] < minLat) minLat = coord[1];
        if (coord[1] > maxLat) maxLat = coord[1];
      }

      await mapboxMap.flyTo(
        CameraOptions(
          center: Point(
            coordinates: geotypes.Position(
              (minLng + maxLng) / 2,
              (minLat + maxLat) / 2,
            ),
          ),
          zoom: 15.0, // Closer zoom for navigation
        ),
        MapAnimationOptions(duration: 2000),
      );
    } catch (e) {}
  }

  // Stop navigation and return to normal view
  Future<void> stopNavigation() async {
    try {
      // Clear navigation routes and markers
      await clearNavigationFromMap();

      // Show route card again
      emit(
        state.copyWith(
          status: MapStatus.routeLoaded,
          isRouteCardVisible: true,
          isNavigating: false,
          currentNavigationRoute: null,
        ),
      );

      // Redraw both routes
      if (state.routeData != null) {
        await drawRoutesOnMap(state.routeData!);
      }
    } catch (e) {}
  }

  // Clear navigation-specific elements from map
  Future<void> clearNavigationFromMap() async {
    if (state.mapboxMap == null) return;

    try {
      final mapboxMap = state.mapboxMap!;

      // Remove navigation layers
      try {
        await mapboxMap.style.removeStyleLayer('navigation-route');
      } catch (_) {}
      try {
        await mapboxMap.style.removeStyleLayer('navigation-route-background');
      } catch (_) {}
      try {
        await mapboxMap.style.removeStyleLayer('navigation-start');
      } catch (_) {}
      try {
        await mapboxMap.style.removeStyleLayer('navigation-end');
      } catch (_) {}

      // Remove navigation sources
      try {
        await mapboxMap.style.removeStyleSource('navigation-route-source');
      } catch (_) {}
      try {
        await mapboxMap.style.removeStyleSource('navigation-start-source');
      } catch (_) {}
      try {
        await mapboxMap.style.removeStyleSource('navigation-end-source');
      } catch (_) {}

      // Remove destination marker layers
      try {
        await mapboxMap.style.removeStyleLayer('destination-marker');
      } catch (_) {}
      try {
        await mapboxMap.style.removeStyleLayer('destination-marker-inner');
      } catch (_) {}

      // Remove origin marker layers
      try {
        await mapboxMap.style.removeStyleLayer('origin-marker');
      } catch (_) {}
      try {
        await mapboxMap.style.removeStyleLayer('origin-marker-inner');
      } catch (_) {}

      // Remove marker sources
      try {
        await mapboxMap.style.removeStyleSource('destination-source');
      } catch (_) {}
      try {
        await mapboxMap.style.removeStyleSource('origin-source');
      } catch (_) {}
    } catch (e) {}
  }

  // Draw heatmap on the map
  Future<void> _drawHeatmap() async {
    if (state.mapboxMap == null || state.heatmap == null) return;

    try {
      final mapboxMap = state.mapboxMap!;
      // Create heatmap data points from the features
      final heatmapFeatures =
          state.heatmap!.features.map((feature) {
            // Extract coordinates from the geometry
            final coordinates = feature.geometry.coordinates;
            // The coordinates structure is List<List<List<double>>>
            // We need to extract the first coordinate pair for each feature
            final lat =
                coordinates.isNotEmpty && coordinates[0].isNotEmpty
                    ? coordinates[0][0][1] // latitude
                    : 0.0;
            final lng =
                coordinates.isNotEmpty && coordinates[0].isNotEmpty
                    ? coordinates[0][0][0] // longitude
                    : 0.0;

            return {
              "type": "Feature",
              "geometry": {
                "type": "Point",
                "coordinates": [lng, lat],
              },
              "properties": {
                "hsi": feature.properties.hsi,
                "value": feature.properties.hsi,
                "risk_level": feature.properties.riskLevel,
              },
            };
          }).toList();

      final heatmapGeoJson = {
        "type": "FeatureCollection",
        "features": heatmapFeatures,
      };

      // Add heatmap source
      await mapboxMap.style.addSource(
        GeoJsonSource(id: 'heatmap-source', data: heatmapGeoJson.toString()),
      );

      // Create heatmap circles with red color scheme
      await mapboxMap.style.addLayer(
        CircleLayer(
          id: 'heatmap-circles',
          sourceId: 'heatmap-source',
          circleRadius: 8.0,
          circleColor: 0xFFFF0000, // Red color to match toggle
          circleStrokeColor: 0xFFFFFFFF,
          circleStrokeWidth: 1.0,
          circleOpacity: 0.7,
        ),
      );
    } catch (e) {}
  }

  // Clear heatmap from map
  Future<void> _clearHeatmap() async {
    if (state.mapboxMap == null) return;

    try {
      final mapboxMap = state.mapboxMap!;

      // Remove heatmap layer
      try {
        await mapboxMap.style.removeStyleLayer('heatmap-circles');
      } catch (_) {}

      // Remove heatmap source
      try {
        await mapboxMap.style.removeStyleSource('heatmap-source');
      } catch (_) {}
    } catch (e) {}
  }

  // Fetch heatmap data for the route area
  Future<void> _fetchHeatmapData(
    String accessToken,
    List<double> origin,
    List<double> destination,
  ) async {
    try {
      final result = await _mapRepository.getHeatmap(
        accessToken: accessToken,
        season: state.selectedSeason,
        resolution: 100, // Medium resolution for good performance
      );

      result.fold((error) {}, (heatmapData) {
        emit(state.copyWith(heatmap: heatmapData));

        // If heatmap is currently visible, draw it immediately
        if (state.isHeatmapVisible) {
          _drawHeatmap();
        }
      });
    } catch (e) {}
  }

  // Get metadata about the city, area of interest, data layers, HSI weights, and current season
  Future<void> fetchMetadata(String accessToken) async {
    try {
      emit(state.copyWith(status: MapStatus.metadataLoading));

      final result = await _mapRepository.getMetadata(accessToken: accessToken);

      result.fold(
        (error) {
          emit(state.copyWith(status: MapStatus.failed, errorMessage: error));
        },
        (metadata) {
          emit(
            state.copyWith(
              status: MapStatus.metadataLoaded,
              metadata: metadata,
            ),
          );
        },
      );
    } catch (e) {
      emit(
        state.copyWith(status: MapStatus.failed, errorMessage: e.toString()),
      );
    }
  }

  // Get real-time health advisories for different areas
  Future<void> fetchPredictions(String accessToken) async {
    try {
      emit(state.copyWith(status: MapStatus.predictionsLoading));

      final result = await _mapRepository.getPredictions(
        accessToken: accessToken,
      );

      result.fold(
        (error) {
          emit(state.copyWith(status: MapStatus.failed, errorMessage: error));
        },
        (predictions) {
          emit(
            state.copyWith(
              status: MapStatus.predictionsLoaded,
              predictions: predictions,
            ),
          );
        },
      );
    } catch (e) {
      emit(
        state.copyWith(status: MapStatus.failed, errorMessage: e.toString()),
      );
    }
  }

  // Simulate tree planting impact on HSI values
  Future<void> simulateTreePlanting({
    required String accessToken,
    required List<List<int>> cells,
    required double treeFactor,
  }) async {
    try {
      emit(state.copyWith(status: MapStatus.simulationLoading));

      final result = await _mapRepository.simulateTreePlanting(
        accessToken: accessToken,
        cells: cells,
        treeFactor: treeFactor,
      );

      result.fold(
        (error) {
          emit(state.copyWith(status: MapStatus.failed, errorMessage: error));
        },
        (simulation) {
          emit(
            state.copyWith(
              status: MapStatus.simulationLoaded,
              simulation: simulation,
            ),
          );
        },
      );
    } catch (e) {
      emit(
        state.copyWith(status: MapStatus.failed, errorMessage: e.toString()),
      );
    }
  }

  // Generate HSI heatmap data for the entire area
  Future<void> fetchHeatmap({
    required String accessToken,
    required String season,
    required int resolution,
  }) async {
    try {
      emit(state.copyWith(status: MapStatus.heatmapLoading));

      final result = await _mapRepository.getHeatmap(
        accessToken: accessToken,
        season: season,
        resolution: resolution,
      );

      result.fold(
        (error) {
          emit(state.copyWith(status: MapStatus.failed, errorMessage: error));
        },
        (heatmap) {
          emit(
            state.copyWith(status: MapStatus.heatmapLoaded, heatmap: heatmap),
          );
        },
      );
    } catch (e) {
      emit(
        state.copyWith(status: MapStatus.failed, errorMessage: e.toString()),
      );
    }
  }

  // Clear error message
  void clearError() {
    emit(state.copyWith(errorMessage: null));
  }
}
