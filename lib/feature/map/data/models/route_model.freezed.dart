// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RouteModel _$RouteModelFromJson(Map<String, dynamic> json) {
  return _RouteModel.fromJson(json);
}

/// @nodoc
mixin _$RouteModel {
  RouteDetail get fastest => throw _privateConstructorUsedError;
  RouteDetail get healthiest => throw _privateConstructorUsedError;
  RouteBreakdown get breakdown => throw _privateConstructorUsedError;
  String get explain => throw _privateConstructorUsedError;
  @JsonKey(name: 'delta_exposure_pct')
  double? get deltaExposurePct => throw _privateConstructorUsedError;
  @JsonKey(name: 'alternatives_count')
  int? get alternativesCount => throw _privateConstructorUsedError;

  /// Serializes this RouteModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RouteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RouteModelCopyWith<RouteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteModelCopyWith<$Res> {
  factory $RouteModelCopyWith(
          RouteModel value, $Res Function(RouteModel) then) =
      _$RouteModelCopyWithImpl<$Res, RouteModel>;
  @useResult
  $Res call(
      {RouteDetail fastest,
      RouteDetail healthiest,
      RouteBreakdown breakdown,
      String explain,
      @JsonKey(name: 'delta_exposure_pct') double? deltaExposurePct,
      @JsonKey(name: 'alternatives_count') int? alternativesCount});

  $RouteDetailCopyWith<$Res> get fastest;
  $RouteDetailCopyWith<$Res> get healthiest;
  $RouteBreakdownCopyWith<$Res> get breakdown;
}

