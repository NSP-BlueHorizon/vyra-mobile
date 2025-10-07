// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simulation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SimulationModel _$SimulationModelFromJson(Map<String, dynamic> json) {
  return _SimulationModel.fromJson(json);
}

/// @nodoc
mixin _$SimulationModel {
  SimulationImpact get impact => throw _privateConstructorUsedError;
  String get explain => throw _privateConstructorUsedError;

  /// Serializes this SimulationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SimulationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SimulationModelCopyWith<SimulationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimulationModelCopyWith<$Res> {
  factory $SimulationModelCopyWith(
          SimulationModel value, $Res Function(SimulationModel) then) =
      _$SimulationModelCopyWithImpl<$Res, SimulationModel>;
  @useResult
  $Res call({SimulationImpact impact, String explain});

  $SimulationImpactCopyWith<$Res> get impact;
}

/// @nodoc
class _$SimulationModelCopyWithImpl<$Res, $Val extends SimulationModel>
    implements $SimulationModelCopyWith<$Res> {
  _$SimulationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SimulationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? impact = null,
    Object? explain = null,
  }) {
    return _then(_value.copyWith(
      impact: null == impact
          ? _value.impact
          : impact // ignore: cast_nullable_to_non_nullable
              as SimulationImpact,
      explain: null == explain
          ? _value.explain
          : explain // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of SimulationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SimulationImpactCopyWith<$Res> get impact {
    return $SimulationImpactCopyWith<$Res>(_value.impact, (value) {
      return _then(_value.copyWith(impact: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SimulationModelImplCopyWith<$Res>
    implements $SimulationModelCopyWith<$Res> {
  factory _$$SimulationModelImplCopyWith(_$SimulationModelImpl value,
          $Res Function(_$SimulationModelImpl) then) =
      __$$SimulationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SimulationImpact impact, String explain});

  @override
  $SimulationImpactCopyWith<$Res> get impact;
}

/// @nodoc
class __$$SimulationModelImplCopyWithImpl<$Res>
    extends _$SimulationModelCopyWithImpl<$Res, _$SimulationModelImpl>
    implements _$$SimulationModelImplCopyWith<$Res> {
  __$$SimulationModelImplCopyWithImpl(
      _$SimulationModelImpl _value, $Res Function(_$SimulationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SimulationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? impact = null,
    Object? explain = null,
  }) {
    return _then(_$SimulationModelImpl(
      impact: null == impact
          ? _value.impact
          : impact // ignore: cast_nullable_to_non_nullable
              as SimulationImpact,
      explain: null == explain
          ? _value.explain
          : explain // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SimulationModelImpl implements _SimulationModel {
  const _$SimulationModelImpl({required this.impact, required this.explain});

  factory _$SimulationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SimulationModelImplFromJson(json);

  @override
  final SimulationImpact impact;
  @override
  final String explain;

  @override
  String toString() {
    return 'SimulationModel(impact: $impact, explain: $explain)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimulationModelImpl &&
            (identical(other.impact, impact) || other.impact == impact) &&
            (identical(other.explain, explain) || other.explain == explain));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, impact, explain);

  /// Create a copy of SimulationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SimulationModelImplCopyWith<_$SimulationModelImpl> get copyWith =>
      __$$SimulationModelImplCopyWithImpl<_$SimulationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SimulationModelImplToJson(
      this,
    );
  }
}

abstract class _SimulationModel implements SimulationModel {
  const factory _SimulationModel(
      {required final SimulationImpact impact,
      required final String explain}) = _$SimulationModelImpl;

  factory _SimulationModel.fromJson(Map<String, dynamic> json) =
      _$SimulationModelImpl.fromJson;

  @override
  SimulationImpact get impact;
  @override
  String get explain;

  /// Create a copy of SimulationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SimulationModelImplCopyWith<_$SimulationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SimulationImpact _$SimulationImpactFromJson(Map<String, dynamic> json) {
  return _SimulationImpact.fromJson(json);
}

/// @nodoc
mixin _$SimulationImpact {
  @JsonKey(name: 'hsi_reduction_pct')
  double get hsiReductionPct => throw _privateConstructorUsedError;
  @JsonKey(name: 'area_affected_km2')
  double get areaAffectedKm2 => throw _privateConstructorUsedError;
  @JsonKey(name: 'thermal_improvement')
  double get thermalImprovement => throw _privateConstructorUsedError;
  @JsonKey(name: 'air_improvement')
  double get airImprovement => throw _privateConstructorUsedError;
  @JsonKey(name: 'cells_count')
  int get cellsCount => throw _privateConstructorUsedError;

  /// Serializes this SimulationImpact to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SimulationImpact
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SimulationImpactCopyWith<SimulationImpact> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimulationImpactCopyWith<$Res> {
  factory $SimulationImpactCopyWith(
          SimulationImpact value, $Res Function(SimulationImpact) then) =
      _$SimulationImpactCopyWithImpl<$Res, SimulationImpact>;
  @useResult
  $Res call(
      {@JsonKey(name: 'hsi_reduction_pct') double hsiReductionPct,
      @JsonKey(name: 'area_affected_km2') double areaAffectedKm2,
      @JsonKey(name: 'thermal_improvement') double thermalImprovement,
      @JsonKey(name: 'air_improvement') double airImprovement,
      @JsonKey(name: 'cells_count') int cellsCount});
}

/// @nodoc
class _$SimulationImpactCopyWithImpl<$Res, $Val extends SimulationImpact>
    implements $SimulationImpactCopyWith<$Res> {
  _$SimulationImpactCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SimulationImpact
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hsiReductionPct = null,
    Object? areaAffectedKm2 = null,
    Object? thermalImprovement = null,
    Object? airImprovement = null,
    Object? cellsCount = null,
  }) {
    return _then(_value.copyWith(
      hsiReductionPct: null == hsiReductionPct
          ? _value.hsiReductionPct
          : hsiReductionPct // ignore: cast_nullable_to_non_nullable
              as double,
      areaAffectedKm2: null == areaAffectedKm2
          ? _value.areaAffectedKm2
          : areaAffectedKm2 // ignore: cast_nullable_to_non_nullable
              as double,
      thermalImprovement: null == thermalImprovement
          ? _value.thermalImprovement
          : thermalImprovement // ignore: cast_nullable_to_non_nullable
              as double,
      airImprovement: null == airImprovement
          ? _value.airImprovement
          : airImprovement // ignore: cast_nullable_to_non_nullable
              as double,
      cellsCount: null == cellsCount
          ? _value.cellsCount
          : cellsCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SimulationImpactImplCopyWith<$Res>
    implements $SimulationImpactCopyWith<$Res> {
  factory _$$SimulationImpactImplCopyWith(_$SimulationImpactImpl value,
          $Res Function(_$SimulationImpactImpl) then) =
      __$$SimulationImpactImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'hsi_reduction_pct') double hsiReductionPct,
      @JsonKey(name: 'area_affected_km2') double areaAffectedKm2,
      @JsonKey(name: 'thermal_improvement') double thermalImprovement,
      @JsonKey(name: 'air_improvement') double airImprovement,
      @JsonKey(name: 'cells_count') int cellsCount});
}

/// @nodoc
class __$$SimulationImpactImplCopyWithImpl<$Res>
    extends _$SimulationImpactCopyWithImpl<$Res, _$SimulationImpactImpl>
    implements _$$SimulationImpactImplCopyWith<$Res> {
  __$$SimulationImpactImplCopyWithImpl(_$SimulationImpactImpl _value,
      $Res Function(_$SimulationImpactImpl) _then)
      : super(_value, _then);

  /// Create a copy of SimulationImpact
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hsiReductionPct = null,
    Object? areaAffectedKm2 = null,
    Object? thermalImprovement = null,
    Object? airImprovement = null,
    Object? cellsCount = null,
  }) {
    return _then(_$SimulationImpactImpl(
      hsiReductionPct: null == hsiReductionPct
          ? _value.hsiReductionPct
          : hsiReductionPct // ignore: cast_nullable_to_non_nullable
              as double,
      areaAffectedKm2: null == areaAffectedKm2
          ? _value.areaAffectedKm2
          : areaAffectedKm2 // ignore: cast_nullable_to_non_nullable
              as double,
      thermalImprovement: null == thermalImprovement
          ? _value.thermalImprovement
          : thermalImprovement // ignore: cast_nullable_to_non_nullable
              as double,
      airImprovement: null == airImprovement
          ? _value.airImprovement
          : airImprovement // ignore: cast_nullable_to_non_nullable
              as double,
      cellsCount: null == cellsCount
          ? _value.cellsCount
          : cellsCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SimulationImpactImpl implements _SimulationImpact {
  const _$SimulationImpactImpl(
      {@JsonKey(name: 'hsi_reduction_pct') required this.hsiReductionPct,
      @JsonKey(name: 'area_affected_km2') required this.areaAffectedKm2,
      @JsonKey(name: 'thermal_improvement') required this.thermalImprovement,
      @JsonKey(name: 'air_improvement') required this.airImprovement,
      @JsonKey(name: 'cells_count') required this.cellsCount});

  factory _$SimulationImpactImpl.fromJson(Map<String, dynamic> json) =>
      _$$SimulationImpactImplFromJson(json);

  @override
  @JsonKey(name: 'hsi_reduction_pct')
  final double hsiReductionPct;
  @override
  @JsonKey(name: 'area_affected_km2')
  final double areaAffectedKm2;
  @override
  @JsonKey(name: 'thermal_improvement')
  final double thermalImprovement;
  @override
  @JsonKey(name: 'air_improvement')
  final double airImprovement;
  @override
  @JsonKey(name: 'cells_count')
  final int cellsCount;

  @override
  String toString() {
    return 'SimulationImpact(hsiReductionPct: $hsiReductionPct, areaAffectedKm2: $areaAffectedKm2, thermalImprovement: $thermalImprovement, airImprovement: $airImprovement, cellsCount: $cellsCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimulationImpactImpl &&
            (identical(other.hsiReductionPct, hsiReductionPct) ||
                other.hsiReductionPct == hsiReductionPct) &&
            (identical(other.areaAffectedKm2, areaAffectedKm2) ||
                other.areaAffectedKm2 == areaAffectedKm2) &&
            (identical(other.thermalImprovement, thermalImprovement) ||
                other.thermalImprovement == thermalImprovement) &&
            (identical(other.airImprovement, airImprovement) ||
                other.airImprovement == airImprovement) &&
            (identical(other.cellsCount, cellsCount) ||
                other.cellsCount == cellsCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, hsiReductionPct, areaAffectedKm2,
      thermalImprovement, airImprovement, cellsCount);

  /// Create a copy of SimulationImpact
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SimulationImpactImplCopyWith<_$SimulationImpactImpl> get copyWith =>
      __$$SimulationImpactImplCopyWithImpl<_$SimulationImpactImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SimulationImpactImplToJson(
      this,
    );
  }
}

abstract class _SimulationImpact implements SimulationImpact {
  const factory _SimulationImpact(
      {@JsonKey(name: 'hsi_reduction_pct')
      required final double hsiReductionPct,
      @JsonKey(name: 'area_affected_km2') required final double areaAffectedKm2,
      @JsonKey(name: 'thermal_improvement')
      required final double thermalImprovement,
      @JsonKey(name: 'air_improvement') required final double airImprovement,
      @JsonKey(name: 'cells_count')
      required final int cellsCount}) = _$SimulationImpactImpl;

  factory _SimulationImpact.fromJson(Map<String, dynamic> json) =
      _$SimulationImpactImpl.fromJson;

  @override
  @JsonKey(name: 'hsi_reduction_pct')
  double get hsiReductionPct;
  @override
  @JsonKey(name: 'area_affected_km2')
  double get areaAffectedKm2;
  @override
  @JsonKey(name: 'thermal_improvement')
  double get thermalImprovement;
  @override
  @JsonKey(name: 'air_improvement')
  double get airImprovement;
  @override
  @JsonKey(name: 'cells_count')
  int get cellsCount;

  /// Create a copy of SimulationImpact
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SimulationImpactImplCopyWith<_$SimulationImpactImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
