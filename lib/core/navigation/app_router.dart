import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yas_martix/core/common/success_screen/success_screen.dart';
import 'package:yas_martix/core/navigation/app_routes.dart';
import 'package:yas_martix/features/bottom_nav_bar/cubits/navigation_cubit/navigation_menu_cubit.dart';
import 'package:yas_martix/features/onboarding_screens/screens/onboarding_screens.dart';
import 'package:yas_martix/features/bottom_nav_bar/navigation_menu.dart';

import '../../features/authentication/presentation/screens/forget_password_screen.dart';
import '../../features/authentication/presentation/screens/login_screen.dart';
import '../../features/authentication/presentation/screens/reset_password_screen.dart';
import '../../features/authentication/presentation/screens/sign_up_screen.dart';
import '../../features/authentication/presentation/screens/verify_email_screen.dart';

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

      case AppRoutes.signUpScreen:
        return CupertinoPageRoute(
          builder: (_) => const SignUpScreen(),
          settings: settings,
        );

      case AppRoutes.navigationMenu:
        return CupertinoPageRoute(
          builder: (_) => BlocProvider(
            create: (context) {
              final cubit = NavigationMenuCubit();
              cubit.goToPage(0);
              return cubit;
            },
            child: const NavigationMenu(),
          ),
          settings: settings,
        );

      case AppRoutes.successScreen:
        return CupertinoPageRoute(
          builder: (_) => const SuccessScreen(),
          settings: settings,
        );

      case AppRoutes.verifyEmailScreen:
        // final String email = settings.arguments as String;
        return CupertinoPageRoute(
          builder: (_) => const VerifyEmailScreen(),
          settings: settings,
        );
      case AppRoutes.forgetPassword:
        return CupertinoPageRoute(
          builder: (_) => const ForgetPasswordScreen(),
          settings: settings,
        );
      case AppRoutes.resetPassword:
        // final String email = settings.arguments as String;
        return CupertinoPageRoute(
          builder: (_) => const ResetPasswordScreen(),
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
