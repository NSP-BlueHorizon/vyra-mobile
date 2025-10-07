// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metadata_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MetadataModelImpl _$$MetadataModelImplFromJson(Map<String, dynamic> json) =>
    _$MetadataModelImpl(
      city: json['city'] as String,
      aoiBbox: (json['aoi_bbox'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      layers: (json['layers'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, LayerInfo.fromJson(e as Map<String, dynamic>)),
      ),
      weights: (json['weights'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      season: json['season'] as String,
    );

Map<String, dynamic> _$$MetadataModelImplToJson(_$MetadataModelImpl instance) =>
    <String, dynamic>{
      'city': instance.city,
      'aoi_bbox': instance.aoiBbox,
      'layers': instance.layers,
      'weights': instance.weights,
      'season': instance.season,
    };

_$LayerInfoImpl _$$LayerInfoImplFromJson(Map<String, dynamic> json) =>
    _$LayerInfoImpl(
      src: json['src'] as String,
      timestamp: json['timestamp'] as String,
      note: json['note'] as String?,
    );

Map<String, dynamic> _$$LayerInfoImplToJson(_$LayerInfoImpl instance) =>
    <String, dynamic>{
      'src': instance.src,
      'timestamp': instance.timestamp,
      'note': instance.note,
    };
