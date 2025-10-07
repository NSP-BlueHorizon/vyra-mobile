import 'package:freezed_annotation/freezed_annotation.dart';

part 'route_model.freezed.dart';
part 'route_model.g.dart';

@freezed
class RouteModel with _$RouteModel {
  const factory RouteModel({
    required RouteDetail fastest,
    required RouteDetail healthiest,
    required RouteBreakdown breakdown,
    required String explain,
    @JsonKey(name: 'delta_exposure_pct') required double? deltaExposurePct,
    @JsonKey(name: 'alternatives_count') required int? alternativesCount,
  }) = _RouteModel;

  factory RouteModel.fromJson(Map<String, dynamic> json) =>
      _$RouteModelFromJson(json);
}

@freezed
class RouteDetail with _$RouteDetail {
  const factory RouteDetail({
    @JsonKey(name: 'eta_min') required double? etaMin,
    @JsonKey(name: 'distance_km') required double? distanceKm,
    @JsonKey(name: 'exposure_avg') required double? exposureAvg,
    @JsonKey(name: 'hsi_avg') required double? hsiAvg,
    required GeoJsonData geojson,
  }) = _RouteDetail;

  factory RouteDetail.fromJson(Map<String, dynamic> json) =>
      _$RouteDetailFromJson(json);
}

@freezed
class GeoJsonData with _$GeoJsonData {
  const factory GeoJsonData({
    required String type,
    required List<GeoJsonFeature> features,
  }) = _GeoJsonData;

  factory GeoJsonData.fromJson(Map<String, dynamic> json) =>
      _$GeoJsonDataFromJson(json);
}

@freezed
class GeoJsonFeature with _$GeoJsonFeature {
  const factory GeoJsonFeature({
    required String type,
    required GeoJsonGeometry geometry,
    required Map<String, dynamic> properties,
  }) = _GeoJsonFeature;

  factory GeoJsonFeature.fromJson(Map<String, dynamic> json) =>
      _$GeoJsonFeatureFromJson(json);
}

@freezed
class GeoJsonGeometry with _$GeoJsonGeometry {
  const factory GeoJsonGeometry({
    required String type,
    required List<List<double>> coordinates,
  }) = _GeoJsonGeometry;

  factory GeoJsonGeometry.fromJson(Map<String, dynamic> json) =>
      _$GeoJsonGeometryFromJson(json);
}

@freezed
class RouteBreakdown with _$RouteBreakdown {
  const factory RouteBreakdown({
    required double thermal,
    required double air,
    required double rain,
  }) = _RouteBreakdown;

  factory RouteBreakdown.fromJson(Map<String, dynamic> json) =>
      _$RouteBreakdownFromJson(json);
}
