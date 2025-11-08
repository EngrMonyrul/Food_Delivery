import 'package:flutter/material.dart';
import 'package:food_resturant_app/core/routes/routes_config.dart';
import 'package:food_resturant_app/core/routes/routes_name.dart';
import 'package:food_resturant_app/presentation/carts/pages/cart_page.dart';
import 'package:food_resturant_app/presentation/favorites/pages/favorite_page.dart';
import 'package:food_resturant_app/presentation/home/pages/home_page.dart';
import 'package:food_resturant_app/presentation/menu/pages/menu_page.dart';
import 'package:food_resturant_app/presentation/others/pages/other_page.dart';
import 'package:food_resturant_app/presentation/widgets/error_page.dart';
import 'package:food_resturant_app/utils/assets/assets_consts.dart';
import 'package:food_resturant_app/utils/extensions/context_ext.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  //---> variables
  late PersistentTabController _persistentTabController;
  int _currentIndex = 0;

  //---> methods
  void listenTabIndex() {
    if (_currentIndex != _persistentTabController.index) {
      setState(() => _currentIndex = _persistentTabController.index);
    }
  }

  //---> init method
  @override
  void initState() {
    _persistentTabController = PersistentTabController(initialIndex: 0);
    _persistentTabController.addListener(listenTabIndex);
    super.initState();
  }

  //---> dispose method
  @override
  void dispose() {
    _persistentTabController.removeListener(listenTabIndex);
    _persistentTabController.dispose();
    super.dispose();
  }

  //---> build method
  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return PersistentTabView(
      context,
      controller: _persistentTabController,
      navBarStyle: NavBarStyle.style15,
      screens: [
        HomePage(),
        FavoritePage(),
        CartPage(),
        OtherPage(),
        MenuPage(),
      ],
      items: [
        //---> home tab
        PersistentBottomNavBarItem(
          icon: Image.asset(
            AssetsConsts.icHome,
            height: 25,
            width: 25,
            color: _currentIndex == 0 ? theme.colorScheme.primary : null,
          ),
        ),

        //---> favorite tab
        PersistentBottomNavBarItem(
          icon: Image.asset(
            AssetsConsts.icFavorite,
            height: 25,
            width: 25,
            color: _currentIndex == 1 ? theme.colorScheme.primary : null,
          ),
        ),

        //---> cart tab
        PersistentBottomNavBarItem(
          activeColorPrimary: theme.colorScheme.primary,
          icon: Image.asset(
            AssetsConsts.icCart,
            height: 25,
            width: 25,
            color: theme.colorScheme.onPrimary,
          ),
        ),

        //---> others
        PersistentBottomNavBarItem(
          icon: Image.asset(
            AssetsConsts.icContract,
            height: 25,
            width: 25,
            color: _currentIndex == 3 ? theme.colorScheme.primary : null,
          ),
        ),

        //---> menu
        PersistentBottomNavBarItem(
          icon: Image.asset(
            AssetsConsts.icMenu,
            height: 25,
            width: 25,
            color: _currentIndex == 4 ? theme.colorScheme.primary : null,
          ),
        ),
      ],
    );
  }
}
