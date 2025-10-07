import 'package:either_dart/either.dart';
import 'package:vyra/feature/map/data/data_providers/map_remote_data_provider.dart';
import 'package:vyra/feature/map/data/models/heatmap_model.dart';
import 'package:vyra/feature/map/data/models/metadata_model.dart';
import 'package:vyra/feature/map/data/models/prediction_model.dart';
import 'package:vyra/feature/map/data/models/route_model.dart';
import 'package:vyra/feature/map/data/models/simulation_model.dart';
import 'package:vyra/injection_container.dart';

class MapRepository {
  final MapRemoteDataProvider _remoteDataProvider = sl<MapRemoteDataProvider>();

  Future<Either<String, RouteModel>> getRoute({
    required String accessToken,
    required List<double> origin,
    required List<double> destination,
    required String mode,
    required String season,
  }) async {
    final result = await _remoteDataProvider.getRoute(
      accessToken: accessToken,
      origin: origin,
      destination: destination,
      mode: mode,
      season: season,
    );

    return result.fold((error) => Left(error), (response) {
      try {
        final routeModel = RouteModel.fromJson(response);
        return Right(routeModel);
      } catch (e) {
        return Left('Failed to parse route data: ${e.toString()}');
      }
    });
  }

  Future<Either<String, MetadataModel>> getMetadata({
    required String accessToken,
  }) async {
    return await _remoteDataProvider.getMetadata(accessToken: accessToken);
  }

  Future<Either<String, PredictionModel>> getPredictions({
    required String accessToken,
  }) async {
    return await _remoteDataProvider.getPredictions(accessToken: accessToken);
  }

  Future<Either<String, SimulationModel>> simulateTreePlanting({
    required String accessToken,
    required List<List<int>> cells,
    required double treeFactor,
  }) async {
    return await _remoteDataProvider.simulateTreePlanting(
      accessToken: accessToken,
      cells: cells,
      treeFactor: treeFactor,
    );
  }

  Future<Either<String, HeatmapModel>> getHeatmap({
    required String accessToken,
    required String season,
    required int resolution,
  }) async {
    return await _remoteDataProvider.getHeatmap(
      accessToken: accessToken,
      season: season,
      resolution: resolution,
    );
  }
}
