// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MapState {
  MapStatus get status => throw _privateConstructorUsedError;
  Point? get location => throw _privateConstructorUsedError;
  MapboxMap? get mapboxMap => throw _privateConstructorUsedError;
  String get selectedMode => throw _privateConstructorUsedError;
  String get selectedSeason => throw _privateConstructorUsedError;
  RouteModel? get routeData => throw _privateConstructorUsedError;
  bool get isRouteCardVisible => throw _privateConstructorUsedError;
  Point? get origin => throw _privateConstructorUsedError;
  Point? get destination => throw _privateConstructorUsedError;
  bool get isPermissionDeniedForever => throw _privateConstructorUsedError;
  MetadataModel? get metadata => throw _privateConstructorUsedError;
  PredictionModel? get predictions => throw _privateConstructorUsedError;
  SimulationModel? get simulation => throw _privateConstructorUsedError;
  HeatmapModel? get heatmap => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  bool get isNavigating => throw _privateConstructorUsedError;
  String? get currentNavigationRoute =>
      throw _privateConstructorUsedError; // 'healthiest' or 'fastest'
  bool get isHeatmapVisible => throw _privateConstructorUsedError;

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MapStateCopyWith<MapState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapStateCopyWith<$Res> {
  factory $MapStateCopyWith(MapState value, $Res Function(MapState) then) =
      _$MapStateCopyWithImpl<$Res, MapState>;
  @useResult
  $Res call(
      {MapStatus status,
      Point? location,
      MapboxMap? mapboxMap,
      String selectedMode,
      String selectedSeason,
      RouteModel? routeData,
      bool isRouteCardVisible,
      Point? origin,
      Point? destination,
      bool isPermissionDeniedForever,
      MetadataModel? metadata,
      PredictionModel? predictions,
      SimulationModel? simulation,
      HeatmapModel? heatmap,
      String? errorMessage,
      bool isNavigating,
      String? currentNavigationRoute,
      bool isHeatmapVisible});

  $RouteModelCopyWith<$Res>? get routeData;
  $MetadataModelCopyWith<$Res>? get metadata;
  $PredictionModelCopyWith<$Res>? get predictions;
  $SimulationModelCopyWith<$Res>? get simulation;
  $HeatmapModelCopyWith<$Res>? get heatmap;
}

