import 'package:flutter/material.dart';
import 'package:yas_martix/core/constans/app_colors.dart';

class YElvatedButtonTheme {
  YElvatedButtonTheme._();

  static final ElevatedButtonThemeData lightElvatedButtonTheme =
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: YAppColors.white,
          backgroundColor: YAppColors.primary,
          disabledForegroundColor: YAppColors.grey,
          disabledBackgroundColor: YAppColors.grey,
          side: const BorderSide(color: YAppColors.primary),
          padding: const EdgeInsets.symmetric(vertical: 18.0),
          textStyle: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            color: YAppColors.white,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
      );

  static final ElevatedButtonThemeData darkElvatedButtonTheme =
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: YAppColors.white,
          backgroundColor: YAppColors.primary,
          disabledForegroundColor: YAppColors.grey,
          disabledBackgroundColor: YAppColors.grey,
          side: const BorderSide(color: YAppColors.primary),
          padding: const EdgeInsets.symmetric(vertical: 18.0),
          textStyle: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            color: YAppColors.white,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
      );
}
