import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:vyra/core/cubits/main/main_cubit.dart';
import 'package:vyra/core/pages/splash/splash_page.dart';
import 'package:vyra/core/utils/routes/route_generator.dart';
import 'package:vyra/feature/auth/presentation/cubits/auth_cubit.dart';
import 'package:vyra/feature/map/presentation/cubits/map_cubit.dart';
import 'package:vyra/feature/profile/presentation/cubits/profile_cubit.dart';
import 'package:vyra/injection_container.dart';
import 'package:vyra/l10n/app_localizations.dart';

import 'core/utils/themes/themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider.value(value: sl.get<MainCubit>()),
        BlocProvider.value(value: sl.get<MapCubit>()),
        BlocProvider.value(value: sl.get<AuthCubit>()),
        BlocProvider.value(value: sl.get<ProfileCubit>()),
      ],
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: context.watch<MainCubit>().state.themeMode,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      navigatorKey: RouteGenerator.navigatorKey,
      onGenerateRoute: (settings) => RouteGenerator.generateRoute(settings),
      locale: context.watch<MainCubit>().state.language,
      home: const SplashPage(),
    );
  }
}
