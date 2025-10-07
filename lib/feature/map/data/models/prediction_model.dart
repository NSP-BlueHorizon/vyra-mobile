import 'package:freezed_annotation/freezed_annotation.dart';

part 'prediction_model.freezed.dart';
part 'prediction_model.g.dart';

@freezed
class PredictionModel with _$PredictionModel {
  const factory PredictionModel({
    required String timestamp,
    required List<Advisory> advisories,
  }) = _PredictionModel;

  factory PredictionModel.fromJson(Map<String, dynamic> json) =>
      _$PredictionModelFromJson(json);
}

@freezed
class Advisory with _$Advisory {
  const factory Advisory({
    required String area,
    required String risk,
    @JsonKey(name: 'hsi_now') required double hsiNow,
    @JsonKey(name: 'hsi_2h') required double hsi2h,
    required double confidence,
    required String message,
  }) = _Advisory;

  factory Advisory.fromJson(Map<String, dynamic> json) =>
      _$AdvisoryFromJson(json);
}
