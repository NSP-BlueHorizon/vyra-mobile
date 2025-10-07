// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'metadata_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MetadataModel _$MetadataModelFromJson(Map<String, dynamic> json) {
  return _MetadataModel.fromJson(json);
}

/// @nodoc
mixin _$MetadataModel {
  String get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'aoi_bbox')
  List<double> get aoiBbox => throw _privateConstructorUsedError;
  Map<String, LayerInfo> get layers => throw _privateConstructorUsedError;
  Map<String, double> get weights => throw _privateConstructorUsedError;
  String get season => throw _privateConstructorUsedError;

  /// Serializes this MetadataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MetadataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MetadataModelCopyWith<MetadataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetadataModelCopyWith<$Res> {
  factory $MetadataModelCopyWith(
          MetadataModel value, $Res Function(MetadataModel) then) =
      _$MetadataModelCopyWithImpl<$Res, MetadataModel>;
  @useResult
  $Res call(
      {String city,
      @JsonKey(name: 'aoi_bbox') List<double> aoiBbox,
      Map<String, LayerInfo> layers,
      Map<String, double> weights,
      String season});
}

/// @nodoc
class _$MetadataModelCopyWithImpl<$Res, $Val extends MetadataModel>
    implements $MetadataModelCopyWith<$Res> {
  _$MetadataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MetadataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = null,
    Object? aoiBbox = null,
    Object? layers = null,
    Object? weights = null,
    Object? season = null,
  }) {
    return _then(_value.copyWith(
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      aoiBbox: null == aoiBbox
          ? _value.aoiBbox
          : aoiBbox // ignore: cast_nullable_to_non_nullable
              as List<double>,
      layers: null == layers
          ? _value.layers
          : layers // ignore: cast_nullable_to_non_nullable
              as Map<String, LayerInfo>,
      weights: null == weights
          ? _value.weights
          : weights // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      season: null == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetadataModelImplCopyWith<$Res>
    implements $MetadataModelCopyWith<$Res> {
  factory _$$MetadataModelImplCopyWith(
          _$MetadataModelImpl value, $Res Function(_$MetadataModelImpl) then) =
      __$$MetadataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String city,
      @JsonKey(name: 'aoi_bbox') List<double> aoiBbox,
      Map<String, LayerInfo> layers,
      Map<String, double> weights,
      String season});
}

/// @nodoc
class __$$MetadataModelImplCopyWithImpl<$Res>
    extends _$MetadataModelCopyWithImpl<$Res, _$MetadataModelImpl>
    implements _$$MetadataModelImplCopyWith<$Res> {
  __$$MetadataModelImplCopyWithImpl(
      _$MetadataModelImpl _value, $Res Function(_$MetadataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MetadataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = null,
    Object? aoiBbox = null,
    Object? layers = null,
    Object? weights = null,
    Object? season = null,
  }) {
    return _then(_$MetadataModelImpl(
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      aoiBbox: null == aoiBbox
          ? _value._aoiBbox
          : aoiBbox // ignore: cast_nullable_to_non_nullable
              as List<double>,
      layers: null == layers
          ? _value._layers
          : layers // ignore: cast_nullable_to_non_nullable
              as Map<String, LayerInfo>,
      weights: null == weights
          ? _value._weights
          : weights // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      season: null == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetadataModelImpl implements _MetadataModel {
  const _$MetadataModelImpl(
      {required this.city,
      @JsonKey(name: 'aoi_bbox') required final List<double> aoiBbox,
      required final Map<String, LayerInfo> layers,
      required final Map<String, double> weights,
      required this.season})
      : _aoiBbox = aoiBbox,
        _layers = layers,
        _weights = weights;

  factory _$MetadataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetadataModelImplFromJson(json);

  @override
  final String city;
  final List<double> _aoiBbox;
  @override
  @JsonKey(name: 'aoi_bbox')
  List<double> get aoiBbox {
    if (_aoiBbox is EqualUnmodifiableListView) return _aoiBbox;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_aoiBbox);
  }

  final Map<String, LayerInfo> _layers;
  @override
  Map<String, LayerInfo> get layers {
    if (_layers is EqualUnmodifiableMapView) return _layers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_layers);
  }

  final Map<String, double> _weights;
  @override
  Map<String, double> get weights {
    if (_weights is EqualUnmodifiableMapView) return _weights;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_weights);
  }

  @override
  final String season;

  @override
  String toString() {
    return 'MetadataModel(city: $city, aoiBbox: $aoiBbox, layers: $layers, weights: $weights, season: $season)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetadataModelImpl &&
            (identical(other.city, city) || other.city == city) &&
            const DeepCollectionEquality().equals(other._aoiBbox, _aoiBbox) &&
            const DeepCollectionEquality().equals(other._layers, _layers) &&
            const DeepCollectionEquality().equals(other._weights, _weights) &&
            (identical(other.season, season) || other.season == season));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      city,
      const DeepCollectionEquality().hash(_aoiBbox),
      const DeepCollectionEquality().hash(_layers),
      const DeepCollectionEquality().hash(_weights),
      season);

  /// Create a copy of MetadataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetadataModelImplCopyWith<_$MetadataModelImpl> get copyWith =>
      __$$MetadataModelImplCopyWithImpl<_$MetadataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetadataModelImplToJson(
      this,
    );
  }
}

