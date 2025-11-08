import 'package:flutter/material.dart';
import 'package:food_resturant_app/utils/extensions/widget_ext.dart';
import 'package:shimmer/shimmer.dart';

class AppbarShimmer extends StatelessWidget implements PreferredSizeWidget {
  const AppbarShimmer({super.key, this.bottomBarHeight});

  final double? bottomBarHeight;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      actions: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            child: Shimmer.fromColors(
              baseColor: Colors.grey.shade300,
              highlightColor: Colors.grey.shade100,
              child: Row(
                children: [
                  Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(color: Colors.white),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 15,
                    width: 200,
                    decoration: BoxDecoration(color: Colors.white),
                  ),
                  Spacer(),
                  Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
      bottom: PreferredSize(
        preferredSize: preferredSize,
        child: Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade100,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            margin: const EdgeInsets.symmetric(horizontal: 20),
            height: 45,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadiusGeometry.circular(15),
            ),
          ).padAt(bottom: 10),
        ),
      ),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(kToolbarHeight + (bottomBarHeight ?? 0));
}
