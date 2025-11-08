import 'package:flutter/material.dart';
import 'package:food_resturant_app/core/themeConfigs/appbar_theme_config.dart';
import 'package:food_resturant_app/core/themeConfigs/color_theme_config.dart';
import 'package:food_resturant_app/core/themeConfigs/input_decoration_theme_config.dart';
import 'package:food_resturant_app/core/themeConfigs/text_theme_config.dart';

class BaseThemeConfig {
  BaseThemeConfig._();

  // light theme config
  static final lightTheme = ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    useMaterial3: true,
    textTheme: TextThemeConfig.lightText,
    colorScheme: ColorThemeConfig.lightColors,
    appBarTheme: AppbarThemeConfig.lightAppBar,
    inputDecorationTheme: InputDecorationThemeConfig.lightInputDecorationConfig,
  );
}
