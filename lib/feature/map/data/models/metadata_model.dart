import 'package:freezed_annotation/freezed_annotation.dart';

part 'metadata_model.freezed.dart';
part 'metadata_model.g.dart';

@freezed
class MetadataModel with _$MetadataModel {
  const factory MetadataModel({
    required String city,
    @JsonKey(name: 'aoi_bbox') required List<double> aoiBbox,
    required Map<String, LayerInfo> layers,
    required Map<String, double> weights,
    required String season,
  }) = _MetadataModel;

  factory MetadataModel.fromJson(Map<String, dynamic> json) =>
      _$MetadataModelFromJson(json);
}

@freezed
class LayerInfo with _$LayerInfo {
  const factory LayerInfo({
    required String src,
    required String timestamp,
    String? note,
  }) = _LayerInfo;

  factory LayerInfo.fromJson(Map<String, dynamic> json) =>
      _$LayerInfoFromJson(json);
}
