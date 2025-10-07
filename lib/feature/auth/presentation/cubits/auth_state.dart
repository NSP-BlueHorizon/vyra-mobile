import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vyra/feature/profile/data/models/user_model.dart';

part 'auth_state.freezed.dart';

enum AuthStatus {
  initial,
  userDataLoaded,
  authenticated,
  unauthenticated,
  loading,
  failure,
  signout,
}

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    String? refreshToken,
    String? accessToken,
    @Default(AuthStatus.initial) AuthStatus status,
    UserModel? user,
    String? error,
  }) = _AuthState;
}
