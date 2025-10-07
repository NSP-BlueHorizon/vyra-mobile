// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'heatmap_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HeatmapModelImpl _$$HeatmapModelImplFromJson(Map<String, dynamic> json) =>
    _$HeatmapModelImpl(
      type: json['type'] as String,
      features: (json['features'] as List<dynamic>)
          .map((e) => HeatmapFeature.fromJson(e as Map<String, dynamic>))
          .toList(),
      metadata:
          HeatmapMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HeatmapModelImplToJson(_$HeatmapModelImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'features': instance.features,
      'metadata': instance.metadata,
    };

_$HeatmapFeatureImpl _$$HeatmapFeatureImplFromJson(Map<String, dynamic> json) =>
    _$HeatmapFeatureImpl(
      type: json['type'] as String,
      geometry:
          HeatmapGeometry.fromJson(json['geometry'] as Map<String, dynamic>),
      properties: HeatmapProperties.fromJson(
          json['properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HeatmapFeatureImplToJson(
        _$HeatmapFeatureImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'geometry': instance.geometry,
      'properties': instance.properties,
    };

_$HeatmapGeometryImpl _$$HeatmapGeometryImplFromJson(
        Map<String, dynamic> json) =>
    _$HeatmapGeometryImpl(
      type: json['type'] as String,
      coordinates: (json['coordinates'] as List<dynamic>)
          .map((e) => (e as List<dynamic>)
              .map((e) => (e as List<dynamic>)
                  .map((e) => (e as num).toDouble())
                  .toList())
              .toList())
          .toList(),
    );

Map<String, dynamic> _$$HeatmapGeometryImplToJson(
        _$HeatmapGeometryImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
    };

_$HeatmapPropertiesImpl _$$HeatmapPropertiesImplFromJson(
        Map<String, dynamic> json) =>
    _$HeatmapPropertiesImpl(
      hsi: (json['hsi'] as num).toDouble(),
      riskLevel: json['risk_level'] as String,
      thermal: (json['thermal'] as num).toDouble(),
      air: (json['air'] as num).toDouble(),
      rain: (json['rain'] as num).toDouble(),
    );

Map<String, dynamic> _$$HeatmapPropertiesImplToJson(
        _$HeatmapPropertiesImpl instance) =>
    <String, dynamic>{
      'hsi': instance.hsi,
      'risk_level': instance.riskLevel,
      'thermal': instance.thermal,
      'air': instance.air,
      'rain': instance.rain,
    };

_$HeatmapMetadataImpl _$$HeatmapMetadataImplFromJson(
        Map<String, dynamic> json) =>
    _$HeatmapMetadataImpl(
      season: json['season'] as String,
      resolution: (json['resolution'] as num).toInt(),
      gridCells: (json['grid_cells'] as num).toInt(),
      stats: HeatmapStats.fromJson(json['stats'] as Map<String, dynamic>),
      timestamp: json['timestamp'] as String,
    );

Map<String, dynamic> _$$HeatmapMetadataImplToJson(
        _$HeatmapMetadataImpl instance) =>
    <String, dynamic>{
      'season': instance.season,
      'resolution': instance.resolution,
      'grid_cells': instance.gridCells,
      'stats': instance.stats,
      'timestamp': instance.timestamp,
    };

_$HeatmapStatsImpl _$$HeatmapStatsImplFromJson(Map<String, dynamic> json) =>
    _$HeatmapStatsImpl(
      minHsi: (json['min_hsi'] as num).toDouble(),
      maxHsi: (json['max_hsi'] as num).toDouble(),
      avgHsi: (json['avg_hsi'] as num).toDouble(),
    );

Map<String, dynamic> _$$HeatmapStatsImplToJson(_$HeatmapStatsImpl instance) =>
    <String, dynamic>{
      'min_hsi': instance.minHsi,
      'max_hsi': instance.maxHsi,
      'avg_hsi': instance.avgHsi,
    };
