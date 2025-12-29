import 'package:flutter/material.dart';
import 'package:yas_martix/core/constans/app_colors.dart';

class YCheckBoxTheme {
  YCheckBoxTheme._();

  static final CheckboxThemeData lightCheckBoxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: WidgetStateColor.resolveWith((state) {
      return state.contains(WidgetState.selected)
          ? YAppColors.white
          : YAppColors.black;
    }),

    fillColor: WidgetStateColor.resolveWith((state) {
      return state.contains(WidgetState.selected)
          ? YAppColors.primary
          : YAppColors.transparent;
    }),
  );

  static final CheckboxThemeData darkCheckBoxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: WidgetStateColor.resolveWith((state) {
      return state.contains(WidgetState.selected)
          ? YAppColors.white
          : YAppColors.black;
    }),
    
    fillColor: WidgetStateColor.resolveWith((state) {
      return state.contains(WidgetState.selected)
          ? YAppColors.primary
          : YAppColors.transparent;
    }),
  );
}
