import 'package:flutter/material.dart';
import 'package:food_resturant_app/utils/extensions/widget_ext.dart';
import 'package:shimmer/shimmer.dart';

import 'banner_label_shimmer.dart';

class RestaurantShimmer extends StatelessWidget {
  const RestaurantShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BannerLabelShimmer().padAt(horizontal: 20).padAt(bottom: 10),
        Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade100,
          child: Column(
            children: List.generate(3, (index) {
              return Container(
                margin: EdgeInsetsGeometry.only(bottom: 10),
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadiusGeometry.circular(15),
                ),
              );
            }),
          ).padAt(horizontal: 20),
        ),
      ],
    );
  }
}
