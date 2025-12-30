import 'package:flutter/material.dart';

class YAppColors {
  YAppColors._();

  // App Basic colors
  static const primary = Color(0xFF4b68ff);
  static const secondary = Color(0xFFFFE24b);
  static const accent = Color(0xFFb0c7ff);
  static const black12 = Colors.black12;
  static const transparent = Colors.transparent;
  static const red = Colors.red;
  static const orange = Colors.orange;
  static const blueAccent = Colors.blueAccent;

  // Gradient Colors
  static const Gradient linerGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
    colors: [
    Color(0xffff9a9e),
    Color(0xfffad0c4),
    Color(0xfffad0c4),
  ]);

  // Text Colors
  static const textPrimary = Color(0xFF333333);
  static const textSecondary = Color(0xFF6C7570);
  static const textWhite = Colors.white;

  // Background Colors
  static const light = Color(0xFFF6F6F6);
  static const dark = Color(0xFF272727);
  static const primaryBackground = Color(0xFFF3F5FF);

  // Background containers Colors
  static const lightContainer = Color(0xFFF6F6F6);
  static const darkContainer = Color(0xFF272727);

  // Button Colors
  static const buttonPrimary = Color(0xFF4b68ff);
  static const buttonSecondary = Color(0xFF6C757D);
  static const buttonDisabled = Color(0xFFC4C4C4);

  // Border Colors
  static const borderPrimary = Color(0xFFD9D9D9);
  static const borderSecondary = Color(0xFFE6E6E6);

  // Error and validator Colors
  static const error = Color(0xFFD32F2F);
  static const success = Color(0xFF388E3C);
  static const warning = Color(0xFFF57C00);
  static const info = Color(0xFF1976D2);

  // Netral shades
  static const black = Color(0xFF232323);
  static const darkerGrey = Color(0xFF4F4F4F);
  static const darkGrey = Color(0xFF939393);
  static const grey = Color(0xFFE0E0E0);
  static const softGrey = Color(0xFFF4F4F4);
  static const lightGrey = Color(0xFFF9F9F9);
  static const white = Color(0xFFFFFFFF);
}
