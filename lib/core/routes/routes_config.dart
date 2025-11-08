import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_resturant_app/core/routes/routes_name.dart';
import 'package:food_resturant_app/presentation/carts/pages/cart_page.dart';
import 'package:food_resturant_app/presentation/favorites/pages/favorite_page.dart';
import 'package:food_resturant_app/presentation/home/pages/home_page.dart';
import 'package:food_resturant_app/presentation/landing/pages/landing_page.dart';
import 'package:food_resturant_app/presentation/menu/pages/menu_page.dart';
import 'package:food_resturant_app/presentation/others/pages/other_page.dart';
import 'package:food_resturant_app/presentation/widgets/error_page.dart';

class RoutesConfig {
  RoutesConfig._();

  static Map<String, WidgetBuilder> _routes(Object? arguments) => {
    RoutesName.homePage: (context) => HomePage(),
    RoutesName.landingPage: (context) => LandingPage(),
    RoutesName.errorPage: (context) => ErrorPage(),
    RoutesName.favoritePage: (context) => FavoritePage(),
    RoutesName.menuPage: (context) => MenuPage(),
    RoutesName.cartPage: (context) => CartPage(),
    RoutesName.othersPage: (context) => OtherPage(),
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
