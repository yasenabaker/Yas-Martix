import 'package:flutter/material.dart';
import 'package:yas_martix/core/constants/app_colors.dart';

class YOutlinedButtonTheme {
  YOutlinedButtonTheme._();

  static final OutlinedButtonThemeData lightOutlinedButtonTheme =
      OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          elevation: 0,
          foregroundColor: YAppColors.black,
          side: const BorderSide(color: YAppColors.primary),
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20),
          textStyle: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            color: YAppColors.black,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
        )
      );

  static final OutlinedButtonThemeData darkOutlinedButtonTheme =
      OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          elevation: 0,
          foregroundColor: YAppColors.white,
          side: const BorderSide(color: YAppColors.blueAccent),
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20),
          textStyle: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            color: YAppColors.white,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
        )
      );
}
