import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vyra/feature/profile/data/models/user_model.dart';

part 'profile_state.freezed.dart';

enum ProfileStatus { initial, loading, loaded, failure }

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(ProfileStatus.initial) ProfileStatus status,
    UserModel? user,
    String? error,
  }) = _ProfileState;
}
