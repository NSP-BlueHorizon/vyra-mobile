// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RouteModelImpl _$$RouteModelImplFromJson(Map<String, dynamic> json) =>
    _$RouteModelImpl(
      fastest: RouteDetail.fromJson(json['fastest'] as Map<String, dynamic>),
      healthiest:
          RouteDetail.fromJson(json['healthiest'] as Map<String, dynamic>),
      breakdown:
          RouteBreakdown.fromJson(json['breakdown'] as Map<String, dynamic>),
      explain: json['explain'] as String,
      deltaExposurePct: (json['delta_exposure_pct'] as num?)?.toDouble(),
      alternativesCount: (json['alternatives_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$RouteModelImplToJson(_$RouteModelImpl instance) =>
    <String, dynamic>{
      'fastest': instance.fastest,
      'healthiest': instance.healthiest,
      'breakdown': instance.breakdown,
      'explain': instance.explain,
      'delta_exposure_pct': instance.deltaExposurePct,
      'alternatives_count': instance.alternativesCount,
    };

_$RouteDetailImpl _$$RouteDetailImplFromJson(Map<String, dynamic> json) =>
    _$RouteDetailImpl(
      etaMin: (json['eta_min'] as num?)?.toDouble(),
      distanceKm: (json['distance_km'] as num?)?.toDouble(),
      exposureAvg: (json['exposure_avg'] as num?)?.toDouble(),
      hsiAvg: (json['hsi_avg'] as num?)?.toDouble(),
      geojson: GeoJsonData.fromJson(json['geojson'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RouteDetailImplToJson(_$RouteDetailImpl instance) =>
    <String, dynamic>{
      'eta_min': instance.etaMin,
      'distance_km': instance.distanceKm,
      'exposure_avg': instance.exposureAvg,
      'hsi_avg': instance.hsiAvg,
      'geojson': instance.geojson,
    };

_$GeoJsonDataImpl _$$GeoJsonDataImplFromJson(Map<String, dynamic> json) =>
    _$GeoJsonDataImpl(
      type: json['type'] as String,
      features: (json['features'] as List<dynamic>)
          .map((e) => GeoJsonFeature.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GeoJsonDataImplToJson(_$GeoJsonDataImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'features': instance.features,
    };

_$GeoJsonFeatureImpl _$$GeoJsonFeatureImplFromJson(Map<String, dynamic> json) =>
    _$GeoJsonFeatureImpl(
      type: json['type'] as String,
      geometry:
          GeoJsonGeometry.fromJson(json['geometry'] as Map<String, dynamic>),
      properties: json['properties'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$GeoJsonFeatureImplToJson(
        _$GeoJsonFeatureImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'geometry': instance.geometry,
      'properties': instance.properties,
    };

_$GeoJsonGeometryImpl _$$GeoJsonGeometryImplFromJson(
        Map<String, dynamic> json) =>
    _$GeoJsonGeometryImpl(
      type: json['type'] as String,
      coordinates: (json['coordinates'] as List<dynamic>)
          .map((e) =>
              (e as List<dynamic>).map((e) => (e as num).toDouble()).toList())
          .toList(),
    );

Map<String, dynamic> _$$GeoJsonGeometryImplToJson(
        _$GeoJsonGeometryImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
    };

_$RouteBreakdownImpl _$$RouteBreakdownImplFromJson(Map<String, dynamic> json) =>
    _$RouteBreakdownImpl(
      thermal: (json['thermal'] as num).toDouble(),
      air: (json['air'] as num).toDouble(),
      rain: (json['rain'] as num).toDouble(),
    );

Map<String, dynamic> _$$RouteBreakdownImplToJson(
        _$RouteBreakdownImpl instance) =>
    <String, dynamic>{
      'thermal': instance.thermal,
      'air': instance.air,
      'rain': instance.rain,
    };
