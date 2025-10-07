import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';
import 'package:vyra/feature/map/data/models/heatmap_model.dart';
import 'package:vyra/feature/map/data/models/metadata_model.dart';
import 'package:vyra/feature/map/data/models/prediction_model.dart';
import 'package:vyra/feature/map/data/models/route_model.dart';
import 'package:vyra/feature/map/data/models/simulation_model.dart';

part 'map_state.freezed.dart';

enum MapStatus {
  initial,
  loading,
  loaded,
  locationSearched,
  routeLoading,
  routeLoaded,
  routeFailed,
  failed,
  permissionDenied,
  metadataLoading,
  metadataLoaded,
  predictionsLoading,
  predictionsLoaded,
  simulationLoading,
  simulationLoaded,
  heatmapLoading,
  heatmapLoaded,
  navigating,
}

@freezed
class MapState with _$MapState {
  const factory MapState({
    @Default(MapStatus.initial) MapStatus status,
    Point? location,
    MapboxMap? mapboxMap,
    @Default('walking') String selectedMode,
    @Default('winter') String selectedSeason,
    RouteModel? routeData,
    @Default(false) bool isRouteCardVisible,
    Point? origin,
    Point? destination,
    @Default(false) bool isPermissionDeniedForever,
    MetadataModel? metadata,
    PredictionModel? predictions,
    SimulationModel? simulation,
    HeatmapModel? heatmap,
    String? errorMessage,
    @Default(false) bool isNavigating,
    String? currentNavigationRoute, // 'healthiest' or 'fastest'
    @Default(false) bool isHeatmapVisible, // Toggle for heatmap visibility
  }) = _MapState;
}
