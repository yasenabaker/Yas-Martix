import 'package:flutter/material.dart';
import 'package:yas_martix/core/constans/app_colors.dart';

class YBottomSheetTheme {
  YBottomSheetTheme._();

  static final BottomSheetThemeData lightBottomSheetThemeData =
      BottomSheetThemeData(
        showDragHandle: true,
        backgroundColor: YAppColors.white,
        modalBackgroundColor: YAppColors.white,
        constraints: const BoxConstraints(minWidth: double.infinity),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0))
      );

  static final BottomSheetThemeData darkBottomSheetThemeData =
      BottomSheetThemeData(
        showDragHandle: true,
        backgroundColor: YAppColors.black,
        modalBackgroundColor: YAppColors.black,
        constraints: const BoxConstraints(minWidth: double.infinity),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0))
      );
}
