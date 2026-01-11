import 'package:flutter/material.dart';
import 'package:yas_martix/core/navigation/app_router.dart';
import 'package:yas_martix/core/navigation/app_routes.dart';
import 'package:yas_martix/core/theme/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      darkTheme: YAppTheme.darkTheme,
      theme: YAppTheme.lightTheme,
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: AppRoutes.onboardingScreens,
    );
  }
}