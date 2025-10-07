import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:vyra/feature/auth/data/repositories/auth_repository.dart';
import 'package:vyra/injection_container.dart';

import 'auth_state.dart';

class AuthCubit extends HydratedCubit<AuthState> {
  final AuthRepository _authRepository = sl.get<AuthRepository>();

  AuthCubit() : super(AuthState());

  Future<void> signin({
    required String username,
    required String password,
  }) async {
    emit(state.copyWith(status: AuthStatus.loading));

    final response = await _authRepository.signin(
      username: username,
      password: password,
    );

    response.fold(
      (error) {
        emit(state.copyWith(status: AuthStatus.failure, error: error));
      },
      (response) async {
        final accessToken = response['access_token'];
        final refreshToken = response['refresh_token'];

        emit(
          state.copyWith(
            status: AuthStatus.authenticated,
            refreshToken: refreshToken,
            accessToken: accessToken,
          ),
        );
      },
    );
  }

  Future<void> signup({
    required String username,
    required String fullName,
    required String birthDate,
    required String email,
    required String password,
  }) async {
    emit(state.copyWith(status: AuthStatus.loading));

    final response = await _authRepository.signup(
      username: username,
      fullName: fullName,
      birthDate: birthDate,
      email: email,
      password: password,
    );

    response.fold(
      (error) {
        emit(state.copyWith(status: AuthStatus.failure, error: error));
      },
      (response) async {
        final accessToken = response['access_token'];
        final refreshToken = response['refresh_token'];
        final userDataResult = await _authRepository.getUserData(
          accessToken: accessToken,
        );

        userDataResult.fold(
          (error) {
            emit(state.copyWith(status: AuthStatus.failure, error: error));
          },
          (user) async {
            emit(
              state.copyWith(
                status: AuthStatus.authenticated,
                refreshToken: refreshToken,
                accessToken: accessToken,
              ),
            );
          },
        );
      },
    );
  }

  Future<void> validateAndRefreshToken() async {
    if (state.refreshToken == null) {
      emit(state.copyWith(status: AuthStatus.unauthenticated));
    } else {
      final response = await _authRepository.refreshToken(
        refreshToken: state.refreshToken!,
      );

      response.fold(
        (error) {
          emit(
            state.copyWith(status: AuthStatus.unauthenticated, error: error),
          );
        },
        (response) async {
          final refreshToken = response['refresh_token'];
          final accessToken = response['access_token'];
          emit(
            state.copyWith(
              status: AuthStatus.authenticated,
              refreshToken: refreshToken,
              accessToken: accessToken,
            ),
          );
        },
      );
    }
  }

  Future<void> signout() async {
    emit(state.copyWith(status: AuthStatus.signout));
  }

  @override
  AuthState? fromJson(Map<String, dynamic> json) {
    final refreshToken = json['refreshToken'];
    if (refreshToken == null) {
      return const AuthState(status: AuthStatus.unauthenticated);
    } else {
      return AuthState(
        refreshToken: refreshToken,
        status: AuthStatus.authenticated,
      );
    }
  }

  @override
  Map<String, dynamic>? toJson(AuthState state) {
    if (state.status == AuthStatus.authenticated) {
      return {'refreshToken': state.refreshToken};
    }
    if (state.status == AuthStatus.signout) {
      return {};
    }
    return null;
  }
}
