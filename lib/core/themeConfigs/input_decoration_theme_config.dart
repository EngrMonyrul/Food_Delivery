import 'package:flutter/material.dart';
import 'package:food_resturant_app/core/themeConfigs/color_theme_config.dart';

class InputDecorationThemeConfig {
  InputDecorationThemeConfig._();

  // light input decoration config
  static final lightInputDecorationConfig = InputDecorationTheme(
    isDense: true,
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(12),
    ),
    filled: false,
    contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
    hintStyle: const TextStyle().copyWith(fontSize: 14),
  );
}
