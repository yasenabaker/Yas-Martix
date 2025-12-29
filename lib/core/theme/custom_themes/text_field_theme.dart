import 'package:flutter/material.dart';
import 'package:yas_martix/core/constans/app_colors.dart';

class YTextFormFieldTheme {
  YTextFormFieldTheme._();

  static final InputDecorationTheme lightInputDecorationTheme =
      InputDecorationTheme(
        errorMaxLines: 3,
        prefixIconColor: YAppColors.grey,
        suffixIconColor: YAppColors.grey,

        labelStyle: const TextStyle().copyWith(fontSize: 14.0, color: YAppColors.black),
        hintStyle: const TextStyle().copyWith(fontSize: 14.0, color: YAppColors.black),
        errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
        floatingLabelStyle: const TextStyle().copyWith(color: YAppColors.black),

        border: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: const BorderSide(color: YAppColors.grey, width: 1.0)
        ),

        enabledBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: const BorderSide(color: YAppColors.grey, width: 1.0)
        ),

        focusedBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: const BorderSide(color: YAppColors.black12, width: 1.0)
        ),

        errorBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: const BorderSide(color: YAppColors.red, width: 1.0)
        ),

        focusedErrorBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: const BorderSide(color: YAppColors.orange, width: 2.0)
        ),
      );

  static final InputDecorationTheme darkInputDecorationTheme =
      InputDecorationTheme(
        errorMaxLines: 3,
        prefixIconColor: YAppColors.grey,
        suffixIconColor: YAppColors.grey,

        labelStyle: const TextStyle().copyWith(fontSize: 14.0, color: YAppColors.black),
        hintStyle: const TextStyle().copyWith(fontSize: 14.0, color: YAppColors.black),
        errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
        floatingLabelStyle: const TextStyle().copyWith(color: YAppColors.black),

        border: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: const BorderSide(color: YAppColors.grey, width: 1.0)
        ),

        enabledBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: const BorderSide(color: YAppColors.grey, width: 1.0)
        ),

        focusedBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: const BorderSide(color: YAppColors.black12, width: 1.0)
        ),

        errorBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: const BorderSide(color: YAppColors.red, width: 1.0)
        ),

        focusedErrorBorder: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: const BorderSide(color: YAppColors.orange, width: 2.0)
        ),
      );
}
