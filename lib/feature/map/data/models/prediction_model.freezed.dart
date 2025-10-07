// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prediction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PredictionModel _$PredictionModelFromJson(Map<String, dynamic> json) {
  return _PredictionModel.fromJson(json);
}

/// @nodoc
mixin _$PredictionModel {
  String get timestamp => throw _privateConstructorUsedError;
  List<Advisory> get advisories => throw _privateConstructorUsedError;

  /// Serializes this PredictionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PredictionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PredictionModelCopyWith<PredictionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PredictionModelCopyWith<$Res> {
  factory $PredictionModelCopyWith(
          PredictionModel value, $Res Function(PredictionModel) then) =
      _$PredictionModelCopyWithImpl<$Res, PredictionModel>;
  @useResult
  $Res call({String timestamp, List<Advisory> advisories});
}

/// @nodoc
class _$PredictionModelCopyWithImpl<$Res, $Val extends PredictionModel>
    implements $PredictionModelCopyWith<$Res> {
  _$PredictionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PredictionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? advisories = null,
  }) {
    return _then(_value.copyWith(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      advisories: null == advisories
          ? _value.advisories
          : advisories // ignore: cast_nullable_to_non_nullable
              as List<Advisory>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PredictionModelImplCopyWith<$Res>
    implements $PredictionModelCopyWith<$Res> {
  factory _$$PredictionModelImplCopyWith(_$PredictionModelImpl value,
          $Res Function(_$PredictionModelImpl) then) =
      __$$PredictionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String timestamp, List<Advisory> advisories});
}

/// @nodoc
class __$$PredictionModelImplCopyWithImpl<$Res>
    extends _$PredictionModelCopyWithImpl<$Res, _$PredictionModelImpl>
    implements _$$PredictionModelImplCopyWith<$Res> {
  __$$PredictionModelImplCopyWithImpl(
      _$PredictionModelImpl _value, $Res Function(_$PredictionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PredictionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? advisories = null,
  }) {
    return _then(_$PredictionModelImpl(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      advisories: null == advisories
          ? _value._advisories
          : advisories // ignore: cast_nullable_to_non_nullable
              as List<Advisory>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PredictionModelImpl implements _PredictionModel {
  const _$PredictionModelImpl(
      {required this.timestamp, required final List<Advisory> advisories})
      : _advisories = advisories;

  factory _$PredictionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PredictionModelImplFromJson(json);

  @override
  final String timestamp;
  final List<Advisory> _advisories;
  @override
  List<Advisory> get advisories {
    if (_advisories is EqualUnmodifiableListView) return _advisories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_advisories);
  }

  @override
  String toString() {
    return 'PredictionModel(timestamp: $timestamp, advisories: $advisories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PredictionModelImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            const DeepCollectionEquality()
                .equals(other._advisories, _advisories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, timestamp, const DeepCollectionEquality().hash(_advisories));

  /// Create a copy of PredictionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PredictionModelImplCopyWith<_$PredictionModelImpl> get copyWith =>
      __$$PredictionModelImplCopyWithImpl<_$PredictionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PredictionModelImplToJson(
      this,
    );
  }
}

abstract class _PredictionModel implements PredictionModel {
  const factory _PredictionModel(
      {required final String timestamp,
      required final List<Advisory> advisories}) = _$PredictionModelImpl;

  factory _PredictionModel.fromJson(Map<String, dynamic> json) =
      _$PredictionModelImpl.fromJson;

  @override
  String get timestamp;
  @override
  List<Advisory> get advisories;

  /// Create a copy of PredictionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PredictionModelImplCopyWith<_$PredictionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Advisory _$AdvisoryFromJson(Map<String, dynamic> json) {
  return _Advisory.fromJson(json);
}

/// @nodoc
mixin _$Advisory {
  String get area => throw _privateConstructorUsedError;
  String get risk => throw _privateConstructorUsedError;
  @JsonKey(name: 'hsi_now')
  double get hsiNow => throw _privateConstructorUsedError;
  @JsonKey(name: 'hsi_2h')
  double get hsi2h => throw _privateConstructorUsedError;
  double get confidence => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  /// Serializes this Advisory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Advisory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdvisoryCopyWith<Advisory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvisoryCopyWith<$Res> {
  factory $AdvisoryCopyWith(Advisory value, $Res Function(Advisory) then) =
      _$AdvisoryCopyWithImpl<$Res, Advisory>;
  @useResult
  $Res call(
      {String area,
      String risk,
      @JsonKey(name: 'hsi_now') double hsiNow,
      @JsonKey(name: 'hsi_2h') double hsi2h,
      double confidence,
      String message});
}

/// @nodoc
class _$AdvisoryCopyWithImpl<$Res, $Val extends Advisory>
    implements $AdvisoryCopyWith<$Res> {
  _$AdvisoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Advisory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? area = null,
    Object? risk = null,
    Object? hsiNow = null,
    Object? hsi2h = null,
    Object? confidence = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      risk: null == risk
          ? _value.risk
          : risk // ignore: cast_nullable_to_non_nullable
              as String,
      hsiNow: null == hsiNow
          ? _value.hsiNow
          : hsiNow // ignore: cast_nullable_to_non_nullable
              as double,
      hsi2h: null == hsi2h
          ? _value.hsi2h
          : hsi2h // ignore: cast_nullable_to_non_nullable
              as double,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdvisoryImplCopyWith<$Res>
    implements $AdvisoryCopyWith<$Res> {
  factory _$$AdvisoryImplCopyWith(
          _$AdvisoryImpl value, $Res Function(_$AdvisoryImpl) then) =
      __$$AdvisoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String area,
      String risk,
      @JsonKey(name: 'hsi_now') double hsiNow,
      @JsonKey(name: 'hsi_2h') double hsi2h,
      double confidence,
      String message});
}

/// @nodoc
class __$$AdvisoryImplCopyWithImpl<$Res>
    extends _$AdvisoryCopyWithImpl<$Res, _$AdvisoryImpl>
    implements _$$AdvisoryImplCopyWith<$Res> {
  __$$AdvisoryImplCopyWithImpl(
      _$AdvisoryImpl _value, $Res Function(_$AdvisoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of Advisory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? area = null,
    Object? risk = null,
    Object? hsiNow = null,
    Object? hsi2h = null,
    Object? confidence = null,
    Object? message = null,
  }) {
    return _then(_$AdvisoryImpl(
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      risk: null == risk
          ? _value.risk
          : risk // ignore: cast_nullable_to_non_nullable
              as String,
      hsiNow: null == hsiNow
          ? _value.hsiNow
          : hsiNow // ignore: cast_nullable_to_non_nullable
              as double,
      hsi2h: null == hsi2h
          ? _value.hsi2h
          : hsi2h // ignore: cast_nullable_to_non_nullable
              as double,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdvisoryImpl implements _Advisory {
  const _$AdvisoryImpl(
      {required this.area,
      required this.risk,
      @JsonKey(name: 'hsi_now') required this.hsiNow,
      @JsonKey(name: 'hsi_2h') required this.hsi2h,
      required this.confidence,
      required this.message});

  factory _$AdvisoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdvisoryImplFromJson(json);

  @override
  final String area;
  @override
  final String risk;
  @override
  @JsonKey(name: 'hsi_now')
  final double hsiNow;
  @override
  @JsonKey(name: 'hsi_2h')
  final double hsi2h;
  @override
  final double confidence;
  @override
  final String message;

  @override
  String toString() {
    return 'Advisory(area: $area, risk: $risk, hsiNow: $hsiNow, hsi2h: $hsi2h, confidence: $confidence, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdvisoryImpl &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.risk, risk) || other.risk == risk) &&
            (identical(other.hsiNow, hsiNow) || other.hsiNow == hsiNow) &&
            (identical(other.hsi2h, hsi2h) || other.hsi2h == hsi2h) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, area, risk, hsiNow, hsi2h, confidence, message);

  /// Create a copy of Advisory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdvisoryImplCopyWith<_$AdvisoryImpl> get copyWith =>
      __$$AdvisoryImplCopyWithImpl<_$AdvisoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdvisoryImplToJson(
      this,
    );
  }
}

abstract class _Advisory implements Advisory {
  const factory _Advisory(
      {required final String area,
      required final String risk,
      @JsonKey(name: 'hsi_now') required final double hsiNow,
      @JsonKey(name: 'hsi_2h') required final double hsi2h,
      required final double confidence,
      required final String message}) = _$AdvisoryImpl;

  factory _Advisory.fromJson(Map<String, dynamic> json) =
      _$AdvisoryImpl.fromJson;

  @override
  String get area;
  @override
  String get risk;
  @override
  @JsonKey(name: 'hsi_now')
  double get hsiNow;
  @override
  @JsonKey(name: 'hsi_2h')
  double get hsi2h;
  @override
  double get confidence;
  @override
  String get message;

  /// Create a copy of Advisory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdvisoryImplCopyWith<_$AdvisoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
