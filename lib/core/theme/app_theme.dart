import 'package:flutter/material.dart';
import 'package:yas_martix/core/constans/app_colors.dart';
import 'package:yas_martix/core/theme/custom_themes/app_bar_theme.dart';
import 'package:yas_martix/core/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:yas_martix/core/theme/custom_themes/check_box_theme.dart';
import 'package:yas_martix/core/theme/custom_themes/chip_theme.dart';
import 'package:yas_martix/core/theme/custom_themes/elvated_button_theme.dart';
import 'package:yas_martix/core/theme/custom_themes/outlined_button_theme.dart';
import 'package:yas_martix/core/theme/custom_themes/text_field_theme.dart';
import 'package:yas_martix/core/theme/custom_themes/text_theme.dart';

class YAppTheme {
  YAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Inter",
    brightness: Brightness.light,
    scaffoldBackgroundColor: YAppColors.white,
    primaryColor: YAppColors.primary,
    textTheme: YTextTheme.lightTextTheme,
    elevatedButtonTheme: YElvatedButtonTheme.lightElvatedButtonTheme,
    appBarTheme: YAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: YBottomSheetTheme.lightBottomSheetThemeData,
    checkboxTheme: YCheckBoxTheme.lightCheckBoxTheme,
    chipTheme: YChipTheme.lightChipTheme,
    outlinedButtonTheme: YOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: YTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Inter",
    brightness: Brightness.dark,
    scaffoldBackgroundColor: YAppColors.black,
    primaryColor: YAppColors.primary,
    textTheme: YTextTheme.darkTextTheme,
    elevatedButtonTheme: YElvatedButtonTheme.darkElvatedButtonTheme,
    appBarTheme: YAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: YBottomSheetTheme.darkBottomSheetThemeData,
    checkboxTheme: YCheckBoxTheme.darkCheckBoxTheme,
    chipTheme: YChipTheme.darkChipTheme,
    outlinedButtonTheme: YOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: YTextFormFieldTheme.darkInputDecorationTheme,
  );
}
