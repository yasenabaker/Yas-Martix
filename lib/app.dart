import 'package:flutter/material.dart';
import 'package:yas_martix/core/theme/app_theme.dart';
import 'package:yas_martix/features/onboarding_screens/screens/onboarding_screens.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      darkTheme: YAppTheme.darkTheme,
      theme: YAppTheme.lightTheme,
      home: OnboardingScreens(),
    );
  }
}