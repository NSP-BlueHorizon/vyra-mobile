import 'package:freezed_annotation/freezed_annotation.dart';

part 'simulation_model.freezed.dart';
part 'simulation_model.g.dart';

@freezed
class SimulationModel with _$SimulationModel {
  const factory SimulationModel({
    required SimulationImpact impact,
    required String explain,
  }) = _SimulationModel;

  factory SimulationModel.fromJson(Map<String, dynamic> json) =>
      _$SimulationModelFromJson(json);
}

@freezed
class SimulationImpact with _$SimulationImpact {
  const factory SimulationImpact({
    @JsonKey(name: 'hsi_reduction_pct') required double hsiReductionPct,
    @JsonKey(name: 'area_affected_km2') required double areaAffectedKm2,
    @JsonKey(name: 'thermal_improvement') required double thermalImprovement,
    @JsonKey(name: 'air_improvement') required double airImprovement,
    @JsonKey(name: 'cells_count') required int cellsCount,
  }) = _SimulationImpact;

  factory SimulationImpact.fromJson(Map<String, dynamic> json) =>
      _$SimulationImpactFromJson(json);
}
