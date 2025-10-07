import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get_it/get_it.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:vyra/core/cubits/main/main_cubit.dart';
import 'package:vyra/feature/auth/data/data_providers/auth_remote_data_provider.dart';
import 'package:vyra/feature/auth/data/repositories/auth_repository.dart';
import 'package:vyra/feature/auth/presentation/cubits/auth_cubit.dart';
import 'package:vyra/feature/map/data/data_providers/map_remote_data_provider.dart';
import 'package:vyra/feature/map/data/repositories/map_repository.dart';
import 'package:vyra/feature/map/presentation/cubits/map_cubit.dart';
import 'package:vyra/feature/onboarding/presentation/cubits/onboarding_cubit.dart';
import 'package:vyra/feature/profile/data/data_providers/profile_remote_data_provider.dart';
import 'package:vyra/feature/profile/data/repositories/profile_repository.dart';
import 'package:vyra/feature/profile/presentation/cubits/profile_cubit.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  tz.initializeTimeZones();

  await dotenv.load();

  MapboxOptions.setAccessToken(dotenv.env['MAPBOX_ACCESS_TOKEN'] ?? '');

  final appDocsDir = await getApplicationDocumentsDirectory();

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: HydratedStorageDirectory(appDocsDir.path),
  );

  PackageInfo packageInfo = await PackageInfo.fromPlatform();

  sl.registerLazySingleton(() => packageInfo);

  initFeatures();
}

void initFeatures() {
  // * Dio instance
  sl.registerLazySingleton<Dio>(() => Dio());

  // * Geolocator
  sl.registerLazySingleton<GeolocatorPlatform>(
    () => GeolocatorPlatform.instance,
  );

  // * Onboarding dependencies
  sl.registerLazySingleton<OnboardingCubit>(() => OnboardingCubit());

  // * Map dependencies
  sl.registerLazySingleton<MapCubit>(() => MapCubit());

  // * Profile dependencies
  sl.registerLazySingleton<ProfileRemoteDataProvider>(
    () => ProfileRemoteDataProvider(),
  );
  sl.registerLazySingleton<ProfileRepository>(() => ProfileRepository());
  sl.registerSingleton<ProfileCubit>(ProfileCubit());

  // * Auth dependencies
  sl.registerLazySingleton<AuthRemoteDataProvider>(
    () => AuthRemoteDataProvider(),
  );
  sl.registerLazySingleton<AuthRepository>(() => AuthRepository());
  sl.registerSingleton<AuthCubit>(AuthCubit());

  // * Map dependencies
  sl.registerLazySingleton<MapRemoteDataProvider>(
    () => MapRemoteDataProvider(),
  );
  sl.registerLazySingleton<MapRepository>(() => MapRepository());

  // * Main dependencies
  sl.registerSingleton(MainCubit());
  sl.registerSingleton(MapCubit());
}