abstract class _MetadataModel implements MetadataModel {
  const factory _MetadataModel(
      {required final String city,
      @JsonKey(name: 'aoi_bbox') required final List<double> aoiBbox,
      required final Map<String, LayerInfo> layers,
      required final Map<String, double> weights,
      required final String season}) = _$MetadataModelImpl;

  factory _MetadataModel.fromJson(Map<String, dynamic> json) =
      _$MetadataModelImpl.fromJson;

  @override
  String get city;
  @override
  @JsonKey(name: 'aoi_bbox')
  List<double> get aoiBbox;
  @override
  Map<String, LayerInfo> get layers;
  @override
  Map<String, double> get weights;
  @override
  String get season;

  /// Create a copy of MetadataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetadataModelImplCopyWith<_$MetadataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LayerInfo _$LayerInfoFromJson(Map<String, dynamic> json) {
  return _LayerInfo.fromJson(json);
}

/// @nodoc
mixin _$LayerInfo {
  String get src => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;

  /// Serializes this LayerInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LayerInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LayerInfoCopyWith<LayerInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LayerInfoCopyWith<$Res> {
  factory $LayerInfoCopyWith(LayerInfo value, $Res Function(LayerInfo) then) =
      _$LayerInfoCopyWithImpl<$Res, LayerInfo>;
  @useResult
  $Res call({String src, String timestamp, String? note});
}

/// @nodoc
class _$LayerInfoCopyWithImpl<$Res, $Val extends LayerInfo>
    implements $LayerInfoCopyWith<$Res> {
  _$LayerInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LayerInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? src = null,
    Object? timestamp = null,
    Object? note = freezed,
  }) {
    return _then(_value.copyWith(
      src: null == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LayerInfoImplCopyWith<$Res>
    implements $LayerInfoCopyWith<$Res> {
  factory _$$LayerInfoImplCopyWith(
          _$LayerInfoImpl value, $Res Function(_$LayerInfoImpl) then) =
      __$$LayerInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String src, String timestamp, String? note});
}

/// @nodoc
class __$$LayerInfoImplCopyWithImpl<$Res>
    extends _$LayerInfoCopyWithImpl<$Res, _$LayerInfoImpl>
    implements _$$LayerInfoImplCopyWith<$Res> {
  __$$LayerInfoImplCopyWithImpl(
      _$LayerInfoImpl _value, $Res Function(_$LayerInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of LayerInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? src = null,
    Object? timestamp = null,
    Object? note = freezed,
  }) {
    return _then(_$LayerInfoImpl(
      src: null == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LayerInfoImpl implements _LayerInfo {
  const _$LayerInfoImpl(
      {required this.src, required this.timestamp, this.note});

  factory _$LayerInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LayerInfoImplFromJson(json);

  @override
  final String src;
  @override
  final String timestamp;
  @override
  final String? note;

  @override
  String toString() {
    return 'LayerInfo(src: $src, timestamp: $timestamp, note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LayerInfoImpl &&
            (identical(other.src, src) || other.src == src) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, src, timestamp, note);

  /// Create a copy of LayerInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LayerInfoImplCopyWith<_$LayerInfoImpl> get copyWith =>
      __$$LayerInfoImplCopyWithImpl<_$LayerInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LayerInfoImplToJson(
      this,
    );
  }
}

abstract class _LayerInfo implements LayerInfo {
  const factory _LayerInfo(
      {required final String src,
      required final String timestamp,
      final String? note}) = _$LayerInfoImpl;

  factory _LayerInfo.fromJson(Map<String, dynamic> json) =
      _$LayerInfoImpl.fromJson;

  @override
  String get src;
  @override
  String get timestamp;
  @override
  String? get note;

  /// Create a copy of LayerInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LayerInfoImplCopyWith<_$LayerInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
