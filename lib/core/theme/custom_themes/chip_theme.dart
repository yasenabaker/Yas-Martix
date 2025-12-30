import 'package:flutter/material.dart';
import 'package:yas_martix/core/constants/app_colors.dart';

class YChipTheme {
  YChipTheme._();

  static final ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: YAppColors.grey,
    labelStyle: const TextStyle(color: YAppColors.black),
    selectedColor: YAppColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
    checkmarkColor: YAppColors.white
  );

  static final ChipThemeData darkChipTheme = ChipThemeData(
    disabledColor: YAppColors.grey,
    labelStyle: const TextStyle(color: YAppColors.white),
    selectedColor: YAppColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
    checkmarkColor: YAppColors.white
  );
}
