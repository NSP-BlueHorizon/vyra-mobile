import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:vyra/core/utils/constants/constants.dart';
import 'package:vyra/feature/map/data/models/heatmap_model.dart';
import 'package:vyra/feature/map/data/models/metadata_model.dart';
import 'package:vyra/feature/map/data/models/prediction_model.dart';
import 'package:vyra/feature/map/data/models/simulation_model.dart';
import 'package:vyra/injection_container.dart';

class MapRemoteDataProvider {
  final Dio _dio = sl.get<Dio>();

  Future<Either<String, MetadataModel>> getMetadata({
    required String accessToken,
  }) async {
    try {
      final response = await _dio.get(
        UrlConstants.metaUrl,
        options: Options(headers: {'Authorization': 'Bearer $accessToken'}),
      );

      return Right(MetadataModel.fromJson(response.data));
    } catch (e) {
      return Left('Failed to fetch metadata: ${e.toString()}');
    }
  }

  Future<Either<String, Map<String, dynamic>>> getRoute({
    required String accessToken,
    required List<double> origin,
    required List<double> destination,
    required String mode,
    required String season,
  }) async {
    try {
      final response = await _dio.post(
        UrlConstants.routeComparisonUrl,
        data: {
          'origin': origin,
          'destination': destination,
          'mode': mode,
          'season': season,
        },
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer $accessToken',
          },
        ),
      );

      return Right(response.data);
    } catch (e) {
      return Left('Failed to fetch route: ${e.toString()}');
    }
  }

  Future<Either<String, PredictionModel>> getPredictions({
    required String accessToken,
  }) async {
    try {
      final response = await _dio.get(
        UrlConstants.predictUrl,
        options: Options(headers: {'Authorization': 'Bearer $accessToken'}),
      );

      return Right(PredictionModel.fromJson(response.data));
    } catch (e) {
      return Left('Failed to fetch predictions: ${e.toString()}');
    }
  }

  Future<Either<String, SimulationModel>> simulateTreePlanting({
    required String accessToken,
    required List<List<int>> cells,
    required double treeFactor,
  }) async {
    try {
      final response = await _dio.post(
        UrlConstants.simulateUrl,
        data: {'cells': cells, 'tree_factor': treeFactor},
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer $accessToken',
          },
        ),
      );

      return Right(SimulationModel.fromJson(response.data));
    } catch (e) {
      return Left('Failed to simulate tree planting: ${e.toString()}');
    }
  }

  Future<Either<String, HeatmapModel>> getHeatmap({
    required String accessToken,
    required String season,
    required int resolution,
  }) async {
    try {
      final response = await _dio.post(
        UrlConstants.heatmapUrl,
        data: {'season': season, 'resolution': resolution},
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer $accessToken',
          },
        ),
      );

      return Right(HeatmapModel.fromJson(response.data));
    } catch (e) {
      return Left('Failed to fetch heatmap: ${e.toString()}');
    }
  }
}
