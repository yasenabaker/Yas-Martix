import 'package:flutter/material.dart';
import 'package:yas_martix/core/constans/app_colors.dart';

class YAppBarTheme {
  YAppBarTheme._();

  static final AppBarTheme lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: YAppColors.transparent,
    surfaceTintColor: YAppColors.transparent,
    iconTheme: const IconThemeData(color: YAppColors.black, size: 24.0),
    actionsIconTheme: const IconThemeData(color: YAppColors.black, size: 24.0),
    titleTextStyle: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: YAppColors.black),
  );

  static final AppBarTheme darkAppBarTheme = AppBarTheme(
     elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: YAppColors.transparent,
    surfaceTintColor: YAppColors.transparent,
    iconTheme: const IconThemeData(color: YAppColors.black, size: 24.0),
    actionsIconTheme: const IconThemeData(color: YAppColors.white, size: 24.0),
    titleTextStyle: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: YAppColors.white),
  );
}
