import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_resturant_app/core/routes/routes_name.dart';
import 'package:food_resturant_app/core/widgets/error_page.dart';
import 'package:food_resturant_app/presentation/home/pages/home_page.dart';

class RoutesConfig {
  RoutesConfig._();

  static Map<String, WidgetBuilder> _routes(Object? arguments) => {
    RoutesName.homePage: (context) => HomePage(),
  };

  static Route<dynamic> onGenerateRoutes(RouteSettings routeSettings) {
    final builder = _routes(routeSettings.arguments)[routeSettings.name];

    if (builder != null) {
      return MaterialPageRoute(builder: (context) => builder(context));
    } else {
      return MaterialPageRoute(builder: (context) => ErrorPage());
    }
  }
}
