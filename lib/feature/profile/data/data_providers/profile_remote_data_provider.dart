import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:vyra/core/utils/constants/url/url_constants.dart';
import 'package:vyra/injection_container.dart';

class ProfileRemoteDataProvider {
  final Dio _dio = sl.get<Dio>();

  Future<Either<String, Map<String, dynamic>>> getUserProfile({
    required String accessToken,
  }) async {
    try {
      final response = await _dio.get(
        UrlConstants.getUserDataUrl,
        options: Options(headers: {'Authorization': 'Bearer $accessToken'}),
      );
      return Right(response.data);
    } catch (e) {
      return Left('Get user profile failed: ${e.toString()}');
    }
  }
}
