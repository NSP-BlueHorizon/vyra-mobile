import 'package:either_dart/either.dart';
import 'package:vyra/feature/auth/data/data_providers/auth_remote_data_provider.dart';
import 'package:vyra/feature/profile/data/models/user_model.dart';
import 'package:vyra/injection_container.dart';

class AuthRepository {
  final AuthRemoteDataProvider _remoteDataProvider =
      sl.get<AuthRemoteDataProvider>();

  Future<Either<String, Map<String, dynamic>>> signin({
    required String username,
    required String password,
  }) async {
    final response = await _remoteDataProvider.signin(
      username: username,
      password: password,
    );
    return response.fold((error) => Left(error), (response) => Right(response));
  }

  Future<Either<String, Map<String, dynamic>>> signup({
    required String username,
    required String fullName,
    required String birthDate,
    required String email,
    required String password,
  }) async {
    final response = await _remoteDataProvider.signup(
      username: username,
      fullName: fullName,
      birthDate: birthDate,
      email: email,
      password: password,
    );
    return response.fold((error) => Left(error), (response) => Right(response));
  }

  Future<Either<String, Map<String, dynamic>>> refreshToken({
    required String refreshToken,
  }) async {
    final response = await _remoteDataProvider.refreshToken(
      refreshToken: refreshToken,
    );
    return response;
  }

  Future<Either<String, UserModel>> getUserData({
    required String accessToken,
  }) async {
    final response = await _remoteDataProvider.getUserData(
      accessToken: accessToken,
    );
    return response.fold(
      (error) => Left(error),
      (response) => Right(UserModel.fromJson(response)),
    );
  }
}
