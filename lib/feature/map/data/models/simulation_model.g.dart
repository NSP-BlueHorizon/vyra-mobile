// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simulation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SimulationModelImpl _$$SimulationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SimulationModelImpl(
      impact: SimulationImpact.fromJson(json['impact'] as Map<String, dynamic>),
      explain: json['explain'] as String,
    );

Map<String, dynamic> _$$SimulationModelImplToJson(
        _$SimulationModelImpl instance) =>
    <String, dynamic>{
      'impact': instance.impact,
      'explain': instance.explain,
    };

_$SimulationImpactImpl _$$SimulationImpactImplFromJson(
        Map<String, dynamic> json) =>
    _$SimulationImpactImpl(
      hsiReductionPct: (json['hsi_reduction_pct'] as num).toDouble(),
      areaAffectedKm2: (json['area_affected_km2'] as num).toDouble(),
      thermalImprovement: (json['thermal_improvement'] as num).toDouble(),
      airImprovement: (json['air_improvement'] as num).toDouble(),
      cellsCount: (json['cells_count'] as num).toInt(),
    );

Map<String, dynamic> _$$SimulationImpactImplToJson(
        _$SimulationImpactImpl instance) =>
    <String, dynamic>{
      'hsi_reduction_pct': instance.hsiReductionPct,
      'area_affected_km2': instance.areaAffectedKm2,
      'thermal_improvement': instance.thermalImprovement,
      'air_improvement': instance.airImprovement,
      'cells_count': instance.cellsCount,
    };
