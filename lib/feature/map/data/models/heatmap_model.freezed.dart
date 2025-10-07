// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'heatmap_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HeatmapModel _$HeatmapModelFromJson(Map<String, dynamic> json) {
  return _HeatmapModel.fromJson(json);
}

/// @nodoc
mixin _$HeatmapModel {
  String get type => throw _privateConstructorUsedError;
  List<HeatmapFeature> get features => throw _privateConstructorUsedError;
  HeatmapMetadata get metadata => throw _privateConstructorUsedError;

  /// Serializes this HeatmapModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HeatmapModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HeatmapModelCopyWith<HeatmapModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeatmapModelCopyWith<$Res> {
  factory $HeatmapModelCopyWith(
          HeatmapModel value, $Res Function(HeatmapModel) then) =
      _$HeatmapModelCopyWithImpl<$Res, HeatmapModel>;
  @useResult
  $Res call(
      {String type, List<HeatmapFeature> features, HeatmapMetadata metadata});

  $HeatmapMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class _$HeatmapModelCopyWithImpl<$Res, $Val extends HeatmapModel>
    implements $HeatmapModelCopyWith<$Res> {
  _$HeatmapModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HeatmapModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? features = null,
    Object? metadata = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      features: null == features
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as List<HeatmapFeature>,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as HeatmapMetadata,
    ) as $Val);
  }

  /// Create a copy of HeatmapModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HeatmapMetadataCopyWith<$Res> get metadata {
    return $HeatmapMetadataCopyWith<$Res>(_value.metadata, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HeatmapModelImplCopyWith<$Res>
    implements $HeatmapModelCopyWith<$Res> {
  factory _$$HeatmapModelImplCopyWith(
          _$HeatmapModelImpl value, $Res Function(_$HeatmapModelImpl) then) =
      __$$HeatmapModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type, List<HeatmapFeature> features, HeatmapMetadata metadata});

  @override
  $HeatmapMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class __$$HeatmapModelImplCopyWithImpl<$Res>
    extends _$HeatmapModelCopyWithImpl<$Res, _$HeatmapModelImpl>
    implements _$$HeatmapModelImplCopyWith<$Res> {
  __$$HeatmapModelImplCopyWithImpl(
      _$HeatmapModelImpl _value, $Res Function(_$HeatmapModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of HeatmapModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? features = null,
    Object? metadata = null,
  }) {
    return _then(_$HeatmapModelImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      features: null == features
          ? _value._features
          : features // ignore: cast_nullable_to_non_nullable
              as List<HeatmapFeature>,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as HeatmapMetadata,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HeatmapModelImpl implements _HeatmapModel {
  const _$HeatmapModelImpl(
      {required this.type,
      required final List<HeatmapFeature> features,
      required this.metadata})
      : _features = features;

  factory _$HeatmapModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HeatmapModelImplFromJson(json);

  @override
  final String type;
  final List<HeatmapFeature> _features;
  @override
  List<HeatmapFeature> get features {
    if (_features is EqualUnmodifiableListView) return _features;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_features);
  }

  @override
  final HeatmapMetadata metadata;

  @override
  String toString() {
    return 'HeatmapModel(type: $type, features: $features, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeatmapModelImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._features, _features) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type,
      const DeepCollectionEquality().hash(_features), metadata);

  /// Create a copy of HeatmapModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HeatmapModelImplCopyWith<_$HeatmapModelImpl> get copyWith =>
      __$$HeatmapModelImplCopyWithImpl<_$HeatmapModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HeatmapModelImplToJson(
      this,
    );
  }
}

abstract class _HeatmapModel implements HeatmapModel {
  const factory _HeatmapModel(
      {required final String type,
      required final List<HeatmapFeature> features,
      required final HeatmapMetadata metadata}) = _$HeatmapModelImpl;

  factory _HeatmapModel.fromJson(Map<String, dynamic> json) =
      _$HeatmapModelImpl.fromJson;

  @override
  String get type;
  @override
  List<HeatmapFeature> get features;
  @override
  HeatmapMetadata get metadata;

  /// Create a copy of HeatmapModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HeatmapModelImplCopyWith<_$HeatmapModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HeatmapFeature _$HeatmapFeatureFromJson(Map<String, dynamic> json) {
  return _HeatmapFeature.fromJson(json);
}

/// @nodoc
mixin _$HeatmapFeature {
  String get type => throw _privateConstructorUsedError;
  HeatmapGeometry get geometry => throw _privateConstructorUsedError;
  HeatmapProperties get properties => throw _privateConstructorUsedError;

  /// Serializes this HeatmapFeature to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HeatmapFeature
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HeatmapFeatureCopyWith<HeatmapFeature> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeatmapFeatureCopyWith<$Res> {
  factory $HeatmapFeatureCopyWith(
          HeatmapFeature value, $Res Function(HeatmapFeature) then) =
      _$HeatmapFeatureCopyWithImpl<$Res, HeatmapFeature>;
  @useResult
  $Res call(
      {String type, HeatmapGeometry geometry, HeatmapProperties properties});

  $HeatmapGeometryCopyWith<$Res> get geometry;
  $HeatmapPropertiesCopyWith<$Res> get properties;
}

/// @nodoc
class _$HeatmapFeatureCopyWithImpl<$Res, $Val extends HeatmapFeature>
    implements $HeatmapFeatureCopyWith<$Res> {
  _$HeatmapFeatureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HeatmapFeature
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
              as HeatmapGeometry,
      properties: null == properties
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as HeatmapProperties,
    ) as $Val);
  }

  /// Create a copy of HeatmapFeature
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HeatmapGeometryCopyWith<$Res> get geometry {
    return $HeatmapGeometryCopyWith<$Res>(_value.geometry, (value) {
      return _then(_value.copyWith(geometry: value) as $Val);
    });
  }

  /// Create a copy of HeatmapFeature
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HeatmapPropertiesCopyWith<$Res> get properties {
    return $HeatmapPropertiesCopyWith<$Res>(_value.properties, (value) {
      return _then(_value.copyWith(properties: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HeatmapFeatureImplCopyWith<$Res>
    implements $HeatmapFeatureCopyWith<$Res> {
  factory _$$HeatmapFeatureImplCopyWith(_$HeatmapFeatureImpl value,
          $Res Function(_$HeatmapFeatureImpl) then) =
      __$$HeatmapFeatureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type, HeatmapGeometry geometry, HeatmapProperties properties});

  @override
  $HeatmapGeometryCopyWith<$Res> get geometry;
  @override
  $HeatmapPropertiesCopyWith<$Res> get properties;
}

/// @nodoc
class __$$HeatmapFeatureImplCopyWithImpl<$Res>
    extends _$HeatmapFeatureCopyWithImpl<$Res, _$HeatmapFeatureImpl>
    implements _$$HeatmapFeatureImplCopyWith<$Res> {
  __$$HeatmapFeatureImplCopyWithImpl(
      _$HeatmapFeatureImpl _value, $Res Function(_$HeatmapFeatureImpl) _then)
      : super(_value, _then);

  /// Create a copy of HeatmapFeature
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? geometry = null,
    Object? properties = null,
  }) {
    return _then(_$HeatmapFeatureImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      geometry: null == geometry
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as HeatmapGeometry,
      properties: null == properties
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as HeatmapProperties,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HeatmapFeatureImpl implements _HeatmapFeature {
  const _$HeatmapFeatureImpl(
      {required this.type, required this.geometry, required this.properties});

  factory _$HeatmapFeatureImpl.fromJson(Map<String, dynamic> json) =>
      _$$HeatmapFeatureImplFromJson(json);

  @override
  final String type;
  @override
  final HeatmapGeometry geometry;
  @override
  final HeatmapProperties properties;

  @override
  String toString() {
    return 'HeatmapFeature(type: $type, geometry: $geometry, properties: $properties)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeatmapFeatureImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.geometry, geometry) ||
                other.geometry == geometry) &&
            (identical(other.properties, properties) ||
                other.properties == properties));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, geometry, properties);

  /// Create a copy of HeatmapFeature
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HeatmapFeatureImplCopyWith<_$HeatmapFeatureImpl> get copyWith =>
      __$$HeatmapFeatureImplCopyWithImpl<_$HeatmapFeatureImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HeatmapFeatureImplToJson(
      this,
    );
  }
}

abstract class _HeatmapFeature implements HeatmapFeature {
  const factory _HeatmapFeature(
      {required final String type,
      required final HeatmapGeometry geometry,
      required final HeatmapProperties properties}) = _$HeatmapFeatureImpl;

  factory _HeatmapFeature.fromJson(Map<String, dynamic> json) =
      _$HeatmapFeatureImpl.fromJson;

  @override
  String get type;
  @override
  HeatmapGeometry get geometry;
  @override
  HeatmapProperties get properties;

  /// Create a copy of HeatmapFeature
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HeatmapFeatureImplCopyWith<_$HeatmapFeatureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HeatmapGeometry _$HeatmapGeometryFromJson(Map<String, dynamic> json) {
  return _HeatmapGeometry.fromJson(json);
}

/// @nodoc
mixin _$HeatmapGeometry {
  String get type => throw _privateConstructorUsedError;
  List<List<List<double>>> get coordinates =>
      throw _privateConstructorUsedError;

  /// Serializes this HeatmapGeometry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HeatmapGeometry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HeatmapGeometryCopyWith<HeatmapGeometry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeatmapGeometryCopyWith<$Res> {
  factory $HeatmapGeometryCopyWith(
          HeatmapGeometry value, $Res Function(HeatmapGeometry) then) =
      _$HeatmapGeometryCopyWithImpl<$Res, HeatmapGeometry>;
  @useResult
  $Res call({String type, List<List<List<double>>> coordinates});
}

/// @nodoc
class _$HeatmapGeometryCopyWithImpl<$Res, $Val extends HeatmapGeometry>
    implements $HeatmapGeometryCopyWith<$Res> {
  _$HeatmapGeometryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HeatmapGeometry
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
              as List<List<List<double>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HeatmapGeometryImplCopyWith<$Res>
    implements $HeatmapGeometryCopyWith<$Res> {
  factory _$$HeatmapGeometryImplCopyWith(_$HeatmapGeometryImpl value,
          $Res Function(_$HeatmapGeometryImpl) then) =
      __$$HeatmapGeometryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, List<List<List<double>>> coordinates});
}

/// @nodoc
class __$$HeatmapGeometryImplCopyWithImpl<$Res>
    extends _$HeatmapGeometryCopyWithImpl<$Res, _$HeatmapGeometryImpl>
    implements _$$HeatmapGeometryImplCopyWith<$Res> {
  __$$HeatmapGeometryImplCopyWithImpl(
      _$HeatmapGeometryImpl _value, $Res Function(_$HeatmapGeometryImpl) _then)
      : super(_value, _then);

  /// Create a copy of HeatmapGeometry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? coordinates = null,
  }) {
    return _then(_$HeatmapGeometryImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _value._coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<List<List<double>>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HeatmapGeometryImpl implements _HeatmapGeometry {
  const _$HeatmapGeometryImpl(
      {required this.type, required final List<List<List<double>>> coordinates})
      : _coordinates = coordinates;

  factory _$HeatmapGeometryImpl.fromJson(Map<String, dynamic> json) =>
      _$$HeatmapGeometryImplFromJson(json);

  @override
  final String type;
  final List<List<List<double>>> _coordinates;
  @override
  List<List<List<double>>> get coordinates {
    if (_coordinates is EqualUnmodifiableListView) return _coordinates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coordinates);
  }

  @override
  String toString() {
    return 'HeatmapGeometry(type: $type, coordinates: $coordinates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeatmapGeometryImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._coordinates, _coordinates));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(_coordinates));

  /// Create a copy of HeatmapGeometry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HeatmapGeometryImplCopyWith<_$HeatmapGeometryImpl> get copyWith =>
      __$$HeatmapGeometryImplCopyWithImpl<_$HeatmapGeometryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HeatmapGeometryImplToJson(
      this,
    );
  }
}

abstract class _HeatmapGeometry implements HeatmapGeometry {
  const factory _HeatmapGeometry(
          {required final String type,
          required final List<List<List<double>>> coordinates}) =
      _$HeatmapGeometryImpl;

  factory _HeatmapGeometry.fromJson(Map<String, dynamic> json) =
      _$HeatmapGeometryImpl.fromJson;

  @override
  String get type;
  @override
  List<List<List<double>>> get coordinates;

  /// Create a copy of HeatmapGeometry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HeatmapGeometryImplCopyWith<_$HeatmapGeometryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HeatmapProperties _$HeatmapPropertiesFromJson(Map<String, dynamic> json) {
  return _HeatmapProperties.fromJson(json);
}

/// @nodoc
mixin _$HeatmapProperties {
  double get hsi => throw _privateConstructorUsedError;
  @JsonKey(name: 'risk_level')
  String get riskLevel => throw _privateConstructorUsedError;
  double get thermal => throw _privateConstructorUsedError;
  double get air => throw _privateConstructorUsedError;
  double get rain => throw _privateConstructorUsedError;

  /// Serializes this HeatmapProperties to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HeatmapProperties
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HeatmapPropertiesCopyWith<HeatmapProperties> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeatmapPropertiesCopyWith<$Res> {
  factory $HeatmapPropertiesCopyWith(
          HeatmapProperties value, $Res Function(HeatmapProperties) then) =
      _$HeatmapPropertiesCopyWithImpl<$Res, HeatmapProperties>;
  @useResult
  $Res call(
      {double hsi,
      @JsonKey(name: 'risk_level') String riskLevel,
      double thermal,
      double air,
      double rain});
}

/// @nodoc
class _$HeatmapPropertiesCopyWithImpl<$Res, $Val extends HeatmapProperties>
    implements $HeatmapPropertiesCopyWith<$Res> {
  _$HeatmapPropertiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HeatmapProperties
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hsi = null,
    Object? riskLevel = null,
    Object? thermal = null,
    Object? air = null,
    Object? rain = null,
  }) {
    return _then(_value.copyWith(
      hsi: null == hsi
          ? _value.hsi
          : hsi // ignore: cast_nullable_to_non_nullable
              as double,
      riskLevel: null == riskLevel
          ? _value.riskLevel
          : riskLevel // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$HeatmapPropertiesImplCopyWith<$Res>
    implements $HeatmapPropertiesCopyWith<$Res> {
  factory _$$HeatmapPropertiesImplCopyWith(_$HeatmapPropertiesImpl value,
          $Res Function(_$HeatmapPropertiesImpl) then) =
      __$$HeatmapPropertiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double hsi,
      @JsonKey(name: 'risk_level') String riskLevel,
      double thermal,
      double air,
      double rain});
}

/// @nodoc
class __$$HeatmapPropertiesImplCopyWithImpl<$Res>
    extends _$HeatmapPropertiesCopyWithImpl<$Res, _$HeatmapPropertiesImpl>
    implements _$$HeatmapPropertiesImplCopyWith<$Res> {
  __$$HeatmapPropertiesImplCopyWithImpl(_$HeatmapPropertiesImpl _value,
      $Res Function(_$HeatmapPropertiesImpl) _then)
      : super(_value, _then);

  /// Create a copy of HeatmapProperties
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hsi = null,
    Object? riskLevel = null,
    Object? thermal = null,
    Object? air = null,
    Object? rain = null,
  }) {
    return _then(_$HeatmapPropertiesImpl(
      hsi: null == hsi
          ? _value.hsi
          : hsi // ignore: cast_nullable_to_non_nullable
              as double,
      riskLevel: null == riskLevel
          ? _value.riskLevel
          : riskLevel // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$HeatmapPropertiesImpl implements _HeatmapProperties {
  const _$HeatmapPropertiesImpl(
      {required this.hsi,
      @JsonKey(name: 'risk_level') required this.riskLevel,
      required this.thermal,
      required this.air,
      required this.rain});

  factory _$HeatmapPropertiesImpl.fromJson(Map<String, dynamic> json) =>
      _$$HeatmapPropertiesImplFromJson(json);

  @override
  final double hsi;
  @override
  @JsonKey(name: 'risk_level')
  final String riskLevel;
  @override
  final double thermal;
  @override
  final double air;
  @override
  final double rain;

  @override
  String toString() {
    return 'HeatmapProperties(hsi: $hsi, riskLevel: $riskLevel, thermal: $thermal, air: $air, rain: $rain)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeatmapPropertiesImpl &&
            (identical(other.hsi, hsi) || other.hsi == hsi) &&
            (identical(other.riskLevel, riskLevel) ||
                other.riskLevel == riskLevel) &&
            (identical(other.thermal, thermal) || other.thermal == thermal) &&
            (identical(other.air, air) || other.air == air) &&
            (identical(other.rain, rain) || other.rain == rain));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, hsi, riskLevel, thermal, air, rain);

  /// Create a copy of HeatmapProperties
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HeatmapPropertiesImplCopyWith<_$HeatmapPropertiesImpl> get copyWith =>
      __$$HeatmapPropertiesImplCopyWithImpl<_$HeatmapPropertiesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HeatmapPropertiesImplToJson(
      this,
    );
  }
}

abstract class _HeatmapProperties implements HeatmapProperties {
  const factory _HeatmapProperties(
      {required final double hsi,
      @JsonKey(name: 'risk_level') required final String riskLevel,
      required final double thermal,
      required final double air,
      required final double rain}) = _$HeatmapPropertiesImpl;

  factory _HeatmapProperties.fromJson(Map<String, dynamic> json) =
      _$HeatmapPropertiesImpl.fromJson;

  @override
  double get hsi;
  @override
  @JsonKey(name: 'risk_level')
  String get riskLevel;
  @override
  double get thermal;
  @override
  double get air;
  @override
  double get rain;

  /// Create a copy of HeatmapProperties
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HeatmapPropertiesImplCopyWith<_$HeatmapPropertiesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HeatmapMetadata _$HeatmapMetadataFromJson(Map<String, dynamic> json) {
  return _HeatmapMetadata.fromJson(json);
}

/// @nodoc
mixin _$HeatmapMetadata {
  String get season => throw _privateConstructorUsedError;
  int get resolution => throw _privateConstructorUsedError;
  @JsonKey(name: 'grid_cells')
  int get gridCells => throw _privateConstructorUsedError;
  HeatmapStats get stats => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;

  /// Serializes this HeatmapMetadata to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HeatmapMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HeatmapMetadataCopyWith<HeatmapMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeatmapMetadataCopyWith<$Res> {
  factory $HeatmapMetadataCopyWith(
          HeatmapMetadata value, $Res Function(HeatmapMetadata) then) =
      _$HeatmapMetadataCopyWithImpl<$Res, HeatmapMetadata>;
  @useResult
  $Res call(
      {String season,
      int resolution,
      @JsonKey(name: 'grid_cells') int gridCells,
      HeatmapStats stats,
      String timestamp});

  $HeatmapStatsCopyWith<$Res> get stats;
}

/// @nodoc
class _$HeatmapMetadataCopyWithImpl<$Res, $Val extends HeatmapMetadata>
    implements $HeatmapMetadataCopyWith<$Res> {
  _$HeatmapMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HeatmapMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? season = null,
    Object? resolution = null,
    Object? gridCells = null,
    Object? stats = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      season: null == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as String,
      resolution: null == resolution
          ? _value.resolution
          : resolution // ignore: cast_nullable_to_non_nullable
              as int,
      gridCells: null == gridCells
          ? _value.gridCells
          : gridCells // ignore: cast_nullable_to_non_nullable
              as int,
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as HeatmapStats,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of HeatmapMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HeatmapStatsCopyWith<$Res> get stats {
    return $HeatmapStatsCopyWith<$Res>(_value.stats, (value) {
      return _then(_value.copyWith(stats: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HeatmapMetadataImplCopyWith<$Res>
    implements $HeatmapMetadataCopyWith<$Res> {
  factory _$$HeatmapMetadataImplCopyWith(_$HeatmapMetadataImpl value,
          $Res Function(_$HeatmapMetadataImpl) then) =
      __$$HeatmapMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String season,
      int resolution,
      @JsonKey(name: 'grid_cells') int gridCells,
      HeatmapStats stats,
      String timestamp});

  @override
  $HeatmapStatsCopyWith<$Res> get stats;
}

/// @nodoc
class __$$HeatmapMetadataImplCopyWithImpl<$Res>
    extends _$HeatmapMetadataCopyWithImpl<$Res, _$HeatmapMetadataImpl>
    implements _$$HeatmapMetadataImplCopyWith<$Res> {
  __$$HeatmapMetadataImplCopyWithImpl(
      _$HeatmapMetadataImpl _value, $Res Function(_$HeatmapMetadataImpl) _then)
      : super(_value, _then);

  /// Create a copy of HeatmapMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? season = null,
    Object? resolution = null,
    Object? gridCells = null,
    Object? stats = null,
    Object? timestamp = null,
  }) {
    return _then(_$HeatmapMetadataImpl(
      season: null == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as String,
      resolution: null == resolution
          ? _value.resolution
          : resolution // ignore: cast_nullable_to_non_nullable
              as int,
      gridCells: null == gridCells
          ? _value.gridCells
          : gridCells // ignore: cast_nullable_to_non_nullable
              as int,
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as HeatmapStats,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HeatmapMetadataImpl implements _HeatmapMetadata {
  const _$HeatmapMetadataImpl(
      {required this.season,
      required this.resolution,
      @JsonKey(name: 'grid_cells') required this.gridCells,
      required this.stats,
      required this.timestamp});

  factory _$HeatmapMetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$HeatmapMetadataImplFromJson(json);

  @override
  final String season;
  @override
  final int resolution;
  @override
  @JsonKey(name: 'grid_cells')
  final int gridCells;
  @override
  final HeatmapStats stats;
  @override
  final String timestamp;

  @override
  String toString() {
    return 'HeatmapMetadata(season: $season, resolution: $resolution, gridCells: $gridCells, stats: $stats, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeatmapMetadataImpl &&
            (identical(other.season, season) || other.season == season) &&
            (identical(other.resolution, resolution) ||
                other.resolution == resolution) &&
            (identical(other.gridCells, gridCells) ||
                other.gridCells == gridCells) &&
            (identical(other.stats, stats) || other.stats == stats) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, season, resolution, gridCells, stats, timestamp);

  /// Create a copy of HeatmapMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HeatmapMetadataImplCopyWith<_$HeatmapMetadataImpl> get copyWith =>
      __$$HeatmapMetadataImplCopyWithImpl<_$HeatmapMetadataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HeatmapMetadataImplToJson(
      this,
    );
  }
}

abstract class _HeatmapMetadata implements HeatmapMetadata {
  const factory _HeatmapMetadata(
      {required final String season,
      required final int resolution,
      @JsonKey(name: 'grid_cells') required final int gridCells,
      required final HeatmapStats stats,
      required final String timestamp}) = _$HeatmapMetadataImpl;

  factory _HeatmapMetadata.fromJson(Map<String, dynamic> json) =
      _$HeatmapMetadataImpl.fromJson;

  @override
  String get season;
  @override
  int get resolution;
  @override
  @JsonKey(name: 'grid_cells')
  int get gridCells;
  @override
  HeatmapStats get stats;
  @override
  String get timestamp;

  /// Create a copy of HeatmapMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HeatmapMetadataImplCopyWith<_$HeatmapMetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HeatmapStats _$HeatmapStatsFromJson(Map<String, dynamic> json) {
  return _HeatmapStats.fromJson(json);
}

/// @nodoc
mixin _$HeatmapStats {
  @JsonKey(name: 'min_hsi')
  double get minHsi => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_hsi')
  double get maxHsi => throw _privateConstructorUsedError;
  @JsonKey(name: 'avg_hsi')
  double get avgHsi => throw _privateConstructorUsedError;

  /// Serializes this HeatmapStats to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HeatmapStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HeatmapStatsCopyWith<HeatmapStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeatmapStatsCopyWith<$Res> {
  factory $HeatmapStatsCopyWith(
          HeatmapStats value, $Res Function(HeatmapStats) then) =
      _$HeatmapStatsCopyWithImpl<$Res, HeatmapStats>;
  @useResult
  $Res call(
      {@JsonKey(name: 'min_hsi') double minHsi,
      @JsonKey(name: 'max_hsi') double maxHsi,
      @JsonKey(name: 'avg_hsi') double avgHsi});
}

/// @nodoc
class _$HeatmapStatsCopyWithImpl<$Res, $Val extends HeatmapStats>
    implements $HeatmapStatsCopyWith<$Res> {
  _$HeatmapStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HeatmapStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minHsi = null,
    Object? maxHsi = null,
    Object? avgHsi = null,
  }) {
    return _then(_value.copyWith(
      minHsi: null == minHsi
          ? _value.minHsi
          : minHsi // ignore: cast_nullable_to_non_nullable
              as double,
      maxHsi: null == maxHsi
          ? _value.maxHsi
          : maxHsi // ignore: cast_nullable_to_non_nullable
              as double,
      avgHsi: null == avgHsi
          ? _value.avgHsi
          : avgHsi // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HeatmapStatsImplCopyWith<$Res>
    implements $HeatmapStatsCopyWith<$Res> {
  factory _$$HeatmapStatsImplCopyWith(
          _$HeatmapStatsImpl value, $Res Function(_$HeatmapStatsImpl) then) =
      __$$HeatmapStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'min_hsi') double minHsi,
      @JsonKey(name: 'max_hsi') double maxHsi,
      @JsonKey(name: 'avg_hsi') double avgHsi});
}

/// @nodoc
class __$$HeatmapStatsImplCopyWithImpl<$Res>
    extends _$HeatmapStatsCopyWithImpl<$Res, _$HeatmapStatsImpl>
    implements _$$HeatmapStatsImplCopyWith<$Res> {
  __$$HeatmapStatsImplCopyWithImpl(
      _$HeatmapStatsImpl _value, $Res Function(_$HeatmapStatsImpl) _then)
      : super(_value, _then);

  /// Create a copy of HeatmapStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minHsi = null,
    Object? maxHsi = null,
    Object? avgHsi = null,
  }) {
    return _then(_$HeatmapStatsImpl(
      minHsi: null == minHsi
          ? _value.minHsi
          : minHsi // ignore: cast_nullable_to_non_nullable
              as double,
      maxHsi: null == maxHsi
          ? _value.maxHsi
          : maxHsi // ignore: cast_nullable_to_non_nullable
              as double,
      avgHsi: null == avgHsi
          ? _value.avgHsi
          : avgHsi // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HeatmapStatsImpl implements _HeatmapStats {
  const _$HeatmapStatsImpl(
      {@JsonKey(name: 'min_hsi') required this.minHsi,
      @JsonKey(name: 'max_hsi') required this.maxHsi,
      @JsonKey(name: 'avg_hsi') required this.avgHsi});

  factory _$HeatmapStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$HeatmapStatsImplFromJson(json);

  @override
  @JsonKey(name: 'min_hsi')
  final double minHsi;
  @override
  @JsonKey(name: 'max_hsi')
  final double maxHsi;
  @override
  @JsonKey(name: 'avg_hsi')
  final double avgHsi;

  @override
  String toString() {
    return 'HeatmapStats(minHsi: $minHsi, maxHsi: $maxHsi, avgHsi: $avgHsi)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeatmapStatsImpl &&
            (identical(other.minHsi, minHsi) || other.minHsi == minHsi) &&
            (identical(other.maxHsi, maxHsi) || other.maxHsi == maxHsi) &&
            (identical(other.avgHsi, avgHsi) || other.avgHsi == avgHsi));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, minHsi, maxHsi, avgHsi);

  /// Create a copy of HeatmapStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HeatmapStatsImplCopyWith<_$HeatmapStatsImpl> get copyWith =>
      __$$HeatmapStatsImplCopyWithImpl<_$HeatmapStatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HeatmapStatsImplToJson(
      this,
    );
  }
}

abstract class _HeatmapStats implements HeatmapStats {
  const factory _HeatmapStats(
          {@JsonKey(name: 'min_hsi') required final double minHsi,
          @JsonKey(name: 'max_hsi') required final double maxHsi,
          @JsonKey(name: 'avg_hsi') required final double avgHsi}) =
      _$HeatmapStatsImpl;

  factory _HeatmapStats.fromJson(Map<String, dynamic> json) =
      _$HeatmapStatsImpl.fromJson;

  @override
  @JsonKey(name: 'min_hsi')
  double get minHsi;
  @override
  @JsonKey(name: 'max_hsi')
  double get maxHsi;
  @override
  @JsonKey(name: 'avg_hsi')
  double get avgHsi;

  /// Create a copy of HeatmapStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HeatmapStatsImplCopyWith<_$HeatmapStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
