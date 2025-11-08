import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_resturant_app/core/themeConfigs/color_theme_config.dart';
import 'package:food_resturant_app/presentation/home/bloc/home_bloc.dart';
import 'package:food_resturant_app/presentation/home/bloc/home_states.dart';
import 'package:food_resturant_app/utils/assets/assets_consts.dart';
import 'package:food_resturant_app/utils/extensions/context_ext.dart';
import 'package:food_resturant_app/utils/extensions/widget_ext.dart';
import 'package:shimmer/shimmer.dart';

class HomePageAppbar extends StatelessWidget implements PreferredSizeWidget {
  const HomePageAppbar({super.key, this.bottomHeight});

  final double? bottomHeight;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    /*-------------> appbar <-------------*/
    return BlocBuilder<HomeBloc, HomeStates>(
      buildWhen: (previous, current) {
        if (previous is HomeDataLoaded && current is HomeDataLoaded) {
          return previous.config != current.config;
        }

        return false;
      },
      builder: (context, state) {
        final campaign = (state as HomeDataLoaded).config;

        return AppBar(
          automaticallyImplyLeading: false,
          actions: [
            Expanded(
              child: Row(
                children: [
                  /*-------------> home icon <-------------*/
                  Image.asset(
                    AssetsConsts.icHome,
                    height: 15,
                    width: 15,
                  ).padAt(right: 5),

                  /*-------------> location <-------------*/
                  Text(campaign?.address ?? ""),
                  Spacer(),

                  /*-------------> notification icon <-------------*/
                  Badge(
                    isLabelVisible: true,
                    child: Image.asset(
                      AssetsConsts.icNotification,
                      height: 15,
                      width: 15,
                    ),
                  ),
                ],
              ).padAt(horizontal: 20),
            ),
          ],

          /*-------------> search bar <-------------*/
          bottom: PreferredSize(
            preferredSize: preferredSize,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: ColorThemeConfig.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: ColorThemeConfig.black.withValues(alpha: 0.1),
                    offset: const Offset(0, 4),
                    blurRadius: 8.0,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search food or restaurant here...",
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Image.asset(
                      AssetsConsts.icSearch,
                      height: 15,
                      width: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ).padAt(bottom: 10),
          ),
        );
      },
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(kToolbarHeight + (bottomHeight ?? 0));
}
