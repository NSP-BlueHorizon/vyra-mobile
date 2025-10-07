import 'package:freezed_annotation/freezed_annotation.dart';

part 'heatmap_model.freezed.dart';
part 'heatmap_model.g.dart';

@freezed
class HeatmapModel with _$HeatmapModel {
  const factory HeatmapModel({
    required String type,
    required List<HeatmapFeature> features,
    required HeatmapMetadata metadata,
  }) = _HeatmapModel;

  factory HeatmapModel.fromJson(Map<String, dynamic> json) =>
      _$HeatmapModelFromJson(json);
}

@freezed
class HeatmapFeature with _$HeatmapFeature {
  const factory HeatmapFeature({
    required String type,
    required HeatmapGeometry geometry,
    required HeatmapProperties properties,
  }) = _HeatmapFeature;

  factory HeatmapFeature.fromJson(Map<String, dynamic> json) =>
      _$HeatmapFeatureFromJson(json);
}

@freezed
class HeatmapGeometry with _$HeatmapGeometry {
  const factory HeatmapGeometry({
    required String type,
    required List<List<List<double>>> coordinates,
  }) = _HeatmapGeometry;

  factory HeatmapGeometry.fromJson(Map<String, dynamic> json) =>
      _$HeatmapGeometryFromJson(json);
}

@freezed
class HeatmapProperties with _$HeatmapProperties {
  const factory HeatmapProperties({
    required double hsi,
    @JsonKey(name: 'risk_level') required String riskLevel,
    required double thermal,
    required double air,
    required double rain,
  }) = _HeatmapProperties;

  factory HeatmapProperties.fromJson(Map<String, dynamic> json) =>
      _$HeatmapPropertiesFromJson(json);
}

@freezed
class HeatmapMetadata with _$HeatmapMetadata {
  const factory HeatmapMetadata({
    required String season,
    required int resolution,
    @JsonKey(name: 'grid_cells') required int gridCells,
    required HeatmapStats stats,
    required String timestamp,
  }) = _HeatmapMetadata;

  factory HeatmapMetadata.fromJson(Map<String, dynamic> json) =>
      _$HeatmapMetadataFromJson(json);
}

@freezed
class HeatmapStats with _$HeatmapStats {
  const factory HeatmapStats({
    @JsonKey(name: 'min_hsi') required double minHsi,
    @JsonKey(name: 'max_hsi') required double maxHsi,
    @JsonKey(name: 'avg_hsi') required double avgHsi,
  }) = _HeatmapStats;

  factory HeatmapStats.fromJson(Map<String, dynamic> json) =>
      _$HeatmapStatsFromJson(json);
}
