import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yas_martix/core/navigation/app_routes.dart';
import 'package:yas_martix/features/login/presentation/screens/login_screen.dart';
import 'package:yas_martix/features/onboarding_screens/screens/onboarding_screens.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {

      case AppRoutes.loginScreen:
        return CupertinoPageRoute(
          builder: (_) => const LoginScreen(),
          settings: settings,
        );

      case AppRoutes.onboardingScreens:
        return CupertinoPageRoute(
          builder: (_) => const OnboardingScreens(),
          settings: settings,
        );

      default:
        return CupertinoPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text("No route defined for ${settings.name}")),
          ),
        );
    }
  }
}