import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vyra/core/utils/enums/routes/route_enum.dart';
import 'package:vyra/core/utils/routes/route_generator.dart';
import 'package:vyra/feature/auth/presentation/cubits/auth_cubit.dart';
import 'package:vyra/feature/auth/presentation/cubits/auth_state.dart';
import 'package:vyra/feature/map/presentation/cubits/map_cubit.dart';
import 'package:vyra/feature/profile/presentation/cubits/profile_cubit.dart';
import 'package:vyra/feature/profile/presentation/cubits/profile_state.dart';

import '../../utils/constants/constants.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _initializeApp();
  }

  Future<void> _initializeApp() async {
    await Future.delayed(const Duration(seconds: 2), () {
      context.read<AuthCubit>().validateAndRefreshToken();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state.status == AuthStatus.authenticated) {
              context.read<ProfileCubit>().getUserData(
                accessToken: state.accessToken!,
              );
            } else if (state.status == AuthStatus.unauthenticated) {
              RouteGenerator.replaceWith(Routes.language);
            }
          },
        ),
        BlocListener<ProfileCubit, ProfileState>(
          listener: (context, state) async {
            if (state.status == ProfileStatus.loaded) {
              final hasLocationPermission =
                  await context
                      .read<MapCubit>()
                      .checkLocationPermissionStatus();

              if (hasLocationPermission) {
                await context.read<MapCubit>().getCurrentLocation();
                RouteGenerator.replaceWith(Routes.home);
              } else {
                RouteGenerator.replaceWith(Routes.language);
              }
            }
          },
        ),
      ],
      child: Scaffold(
        body: Center(
          child: Image.asset(AssetConstants.logo, fit: BoxFit.cover),
        ),
      ),
    );
  }
}
