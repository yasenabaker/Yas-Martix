import 'package:flutter/material.dart';
import 'package:yas_martix/core/constants/app_colors.dart';
import 'package:yas_martix/core/constants/sizes.dart';

class YTextTheme {
  YTextTheme._();

  static final TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
      fontSize: YSizes.fontSize32,
      fontWeight: FontWeight.bold,
      color: YAppColors.black,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: YSizes.fontSize24,
      fontWeight: FontWeight.w600,
      color: YAppColors.black,
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: YSizes.fontSize18,
      fontWeight: FontWeight.w600,
      color: YAppColors.black,
    ),

    titleLarge: const TextStyle().copyWith(
      fontSize: YSizes.fontSize16,
      fontWeight: FontWeight.w600,
      color: YAppColors.black,
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: YSizes.fontSize16,
      fontWeight: FontWeight.w500,
      color: YAppColors.black,
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: YSizes.fontSize16,
      fontWeight: FontWeight.w400,
      color: YAppColors.black,
    ),

    bodyLarge: const TextStyle().copyWith(
      fontSize: YSizes.fontSize14,
      fontWeight: FontWeight.w500,
      color: YAppColors.black,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: YSizes.fontSize14,
      color: YAppColors.black,
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: YSizes.fontSize14,
      fontWeight: FontWeight.w500,
      color: YAppColors.black,
    ),

    labelLarge: const TextStyle().copyWith(
      fontSize: YSizes.fontSize12,
      color: YAppColors.black,
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: YSizes.fontSize12,
      color: YAppColors.black,
    ),
  );

  static final TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
      fontSize: YSizes.fontSize32,
      fontWeight: FontWeight.bold,
      color: YAppColors.white,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: YSizes.fontSize24,
      fontWeight: FontWeight.w600,
      color: YAppColors.white,
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: YSizes.fontSize18,
      fontWeight: FontWeight.w600,
      color: YAppColors.white,
    ),

    titleLarge: const TextStyle().copyWith(
      fontSize: YSizes.fontSize16,
      fontWeight: FontWeight.w600,
      color: YAppColors.white,
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: YSizes.fontSize16,
      fontWeight: FontWeight.w500,
      color: YAppColors.white,
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: YSizes.fontSize16,
      fontWeight: FontWeight.w400,
      color: YAppColors.white,
    ),

    bodyLarge: const TextStyle().copyWith(
      fontSize: YSizes.fontSize14,
      fontWeight: FontWeight.w500,
      color: YAppColors.white,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: YSizes.fontSize14,
      color: YAppColors.white,
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: YSizes.fontSize14,
      fontWeight: FontWeight.w500,
      color: YAppColors.white,
    ),

    labelLarge: const TextStyle().copyWith(
      fontSize: YSizes.fontSize12,
      color: YAppColors.white,
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: YSizes.fontSize12,
      color: YAppColors.white,
    ),
  );
}