/// @nodoc
class _$MapStateCopyWithImpl<$Res, $Val extends MapState>
    implements $MapStateCopyWith<$Res> {
  _$MapStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? location = freezed,
    Object? mapboxMap = freezed,
    Object? selectedMode = null,
    Object? selectedSeason = null,
    Object? routeData = freezed,
    Object? isRouteCardVisible = null,
    Object? origin = freezed,
    Object? destination = freezed,
    Object? isPermissionDeniedForever = null,
    Object? metadata = freezed,
    Object? predictions = freezed,
    Object? simulation = freezed,
    Object? heatmap = freezed,
    Object? errorMessage = freezed,
    Object? isNavigating = null,
    Object? currentNavigationRoute = freezed,
    Object? isHeatmapVisible = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MapStatus,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Point?,
      mapboxMap: freezed == mapboxMap
          ? _value.mapboxMap
          : mapboxMap // ignore: cast_nullable_to_non_nullable
              as MapboxMap?,
      selectedMode: null == selectedMode
          ? _value.selectedMode
          : selectedMode // ignore: cast_nullable_to_non_nullable
              as String,
      selectedSeason: null == selectedSeason
          ? _value.selectedSeason
          : selectedSeason // ignore: cast_nullable_to_non_nullable
              as String,
      routeData: freezed == routeData
          ? _value.routeData
          : routeData // ignore: cast_nullable_to_non_nullable
              as RouteModel?,
      isRouteCardVisible: null == isRouteCardVisible
          ? _value.isRouteCardVisible
          : isRouteCardVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      origin: freezed == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as Point?,
      destination: freezed == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as Point?,
      isPermissionDeniedForever: null == isPermissionDeniedForever
          ? _value.isPermissionDeniedForever
          : isPermissionDeniedForever // ignore: cast_nullable_to_non_nullable
              as bool,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as MetadataModel?,
      predictions: freezed == predictions
          ? _value.predictions
          : predictions // ignore: cast_nullable_to_non_nullable
              as PredictionModel?,
      simulation: freezed == simulation
          ? _value.simulation
          : simulation // ignore: cast_nullable_to_non_nullable
              as SimulationModel?,
      heatmap: freezed == heatmap
          ? _value.heatmap
          : heatmap // ignore: cast_nullable_to_non_nullable
              as HeatmapModel?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isNavigating: null == isNavigating
          ? _value.isNavigating
          : isNavigating // ignore: cast_nullable_to_non_nullable
              as bool,
      currentNavigationRoute: freezed == currentNavigationRoute
          ? _value.currentNavigationRoute
          : currentNavigationRoute // ignore: cast_nullable_to_non_nullable
              as String?,
      isHeatmapVisible: null == isHeatmapVisible
          ? _value.isHeatmapVisible
          : isHeatmapVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RouteModelCopyWith<$Res>? get routeData {
    if (_value.routeData == null) {
      return null;
    }

    return $RouteModelCopyWith<$Res>(_value.routeData!, (value) {
      return _then(_value.copyWith(routeData: value) as $Val);
    });
  }

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetadataModelCopyWith<$Res>? get metadata {
    if (_value.metadata == null) {
      return null;
    }

    return $MetadataModelCopyWith<$Res>(_value.metadata!, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PredictionModelCopyWith<$Res>? get predictions {
    if (_value.predictions == null) {
      return null;
    }

    return $PredictionModelCopyWith<$Res>(_value.predictions!, (value) {
      return _then(_value.copyWith(predictions: value) as $Val);
    });
  }

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SimulationModelCopyWith<$Res>? get simulation {
    if (_value.simulation == null) {
      return null;
    }

    return $SimulationModelCopyWith<$Res>(_value.simulation!, (value) {
      return _then(_value.copyWith(simulation: value) as $Val);
    });
  }

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HeatmapModelCopyWith<$Res>? get heatmap {
    if (_value.heatmap == null) {
      return null;
    }

    return $HeatmapModelCopyWith<$Res>(_value.heatmap!, (value) {
      return _then(_value.copyWith(heatmap: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MapStateImplCopyWith<$Res>
    implements $MapStateCopyWith<$Res> {
  factory _$$MapStateImplCopyWith(
          _$MapStateImpl value, $Res Function(_$MapStateImpl) then) =
      __$$MapStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MapStatus status,
      Point? location,
      MapboxMap? mapboxMap,
      String selectedMode,
      String selectedSeason,
      RouteModel? routeData,
      bool isRouteCardVisible,
      Point? origin,
      Point? destination,
      bool isPermissionDeniedForever,
      MetadataModel? metadata,
      PredictionModel? predictions,
      SimulationModel? simulation,
      HeatmapModel? heatmap,
      String? errorMessage,
      bool isNavigating,
      String? currentNavigationRoute,
      bool isHeatmapVisible});

  @override
  $RouteModelCopyWith<$Res>? get routeData;
  @override
  $MetadataModelCopyWith<$Res>? get metadata;
  @override
  $PredictionModelCopyWith<$Res>? get predictions;
  @override
  $SimulationModelCopyWith<$Res>? get simulation;
  @override
  $HeatmapModelCopyWith<$Res>? get heatmap;
}

/// @nodoc
class __$$MapStateImplCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$MapStateImpl>
    implements _$$MapStateImplCopyWith<$Res> {
  __$$MapStateImplCopyWithImpl(
      _$MapStateImpl _value, $Res Function(_$MapStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? location = freezed,
    Object? mapboxMap = freezed,
    Object? selectedMode = null,
    Object? selectedSeason = null,
    Object? routeData = freezed,
    Object? isRouteCardVisible = null,
    Object? origin = freezed,
    Object? destination = freezed,
    Object? isPermissionDeniedForever = null,
    Object? metadata = freezed,
    Object? predictions = freezed,
    Object? simulation = freezed,
    Object? heatmap = freezed,
    Object? errorMessage = freezed,
    Object? isNavigating = null,
    Object? currentNavigationRoute = freezed,
    Object? isHeatmapVisible = null,
  }) {
    return _then(_$MapStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MapStatus,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Point?,
      mapboxMap: freezed == mapboxMap
          ? _value.mapboxMap
          : mapboxMap // ignore: cast_nullable_to_non_nullable
              as MapboxMap?,
      selectedMode: null == selectedMode
          ? _value.selectedMode
          : selectedMode // ignore: cast_nullable_to_non_nullable
              as String,
      selectedSeason: null == selectedSeason
          ? _value.selectedSeason
          : selectedSeason // ignore: cast_nullable_to_non_nullable
              as String,
      routeData: freezed == routeData
          ? _value.routeData
          : routeData // ignore: cast_nullable_to_non_nullable
              as RouteModel?,
      isRouteCardVisible: null == isRouteCardVisible
          ? _value.isRouteCardVisible
          : isRouteCardVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      origin: freezed == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as Point?,
      destination: freezed == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as Point?,
      isPermissionDeniedForever: null == isPermissionDeniedForever
          ? _value.isPermissionDeniedForever
          : isPermissionDeniedForever // ignore: cast_nullable_to_non_nullable
              as bool,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as MetadataModel?,
      predictions: freezed == predictions
          ? _value.predictions
          : predictions // ignore: cast_nullable_to_non_nullable
              as PredictionModel?,
      simulation: freezed == simulation
          ? _value.simulation
          : simulation // ignore: cast_nullable_to_non_nullable
              as SimulationModel?,
      heatmap: freezed == heatmap
          ? _value.heatmap
          : heatmap // ignore: cast_nullable_to_non_nullable
              as HeatmapModel?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isNavigating: null == isNavigating
          ? _value.isNavigating
          : isNavigating // ignore: cast_nullable_to_non_nullable
              as bool,
      currentNavigationRoute: freezed == currentNavigationRoute
          ? _value.currentNavigationRoute
          : currentNavigationRoute // ignore: cast_nullable_to_non_nullable
              as String?,
      isHeatmapVisible: null == isHeatmapVisible
          ? _value.isHeatmapVisible
          : isHeatmapVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MapStateImpl implements _MapState {
  const _$MapStateImpl(
      {this.status = MapStatus.initial,
      this.location,
      this.mapboxMap,
      this.selectedMode = 'walking',
      this.selectedSeason = 'winter',
      this.routeData,
      this.isRouteCardVisible = false,
      this.origin,
      this.destination,
      this.isPermissionDeniedForever = false,
      this.metadata,
      this.predictions,
      this.simulation,
      this.heatmap,
      this.errorMessage,
      this.isNavigating = false,
      this.currentNavigationRoute,
      this.isHeatmapVisible = false});

  @override
  @JsonKey()
  final MapStatus status;
  @override
  final Point? location;
  @override
  final MapboxMap? mapboxMap;
  @override
  @JsonKey()
  final String selectedMode;
  @override
  @JsonKey()
  final String selectedSeason;
  @override
  final RouteModel? routeData;
  @override
  @JsonKey()
  final bool isRouteCardVisible;
  @override
  final Point? origin;
  @override
  final Point? destination;
  @override
  @JsonKey()
  final bool isPermissionDeniedForever;
  @override
  final MetadataModel? metadata;
  @override
  final PredictionModel? predictions;
  @override
  final SimulationModel? simulation;
  @override
  final HeatmapModel? heatmap;
  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final bool isNavigating;
  @override
  final String? currentNavigationRoute;
// 'healthiest' or 'fastest'
  @override
  @JsonKey()
  final bool isHeatmapVisible;

  @override
  String toString() {
    return 'MapState(status: $status, location: $location, mapboxMap: $mapboxMap, selectedMode: $selectedMode, selectedSeason: $selectedSeason, routeData: $routeData, isRouteCardVisible: $isRouteCardVisible, origin: $origin, destination: $destination, isPermissionDeniedForever: $isPermissionDeniedForever, metadata: $metadata, predictions: $predictions, simulation: $simulation, heatmap: $heatmap, errorMessage: $errorMessage, isNavigating: $isNavigating, currentNavigationRoute: $currentNavigationRoute, isHeatmapVisible: $isHeatmapVisible)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.mapboxMap, mapboxMap) ||
                other.mapboxMap == mapboxMap) &&
            (identical(other.selectedMode, selectedMode) ||
                other.selectedMode == selectedMode) &&
            (identical(other.selectedSeason, selectedSeason) ||
                other.selectedSeason == selectedSeason) &&
            (identical(other.routeData, routeData) ||
                other.routeData == routeData) &&
            (identical(other.isRouteCardVisible, isRouteCardVisible) ||
                other.isRouteCardVisible == isRouteCardVisible) &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.isPermissionDeniedForever,
                    isPermissionDeniedForever) ||
                other.isPermissionDeniedForever == isPermissionDeniedForever) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.predictions, predictions) ||
                other.predictions == predictions) &&
            (identical(other.simulation, simulation) ||
                other.simulation == simulation) &&
            (identical(other.heatmap, heatmap) || other.heatmap == heatmap) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isNavigating, isNavigating) ||
                other.isNavigating == isNavigating) &&
            (identical(other.currentNavigationRoute, currentNavigationRoute) ||
                other.currentNavigationRoute == currentNavigationRoute) &&
            (identical(other.isHeatmapVisible, isHeatmapVisible) ||
                other.isHeatmapVisible == isHeatmapVisible));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      location,
      mapboxMap,
      selectedMode,
      selectedSeason,
      routeData,
      isRouteCardVisible,
      origin,
      destination,
      isPermissionDeniedForever,
      metadata,
      predictions,
      simulation,
      heatmap,
      errorMessage,
      isNavigating,
      currentNavigationRoute,
      isHeatmapVisible);

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MapStateImplCopyWith<_$MapStateImpl> get copyWith =>
      __$$MapStateImplCopyWithImpl<_$MapStateImpl>(this, _$identity);
}

abstract class _MapState implements MapState {
  const factory _MapState(
      {final MapStatus status,
      final Point? location,
      final MapboxMap? mapboxMap,
      final String selectedMode,
      final String selectedSeason,
      final RouteModel? routeData,
      final bool isRouteCardVisible,
      final Point? origin,
      final Point? destination,
      final bool isPermissionDeniedForever,
      final MetadataModel? metadata,
      final PredictionModel? predictions,
      final SimulationModel? simulation,
      final HeatmapModel? heatmap,
      final String? errorMessage,
      final bool isNavigating,
      final String? currentNavigationRoute,
      final bool isHeatmapVisible}) = _$MapStateImpl;

  @override
  MapStatus get status;
  @override
  Point? get location;
  @override
  MapboxMap? get mapboxMap;
  @override
  String get selectedMode;
  @override
  String get selectedSeason;
  @override
  RouteModel? get routeData;
  @override
  bool get isRouteCardVisible;
  @override
  Point? get origin;
  @override
  Point? get destination;
  @override
  bool get isPermissionDeniedForever;
  @override
  MetadataModel? get metadata;
  @override
  PredictionModel? get predictions;
  @override
  SimulationModel? get simulation;
  @override
  HeatmapModel? get heatmap;
  @override
  String? get errorMessage;
  @override
  bool get isNavigating;
  @override
  String? get currentNavigationRoute; // 'healthiest' or 'fastest'
  @override
  bool get isHeatmapVisible;

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MapStateImplCopyWith<_$MapStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
