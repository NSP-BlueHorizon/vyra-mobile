// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prediction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PredictionModelImpl _$$PredictionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PredictionModelImpl(
      timestamp: json['timestamp'] as String,
      advisories: (json['advisories'] as List<dynamic>)
          .map((e) => Advisory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PredictionModelImplToJson(
        _$PredictionModelImpl instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'advisories': instance.advisories,
    };

_$AdvisoryImpl _$$AdvisoryImplFromJson(Map<String, dynamic> json) =>
    _$AdvisoryImpl(
      area: json['area'] as String,
      risk: json['risk'] as String,
      hsiNow: (json['hsi_now'] as num).toDouble(),
      hsi2h: (json['hsi_2h'] as num).toDouble(),
      confidence: (json['confidence'] as num).toDouble(),
      message: json['message'] as String,
    );

Map<String, dynamic> _$$AdvisoryImplToJson(_$AdvisoryImpl instance) =>
    <String, dynamic>{
      'area': instance.area,
      'risk': instance.risk,
      'hsi_now': instance.hsiNow,
      'hsi_2h': instance.hsi2h,
      'confidence': instance.confidence,
      'message': instance.message,
    };
