import 'package:flutter/material.dart';

class ColorThemeConfig {
  ColorThemeConfig._();

  // colors variables
  static const primary = Color(0xFF009b55);
  static const secondary = Color(0xFFed8728);
  static const outline = Color(0xFF737373);
  static const tertiary = Color(0xFF20665C);
  static const black = Color(0xFF2C343A);
  static const white = Color(0xFFFFFFFF);
  static const whiteCardColor = Color(0xFFFFFFFF);
  static const blackCardColor = Color(0xFF646464);
  static const background = Color(0xFFfafafa);
  static const error = Color(0xFFFF0000);

  // light color theme config
  static final lightColors = ColorScheme.fromSeed(
    seedColor: primary,
    primary: primary,
    onPrimary: white,
    secondary: secondary,
    onSecondary: white,
    outline: outline,
    tertiary: whiteCardColor,
    onTertiary: white,
    surface: background,
    onSurface: black,
    brightness: Brightness.light,
    error: error,
  );
}
