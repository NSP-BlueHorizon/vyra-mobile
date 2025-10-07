import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vyra/feature/profile/data/repositories/profile_repository.dart';
import 'package:vyra/injection_container.dart';

import 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final ProfileRepository _profileRepository = sl.get<ProfileRepository>();

  ProfileCubit() : super(const ProfileState());

  Future<void> getUserData({required String accessToken}) async {
    emit(state.copyWith(status: ProfileStatus.loading));

    final response = await _profileRepository.getUserProfile(
      accessToken: accessToken,
    );

    response.fold(
      (error) {
        emit(state.copyWith(status: ProfileStatus.failure, error: error));
      },
      (user) {
        emit(state.copyWith(status: ProfileStatus.loaded, user: user));
      },
    );
  }
}
