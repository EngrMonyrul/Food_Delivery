import 'package:flutter/material.dart';
import 'package:food_resturant_app/core/themeConfigs/color_theme_config.dart';

class TextThemeConfig{
  TextThemeConfig._();

  // light text theme
  static final lightText = TextTheme(
    labelSmall: const TextStyle().copyWith(fontWeight: FontWeight.bold, fontSize: 8, color: ColorThemeConfig.black),
    labelMedium: const TextStyle().copyWith(fontWeight: FontWeight.normal, fontSize: 10, color: ColorThemeConfig.black),
    labelLarge: const TextStyle().copyWith(fontWeight: FontWeight.w600, fontSize: 12, color: ColorThemeConfig.black),

    bodySmall: const TextStyle().copyWith(fontWeight: FontWeight.bold, fontSize: 12, color: ColorThemeConfig.black),
    bodyMedium: const TextStyle().copyWith(fontWeight: FontWeight.normal, fontSize: 14, color: ColorThemeConfig.black),
    bodyLarge: const TextStyle().copyWith(fontWeight: FontWeight.w600, fontSize: 16, color: ColorThemeConfig.black),

    titleSmall: const TextStyle().copyWith(fontWeight: FontWeight.bold, fontSize: 16, color: ColorThemeConfig.black),
    titleMedium: const TextStyle().copyWith(fontWeight: FontWeight.normal, fontSize: 18, color: ColorThemeConfig.black),
    titleLarge: const TextStyle().copyWith(fontWeight: FontWeight.w600, fontSize: 20, color: ColorThemeConfig.black),

    headlineSmall: const TextStyle().copyWith(fontWeight: FontWeight.bold, fontSize: 20, color: ColorThemeConfig.black),
    headlineMedium: const TextStyle().copyWith(fontWeight: FontWeight.normal, fontSize: 22, color: ColorThemeConfig.black),
    headlineLarge: const TextStyle().copyWith(fontWeight: FontWeight.w600, fontSize: 24, color: ColorThemeConfig.black),

    displaySmall: const TextStyle().copyWith(fontWeight: FontWeight.bold, fontSize: 24, color: ColorThemeConfig.black),
    displayMedium: const TextStyle().copyWith(fontWeight: FontWeight.normal, fontSize: 30, color: ColorThemeConfig.black),
    displayLarge: const TextStyle().copyWith(fontWeight: FontWeight.w600, fontSize: 34, color: ColorThemeConfig.black),
  );
}
