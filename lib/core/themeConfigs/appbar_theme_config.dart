import 'package:flutter/material.dart';
import 'package:food_resturant_app/core/themeConfigs/color_theme_config.dart';

class AppbarThemeConfig {
  AppbarThemeConfig._();

  // light appbar theme config
  static const lightAppBar = AppBarTheme(
    backgroundColor: ColorThemeConfig.background,
    foregroundColor: ColorThemeConfig.black,
  );
}
