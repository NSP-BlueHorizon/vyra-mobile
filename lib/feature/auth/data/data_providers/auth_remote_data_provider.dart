import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:vyra/core/utils/constants/constants.dart';
import 'package:vyra/injection_container.dart';

class AuthRemoteDataProvider {
  final Dio _dio = sl.get<Dio>();

  Future<Either<String, Map<String, dynamic>>> signin({
    required String username,
    required String password,
  }) async {
    try {
      final response = await _dio.post(
        UrlConstants.signinUrl,
        data: {'username': username, 'password': password},
        options: Options(headers: {'Content-Type': 'application/json'}),
      );
      return Right(response.data);
    } catch (e) {
      return Left('Signin failed: ${e.toString()}');
    }
  }

  Future<Either<String, Map<String, dynamic>>> signup({
    required String username,
    required String fullName,
    required String birthDate,
    required String email,
    required String password,
  }) async {
    try {
      final response = await _dio.post(
        UrlConstants.signupUrl,
        data: {
          'username': username,
          'full_name': fullName,
          'birth_date': birthDate,
          'email': email,
          'password': password,
        },
        options: Options(headers: {'Content-Type': 'application/json'}),
      );
      return Right(response.data);
    } catch (e) {
      return Left('Signup failed: ${e.toString()}');
    }
  }

  Future<Either<String, Map<String, dynamic>>> refreshToken({
    required String refreshToken,
  }) async {
    try {
      final response = await _dio.post(
        UrlConstants.refreshTokenUrl,
        data: {'refresh_token': refreshToken},
        options: Options(headers: {'Content-Type': 'application/json'}),
      );
      return Right(response.data);
    } catch (e) {
      return Left('Token refresh failed: ${e.toString()}');
    }
  }

  Future<Either<String, Map<String, dynamic>>> getUserData({
    required String accessToken,
  }) async {
    try {
      final response = await _dio.get(
        UrlConstants.getUserDataUrl,
        options: Options(headers: {'Authorization': 'Bearer $accessToken'}),
      );
      return Right(response.data);
    } catch (e) {
      return Left('Get user data failed: ${e.toString()}');
    }
  }
}