/// @nodoc
class _$RouteModelCopyWithImpl<$Res, $Val extends RouteModel>
    implements $RouteModelCopyWith<$Res> {
  _$RouteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RouteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fastest = null,
    Object? healthiest = null,
    Object? breakdown = null,
    Object? explain = null,
    Object? deltaExposurePct = freezed,
    Object? alternativesCount = freezed,
  }) {
    return _then(_value.copyWith(
      fastest: null == fastest
          ? _value.fastest
          : fastest // ignore: cast_nullable_to_non_nullable
              as RouteDetail,
      healthiest: null == healthiest
          ? _value.healthiest
          : healthiest // ignore: cast_nullable_to_non_nullable
              as RouteDetail,
      breakdown: null == breakdown
          ? _value.breakdown
          : breakdown // ignore: cast_nullable_to_non_nullable
              as RouteBreakdown,
      explain: null == explain
          ? _value.explain
          : explain // ignore: cast_nullable_to_non_nullable
              as String,
      deltaExposurePct: freezed == deltaExposurePct
          ? _value.deltaExposurePct
          : deltaExposurePct // ignore: cast_nullable_to_non_nullable
              as double?,
      alternativesCount: freezed == alternativesCount
          ? _value.alternativesCount
          : alternativesCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of RouteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RouteDetailCopyWith<$Res> get fastest {
    return $RouteDetailCopyWith<$Res>(_value.fastest, (value) {
      return _then(_value.copyWith(fastest: value) as $Val);
    });
  }

  /// Create a copy of RouteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RouteDetailCopyWith<$Res> get healthiest {
    return $RouteDetailCopyWith<$Res>(_value.healthiest, (value) {
      return _then(_value.copyWith(healthiest: value) as $Val);
    });
  }

  /// Create a copy of RouteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RouteBreakdownCopyWith<$Res> get breakdown {
    return $RouteBreakdownCopyWith<$Res>(_value.breakdown, (value) {
      return _then(_value.copyWith(breakdown: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RouteModelImplCopyWith<$Res>
    implements $RouteModelCopyWith<$Res> {
  factory _$$RouteModelImplCopyWith(
          _$RouteModelImpl value, $Res Function(_$RouteModelImpl) then) =
      __$$RouteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RouteDetail fastest,
      RouteDetail healthiest,
      RouteBreakdown breakdown,
      String explain,
      @JsonKey(name: 'delta_exposure_pct') double? deltaExposurePct,
      @JsonKey(name: 'alternatives_count') int? alternativesCount});

  @override
  $RouteDetailCopyWith<$Res> get fastest;
  @override
  $RouteDetailCopyWith<$Res> get healthiest;
  @override
  $RouteBreakdownCopyWith<$Res> get breakdown;
}

/// @nodoc
class __$$RouteModelImplCopyWithImpl<$Res>
    extends _$RouteModelCopyWithImpl<$Res, _$RouteModelImpl>
    implements _$$RouteModelImplCopyWith<$Res> {
  __$$RouteModelImplCopyWithImpl(
      _$RouteModelImpl _value, $Res Function(_$RouteModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RouteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fastest = null,
    Object? healthiest = null,
    Object? breakdown = null,
    Object? explain = null,
    Object? deltaExposurePct = freezed,
    Object? alternativesCount = freezed,
  }) {
    return _then(_$RouteModelImpl(
      fastest: null == fastest
          ? _value.fastest
          : fastest // ignore: cast_nullable_to_non_nullable
              as RouteDetail,
      healthiest: null == healthiest
          ? _value.healthiest
          : healthiest // ignore: cast_nullable_to_non_nullable
              as RouteDetail,
      breakdown: null == breakdown
          ? _value.breakdown
          : breakdown // ignore: cast_nullable_to_non_nullable
              as RouteBreakdown,
      explain: null == explain
          ? _value.explain
          : explain // ignore: cast_nullable_to_non_nullable
              as String,
      deltaExposurePct: freezed == deltaExposurePct
          ? _value.deltaExposurePct
          : deltaExposurePct // ignore: cast_nullable_to_non_nullable
              as double?,
      alternativesCount: freezed == alternativesCount
          ? _value.alternativesCount
          : alternativesCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RouteModelImpl implements _RouteModel {
  const _$RouteModelImpl(
      {required this.fastest,
      required this.healthiest,
      required this.breakdown,
      required this.explain,
      @JsonKey(name: 'delta_exposure_pct') required this.deltaExposurePct,
      @JsonKey(name: 'alternatives_count') required this.alternativesCount});

  factory _$RouteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RouteModelImplFromJson(json);

  @override
  final RouteDetail fastest;
  @override
  final RouteDetail healthiest;
  @override
  final RouteBreakdown breakdown;
  @override
  final String explain;
  @override
  @JsonKey(name: 'delta_exposure_pct')
  final double? deltaExposurePct;
  @override
  @JsonKey(name: 'alternatives_count')
  final int? alternativesCount;

  @override
  String toString() {
    return 'RouteModel(fastest: $fastest, healthiest: $healthiest, breakdown: $breakdown, explain: $explain, deltaExposurePct: $deltaExposurePct, alternativesCount: $alternativesCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteModelImpl &&
            (identical(other.fastest, fastest) || other.fastest == fastest) &&
            (identical(other.healthiest, healthiest) ||
                other.healthiest == healthiest) &&
            (identical(other.breakdown, breakdown) ||
                other.breakdown == breakdown) &&
            (identical(other.explain, explain) || other.explain == explain) &&
            (identical(other.deltaExposurePct, deltaExposurePct) ||
                other.deltaExposurePct == deltaExposurePct) &&
            (identical(other.alternativesCount, alternativesCount) ||
                other.alternativesCount == alternativesCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fastest, healthiest, breakdown,
      explain, deltaExposurePct, alternativesCount);

  /// Create a copy of RouteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RouteModelImplCopyWith<_$RouteModelImpl> get copyWith =>
      __$$RouteModelImplCopyWithImpl<_$RouteModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RouteModelImplToJson(
      this,
    );
  }
}

abstract class _RouteModel implements RouteModel {
  const factory _RouteModel(
      {required final RouteDetail fastest,
      required final RouteDetail healthiest,
      required final RouteBreakdown breakdown,
      required final String explain,
      @JsonKey(name: 'delta_exposure_pct')
      required final double? deltaExposurePct,
      @JsonKey(name: 'alternatives_count')
      required final int? alternativesCount}) = _$RouteModelImpl;

  factory _RouteModel.fromJson(Map<String, dynamic> json) =
      _$RouteModelImpl.fromJson;

  @override
  RouteDetail get fastest;
  @override
  RouteDetail get healthiest;
  @override
  RouteBreakdown get breakdown;
  @override
  String get explain;
  @override
  @JsonKey(name: 'delta_exposure_pct')
  double? get deltaExposurePct;
  @override
  @JsonKey(name: 'alternatives_count')
  int? get alternativesCount;

  /// Create a copy of RouteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RouteModelImplCopyWith<_$RouteModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RouteDetail _$RouteDetailFromJson(Map<String, dynamic> json) {
  return _RouteDetail.fromJson(json);
}

/// @nodoc
mixin _$RouteDetail {
  @JsonKey(name: 'eta_min')
  double? get etaMin => throw _privateConstructorUsedError;
  @JsonKey(name: 'distance_km')
  double? get distanceKm => throw _privateConstructorUsedError;
  @JsonKey(name: 'exposure_avg')
  double? get exposureAvg => throw _privateConstructorUsedError;
  @JsonKey(name: 'hsi_avg')
  double? get hsiAvg => throw _privateConstructorUsedError;
  GeoJsonData get geojson => throw _privateConstructorUsedError;

  /// Serializes this RouteDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RouteDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RouteDetailCopyWith<RouteDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteDetailCopyWith<$Res> {
  factory $RouteDetailCopyWith(
          RouteDetail value, $Res Function(RouteDetail) then) =
      _$RouteDetailCopyWithImpl<$Res, RouteDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: 'eta_min') double? etaMin,
      @JsonKey(name: 'distance_km') double? distanceKm,
      @JsonKey(name: 'exposure_avg') double? exposureAvg,
      @JsonKey(name: 'hsi_avg') double? hsiAvg,
      GeoJsonData geojson});

  $GeoJsonDataCopyWith<$Res> get geojson;
}

/// @nodoc
class _$RouteDetailCopyWithImpl<$Res, $Val extends RouteDetail>
    implements $RouteDetailCopyWith<$Res> {
  _$RouteDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RouteDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? etaMin = freezed,
    Object? distanceKm = freezed,
    Object? exposureAvg = freezed,
    Object? hsiAvg = freezed,
    Object? geojson = null,
  }) {
    return _then(_value.copyWith(
      etaMin: freezed == etaMin
          ? _value.etaMin
          : etaMin // ignore: cast_nullable_to_non_nullable
              as double?,
      distanceKm: freezed == distanceKm
          ? _value.distanceKm
          : distanceKm // ignore: cast_nullable_to_non_nullable
              as double?,
      exposureAvg: freezed == exposureAvg
          ? _value.exposureAvg
          : exposureAvg // ignore: cast_nullable_to_non_nullable
              as double?,
      hsiAvg: freezed == hsiAvg
          ? _value.hsiAvg
          : hsiAvg // ignore: cast_nullable_to_non_nullable
              as double?,
      geojson: null == geojson
          ? _value.geojson
          : geojson // ignore: cast_nullable_to_non_nullable
              as GeoJsonData,
    ) as $Val);
  }

  /// Create a copy of RouteDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GeoJsonDataCopyWith<$Res> get geojson {
    return $GeoJsonDataCopyWith<$Res>(_value.geojson, (value) {
      return _then(_value.copyWith(geojson: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RouteDetailImplCopyWith<$Res>
    implements $RouteDetailCopyWith<$Res> {
  factory _$$RouteDetailImplCopyWith(
          _$RouteDetailImpl value, $Res Function(_$RouteDetailImpl) then) =
      __$$RouteDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'eta_min') double? etaMin,
      @JsonKey(name: 'distance_km') double? distanceKm,
      @JsonKey(name: 'exposure_avg') double? exposureAvg,
      @JsonKey(name: 'hsi_avg') double? hsiAvg,
      GeoJsonData geojson});

  @override
  $GeoJsonDataCopyWith<$Res> get geojson;
}

/// @nodoc
class __$$RouteDetailImplCopyWithImpl<$Res>
    extends _$RouteDetailCopyWithImpl<$Res, _$RouteDetailImpl>
    implements _$$RouteDetailImplCopyWith<$Res> {
  __$$RouteDetailImplCopyWithImpl(
      _$RouteDetailImpl _value, $Res Function(_$RouteDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of RouteDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? etaMin = freezed,
    Object? distanceKm = freezed,
    Object? exposureAvg = freezed,
    Object? hsiAvg = freezed,
    Object? geojson = null,
  }) {
    return _then(_$RouteDetailImpl(
      etaMin: freezed == etaMin
          ? _value.etaMin
          : etaMin // ignore: cast_nullable_to_non_nullable
              as double?,
      distanceKm: freezed == distanceKm
          ? _value.distanceKm
          : distanceKm // ignore: cast_nullable_to_non_nullable
              as double?,
      exposureAvg: freezed == exposureAvg
          ? _value.exposureAvg
          : exposureAvg // ignore: cast_nullable_to_non_nullable
              as double?,
      hsiAvg: freezed == hsiAvg
          ? _value.hsiAvg
          : hsiAvg // ignore: cast_nullable_to_non_nullable
              as double?,
      geojson: null == geojson
          ? _value.geojson
          : geojson // ignore: cast_nullable_to_non_nullable
              as GeoJsonData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RouteDetailImpl implements _RouteDetail {
  const _$RouteDetailImpl(
      {@JsonKey(name: 'eta_min') required this.etaMin,
      @JsonKey(name: 'distance_km') required this.distanceKm,
      @JsonKey(name: 'exposure_avg') required this.exposureAvg,
      @JsonKey(name: 'hsi_avg') required this.hsiAvg,
      required this.geojson});

  factory _$RouteDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$RouteDetailImplFromJson(json);

  @override
  @JsonKey(name: 'eta_min')
  final double? etaMin;
  @override
  @JsonKey(name: 'distance_km')
  final double? distanceKm;
  @override
  @JsonKey(name: 'exposure_avg')
  final double? exposureAvg;
  @override
  @JsonKey(name: 'hsi_avg')
  final double? hsiAvg;
  @override
  final GeoJsonData geojson;

  @override
  String toString() {
    return 'RouteDetail(etaMin: $etaMin, distanceKm: $distanceKm, exposureAvg: $exposureAvg, hsiAvg: $hsiAvg, geojson: $geojson)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteDetailImpl &&
            (identical(other.etaMin, etaMin) || other.etaMin == etaMin) &&
            (identical(other.distanceKm, distanceKm) ||
                other.distanceKm == distanceKm) &&
            (identical(other.exposureAvg, exposureAvg) ||
                other.exposureAvg == exposureAvg) &&
            (identical(other.hsiAvg, hsiAvg) || other.hsiAvg == hsiAvg) &&
            (identical(other.geojson, geojson) || other.geojson == geojson));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, etaMin, distanceKm, exposureAvg, hsiAvg, geojson);

  /// Create a copy of RouteDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RouteDetailImplCopyWith<_$RouteDetailImpl> get copyWith =>
      __$$RouteDetailImplCopyWithImpl<_$RouteDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RouteDetailImplToJson(
      this,
    );
  }
}

abstract class _RouteDetail implements RouteDetail {
  const factory _RouteDetail(
      {@JsonKey(name: 'eta_min') required final double? etaMin,
      @JsonKey(name: 'distance_km') required final double? distanceKm,
      @JsonKey(name: 'exposure_avg') required final double? exposureAvg,
      @JsonKey(name: 'hsi_avg') required final double? hsiAvg,
      required final GeoJsonData geojson}) = _$RouteDetailImpl;

  factory _RouteDetail.fromJson(Map<String, dynamic> json) =
      _$RouteDetailImpl.fromJson;

  @override
  @JsonKey(name: 'eta_min')
  double? get etaMin;
  @override
  @JsonKey(name: 'distance_km')
  double? get distanceKm;
  @override
  @JsonKey(name: 'exposure_avg')
  double? get exposureAvg;
  @override
  @JsonKey(name: 'hsi_avg')
  double? get hsiAvg;
  @override
  GeoJsonData get geojson;

  /// Create a copy of RouteDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RouteDetailImplCopyWith<_$RouteDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GeoJsonData _$GeoJsonDataFromJson(Map<String, dynamic> json) {
  return _GeoJsonData.fromJson(json);
}

/// @nodoc
mixin _$GeoJsonData {
  String get type => throw _privateConstructorUsedError;
  List<GeoJsonFeature> get features => throw _privateConstructorUsedError;

  /// Serializes this GeoJsonData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GeoJsonData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GeoJsonDataCopyWith<GeoJsonData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoJsonDataCopyWith<$Res> {
  factory $GeoJsonDataCopyWith(
          GeoJsonData value, $Res Function(GeoJsonData) then) =
      _$GeoJsonDataCopyWithImpl<$Res, GeoJsonData>;
  @useResult
  $Res call({String type, List<GeoJsonFeature> features});
}

/// @nodoc
class _$GeoJsonDataCopyWithImpl<$Res, $Val extends GeoJsonData>
    implements $GeoJsonDataCopyWith<$Res> {
  _$GeoJsonDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GeoJsonData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? features = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      features: null == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as List<GeoJsonFeature>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeoJsonDataImplCopyWith<$Res>
    implements $GeoJsonDataCopyWith<$Res> {
  factory _$$GeoJsonDataImplCopyWith(
          _$GeoJsonDataImpl value, $Res Function(_$GeoJsonDataImpl) then) =
      __$$GeoJsonDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, List<GeoJsonFeature> features});
}

/// @nodoc
class __$$GeoJsonDataImplCopyWithImpl<$Res>
    extends _$GeoJsonDataCopyWithImpl<$Res, _$GeoJsonDataImpl>
    implements _$$GeoJsonDataImplCopyWith<$Res> {
  __$$GeoJsonDataImplCopyWithImpl(
      _$GeoJsonDataImpl _value, $Res Function(_$GeoJsonDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of GeoJsonData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? features = null,
  }) {
    return _then(_$GeoJsonDataImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      features: null == features
          ? _value._features
          : features // ignore: cast_nullable_to_non_nullable
              as List<GeoJsonFeature>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeoJsonDataImpl implements _GeoJsonData {
  const _$GeoJsonDataImpl(
      {required this.type, required final List<GeoJsonFeature> features})
      : _features = features;

  factory _$GeoJsonDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeoJsonDataImplFromJson(json);

  @override
  final String type;
  final List<GeoJsonFeature> _features;
  @override
  List<GeoJsonFeature> get features {
    if (_features is EqualUnmodifiableListView) return _features;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_features);
  }

  @override
  String toString() {
    return 'GeoJsonData(type: $type, features: $features)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeoJsonDataImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._features, _features));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(_features));

  /// Create a copy of GeoJsonData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GeoJsonDataImplCopyWith<_$GeoJsonDataImpl> get copyWith =>
      __$$GeoJsonDataImplCopyWithImpl<_$GeoJsonDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeoJsonDataImplToJson(
      this,
    );
  }
}

abstract class _GeoJsonData implements GeoJsonData {
  const factory _GeoJsonData(
      {required final String type,
      required final List<GeoJsonFeature> features}) = _$GeoJsonDataImpl;

  factory _GeoJsonData.fromJson(Map<String, dynamic> json) =
      _$GeoJsonDataImpl.fromJson;

  @override
  String get type;
  @override
  List<GeoJsonFeature> get features;

  /// Create a copy of GeoJsonData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GeoJsonDataImplCopyWith<_$GeoJsonDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GeoJsonFeature _$GeoJsonFeatureFromJson(Map<String, dynamic> json) {
  return _GeoJsonFeature.fromJson(json);
}

/// @nodoc
mixin _$GeoJsonFeature {
  String get type => throw _privateConstructorUsedError;
  GeoJsonGeometry get geometry => throw _privateConstructorUsedError;
  Map<String, dynamic> get properties => throw _privateConstructorUsedError;

  /// Serializes this GeoJsonFeature to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GeoJsonFeature
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GeoJsonFeatureCopyWith<GeoJsonFeature> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoJsonFeatureCopyWith<$Res> {
  factory $GeoJsonFeatureCopyWith(
          GeoJsonFeature value, $Res Function(GeoJsonFeature) then) =
      _$GeoJsonFeatureCopyWithImpl<$Res, GeoJsonFeature>;
  @useResult
  $Res call(
      {String type, GeoJsonGeometry geometry, Map<String, dynamic> properties});

  $GeoJsonGeometryCopyWith<$Res> get geometry;
}

/// @nodoc
class _$GeoJsonFeatureCopyWithImpl<$Res, $Val extends GeoJsonFeature>
    implements $GeoJsonFeatureCopyWith<$Res> {
  _$GeoJsonFeatureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GeoJsonFeature
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? geometry = null,
    Object? properties = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      geometry: null == geometry
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as GeoJsonGeometry,
      properties: null == properties
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }

  /// Create a copy of GeoJsonFeature
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GeoJsonGeometryCopyWith<$Res> get geometry {
    return $GeoJsonGeometryCopyWith<$Res>(_value.geometry, (value) {
      return _then(_value.copyWith(geometry: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GeoJsonFeatureImplCopyWith<$Res>
    implements $GeoJsonFeatureCopyWith<$Res> {
  factory _$$GeoJsonFeatureImplCopyWith(_$GeoJsonFeatureImpl value,
          $Res Function(_$GeoJsonFeatureImpl) then) =
      __$$GeoJsonFeatureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type, GeoJsonGeometry geometry, Map<String, dynamic> properties});

  @override
  $GeoJsonGeometryCopyWith<$Res> get geometry;
}

/// @nodoc
class __$$GeoJsonFeatureImplCopyWithImpl<$Res>
    extends _$GeoJsonFeatureCopyWithImpl<$Res, _$GeoJsonFeatureImpl>
    implements _$$GeoJsonFeatureImplCopyWith<$Res> {
  __$$GeoJsonFeatureImplCopyWithImpl(
      _$GeoJsonFeatureImpl _value, $Res Function(_$GeoJsonFeatureImpl) _then)
      : super(_value, _then);

  /// Create a copy of GeoJsonFeature
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? geometry = null,
    Object? properties = null,
  }) {
    return _then(_$GeoJsonFeatureImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      geometry: null == geometry
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as GeoJsonGeometry,
      properties: null == properties
          ? _value._properties
          : properties // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeoJsonFeatureImpl implements _GeoJsonFeature {
  const _$GeoJsonFeatureImpl(
      {required this.type,
      required this.geometry,
      required final Map<String, dynamic> properties})
      : _properties = properties;

  factory _$GeoJsonFeatureImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeoJsonFeatureImplFromJson(json);

  @override
  final String type;
  @override
  final GeoJsonGeometry geometry;
  final Map<String, dynamic> _properties;
  @override
  Map<String, dynamic> get properties {
    if (_properties is EqualUnmodifiableMapView) return _properties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_properties);
  }

  @override
  String toString() {
    return 'GeoJsonFeature(type: $type, geometry: $geometry, properties: $properties)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeoJsonFeatureImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.geometry, geometry) ||
                other.geometry == geometry) &&
            const DeepCollectionEquality()
                .equals(other._properties, _properties));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, geometry,
      const DeepCollectionEquality().hash(_properties));

  /// Create a copy of GeoJsonFeature
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GeoJsonFeatureImplCopyWith<_$GeoJsonFeatureImpl> get copyWith =>
      __$$GeoJsonFeatureImplCopyWithImpl<_$GeoJsonFeatureImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeoJsonFeatureImplToJson(
      this,
    );
  }
}

abstract class _GeoJsonFeature implements GeoJsonFeature {
  const factory _GeoJsonFeature(
      {required final String type,
      required final GeoJsonGeometry geometry,
      required final Map<String, dynamic> properties}) = _$GeoJsonFeatureImpl;

  factory _GeoJsonFeature.fromJson(Map<String, dynamic> json) =
      _$GeoJsonFeatureImpl.fromJson;

  @override
  String get type;
  @override
  GeoJsonGeometry get geometry;
  @override
  Map<String, dynamic> get properties;

  /// Create a copy of GeoJsonFeature
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GeoJsonFeatureImplCopyWith<_$GeoJsonFeatureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GeoJsonGeometry _$GeoJsonGeometryFromJson(Map<String, dynamic> json) {
  return _GeoJsonGeometry.fromJson(json);
}

/// @nodoc
mixin _$GeoJsonGeometry {
  String get type => throw _privateConstructorUsedError;
  List<List<double>> get coordinates => throw _privateConstructorUsedError;

  /// Serializes this GeoJsonGeometry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GeoJsonGeometry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GeoJsonGeometryCopyWith<GeoJsonGeometry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoJsonGeometryCopyWith<$Res> {
  factory $GeoJsonGeometryCopyWith(
          GeoJsonGeometry value, $Res Function(GeoJsonGeometry) then) =
      _$GeoJsonGeometryCopyWithImpl<$Res, GeoJsonGeometry>;
  @useResult
  $Res call({String type, List<List<double>> coordinates});
}

/// @nodoc
class _$GeoJsonGeometryCopyWithImpl<$Res, $Val extends GeoJsonGeometry>
    implements $GeoJsonGeometryCopyWith<$Res> {
  _$GeoJsonGeometryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GeoJsonGeometry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? coordinates = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<List<double>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeoJsonGeometryImplCopyWith<$Res>
    implements $GeoJsonGeometryCopyWith<$Res> {
  factory _$$GeoJsonGeometryImplCopyWith(_$GeoJsonGeometryImpl value,
          $Res Function(_$GeoJsonGeometryImpl) then) =
      __$$GeoJsonGeometryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, List<List<double>> coordinates});
}

/// @nodoc
class __$$GeoJsonGeometryImplCopyWithImpl<$Res>
    extends _$GeoJsonGeometryCopyWithImpl<$Res, _$GeoJsonGeometryImpl>
    implements _$$GeoJsonGeometryImplCopyWith<$Res> {
  __$$GeoJsonGeometryImplCopyWithImpl(
      _$GeoJsonGeometryImpl _value, $Res Function(_$GeoJsonGeometryImpl) _then)
      : super(_value, _then);

  /// Create a copy of GeoJsonGeometry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? coordinates = null,
  }) {
    return _then(_$GeoJsonGeometryImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _value._coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<List<double>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeoJsonGeometryImpl implements _GeoJsonGeometry {
  const _$GeoJsonGeometryImpl(
      {required this.type, required final List<List<double>> coordinates})
      : _coordinates = coordinates;

  factory _$GeoJsonGeometryImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeoJsonGeometryImplFromJson(json);

  @override
  final String type;
  final List<List<double>> _coordinates;
  @override
  List<List<double>> get coordinates {
    if (_coordinates is EqualUnmodifiableListView) return _coordinates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coordinates);
  }

  @override
  String toString() {
    return 'GeoJsonGeometry(type: $type, coordinates: $coordinates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeoJsonGeometryImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._coordinates, _coordinates));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(_coordinates));

  /// Create a copy of GeoJsonGeometry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GeoJsonGeometryImplCopyWith<_$GeoJsonGeometryImpl> get copyWith =>
      __$$GeoJsonGeometryImplCopyWithImpl<_$GeoJsonGeometryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeoJsonGeometryImplToJson(
      this,
    );
  }
}

abstract class _GeoJsonGeometry implements GeoJsonGeometry {
  const factory _GeoJsonGeometry(
      {required final String type,
      required final List<List<double>> coordinates}) = _$GeoJsonGeometryImpl;

  factory _GeoJsonGeometry.fromJson(Map<String, dynamic> json) =
      _$GeoJsonGeometryImpl.fromJson;

  @override
  String get type;
  @override
  List<List<double>> get coordinates;

  /// Create a copy of GeoJsonGeometry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GeoJsonGeometryImplCopyWith<_$GeoJsonGeometryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RouteBreakdown _$RouteBreakdownFromJson(Map<String, dynamic> json) {
  return _RouteBreakdown.fromJson(json);
}

/// @nodoc
mixin _$RouteBreakdown {
  double get thermal => throw _privateConstructorUsedError;
  double get air => throw _privateConstructorUsedError;
  double get rain => throw _privateConstructorUsedError;

  /// Serializes this RouteBreakdown to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RouteBreakdown
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RouteBreakdownCopyWith<RouteBreakdown> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteBreakdownCopyWith<$Res> {
  factory $RouteBreakdownCopyWith(
          RouteBreakdown value, $Res Function(RouteBreakdown) then) =
      _$RouteBreakdownCopyWithImpl<$Res, RouteBreakdown>;
  @useResult
  $Res call({double thermal, double air, double rain});
}

/// @nodoc
class _$RouteBreakdownCopyWithImpl<$Res, $Val extends RouteBreakdown>
    implements $RouteBreakdownCopyWith<$Res> {
  _$RouteBreakdownCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RouteBreakdown
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thermal = null,
    Object? air = null,
    Object? rain = null,
  }) {
    return _then(_value.copyWith(
      thermal: null == thermal
          ? _value.thermal
          : thermal // ignore: cast_nullable_to_non_nullable
              as double,
      air: null == air
          ? _value.air
          : air // ignore: cast_nullable_to_non_nullable
              as double,
      rain: null == rain
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RouteBreakdownImplCopyWith<$Res>
    implements $RouteBreakdownCopyWith<$Res> {
  factory _$$RouteBreakdownImplCopyWith(_$RouteBreakdownImpl value,
          $Res Function(_$RouteBreakdownImpl) then) =
      __$$RouteBreakdownImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double thermal, double air, double rain});
}

/// @nodoc
class __$$RouteBreakdownImplCopyWithImpl<$Res>
    extends _$RouteBreakdownCopyWithImpl<$Res, _$RouteBreakdownImpl>
    implements _$$RouteBreakdownImplCopyWith<$Res> {
  __$$RouteBreakdownImplCopyWithImpl(
      _$RouteBreakdownImpl _value, $Res Function(_$RouteBreakdownImpl) _then)
      : super(_value, _then);

  /// Create a copy of RouteBreakdown
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? thermal = null,
    Object? air = null,
    Object? rain = null,
  }) {
    return _then(_$RouteBreakdownImpl(
      thermal: null == thermal
          ? _value.thermal
          : thermal // ignore: cast_nullable_to_non_nullable
              as double,
      air: null == air
          ? _value.air
          : air // ignore: cast_nullable_to_non_nullable
              as double,
      rain: null == rain
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RouteBreakdownImpl implements _RouteBreakdown {
  const _$RouteBreakdownImpl(
      {required this.thermal, required this.air, required this.rain});

  factory _$RouteBreakdownImpl.fromJson(Map<String, dynamic> json) =>
      _$$RouteBreakdownImplFromJson(json);

  @override
  final double thermal;
  @override
  final double air;
  @override
  final double rain;

  @override
  String toString() {
    return 'RouteBreakdown(thermal: $thermal, air: $air, rain: $rain)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteBreakdownImpl &&
            (identical(other.thermal, thermal) || other.thermal == thermal) &&
            (identical(other.air, air) || other.air == air) &&
            (identical(other.rain, rain) || other.rain == rain));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, thermal, air, rain);

  /// Create a copy of RouteBreakdown
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RouteBreakdownImplCopyWith<_$RouteBreakdownImpl> get copyWith =>
      __$$RouteBreakdownImplCopyWithImpl<_$RouteBreakdownImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RouteBreakdownImplToJson(
      this,
    );
  }
}

abstract class _RouteBreakdown implements RouteBreakdown {
  const factory _RouteBreakdown(
      {required final double thermal,
      required final double air,
      required final double rain}) = _$RouteBreakdownImpl;

  factory _RouteBreakdown.fromJson(Map<String, dynamic> json) =
      _$RouteBreakdownImpl.fromJson;

  @override
  double get thermal;
  @override
  double get air;
  @override
  double get rain;

  /// Create a copy of RouteBreakdown
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RouteBreakdownImplCopyWith<_$RouteBreakdownImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
