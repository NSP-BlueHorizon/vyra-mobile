import 'package:either_dart/either.dart';
import 'package:vyra/feature/profile/data/data_providers/profile_remote_data_provider.dart';
import 'package:vyra/feature/profile/data/models/user_model.dart';
import 'package:vyra/injection_container.dart';

class ProfileRepository {
  final ProfileRemoteDataProvider _remoteDataProvider =
      sl.get<ProfileRemoteDataProvider>();

  Future<Either<String, UserModel>> getUserProfile({
    required String accessToken,
  }) async {
    final response = await _remoteDataProvider.getUserProfile(
      accessToken: accessToken,
    );
    return response.fold(
      (error) => Left(error),
      (response) => Right(UserModel.fromJson(response)),
    );
  }
}
