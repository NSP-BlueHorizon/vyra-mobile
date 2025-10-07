import 'package:flutter/material.dart';
import 'package:vyra/core/pages/language/language_page.dart';
import 'package:vyra/core/pages/location_permission/location_permission_page.dart';
import 'package:vyra/core/pages/main/main_page.dart';
import 'package:vyra/core/pages/splash/splash_page.dart';
import 'package:vyra/feature/auth/presentation/pages/signin/signin_page.dart';
import 'package:vyra/feature/auth/presentation/pages/signup/signup_page.dart';
import 'package:vyra/feature/onboarding/presentation/pages/onboarding_page.dart';

import '../enums/routes/route_enum.dart';

class RouteGenerator {
  static const String splash = '/splash';
  static const String onboarding = '/onboarding';
  static const String language = '/language';
  static const String locationPermission = '/location_permission';
  static const String signin = '/signin';
  static const String signup = '/signup';
  static const String home = '/home';

  static Map<Routes, String> routeMap = {
    Routes.splash: splash,
    Routes.onboarding: onboarding,
    Routes.language: language,
    Routes.locationPermission: locationPermission,
    Routes.signin: signin,
    Routes.signup: signup,
    Routes.home: home,
  };

  static String of(Routes route) => routeMap[route] ?? splash;
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteGenerator.splash:
        return MaterialPageRoute(
          settings: const RouteSettings(name: RouteGenerator.splash),
          builder: (_) => const SplashPage(),
        );
      case RouteGenerator.onboarding:
        return MaterialPageRoute(
          settings: const RouteSettings(name: RouteGenerator.onboarding),
          builder: (_) => const OnboardingPage(),
        );
      case RouteGenerator.language:
        return MaterialPageRoute(
          settings: const RouteSettings(name: RouteGenerator.language),
          builder: (_) => const LanguagePage(),
        );

      case RouteGenerator.locationPermission:
        return MaterialPageRoute(
          settings: const RouteSettings(
            name: RouteGenerator.locationPermission,
          ),
          builder: (_) => const LocationPermissionPage(),
        );
      case RouteGenerator.signin:
        return MaterialPageRoute(
          settings: const RouteSettings(name: RouteGenerator.signin),
          builder: (_) => const SigninPage(),
        );

      case RouteGenerator.signup:
        return MaterialPageRoute(
          settings: const RouteSettings(name: RouteGenerator.signup),
          builder: (_) => const SignupPage(),
        );
      case RouteGenerator.home:
        return MaterialPageRoute(builder: (_) => const MainPage());
      default:
        return MaterialPageRoute(builder: (_) => const SplashPage());
    }
  }

  static Future? push<T>(Routes route, [T? arguments]) =>
      state?.pushNamed(RouteGenerator.of(route), arguments: arguments);

  static Future? replaceWith<T>(Routes route, [T? arguments]) => state
      ?.pushReplacementNamed(RouteGenerator.of(route), arguments: arguments);
  static void pop() => state?.pop();

  static void popUntil(Routes route) {
    final routeName = routeMap[route];
    state?.popUntil((currentRoute) => currentRoute.settings.name == routeName);
  }

  static NavigatorState? get state => navigatorKey.currentState;
}
