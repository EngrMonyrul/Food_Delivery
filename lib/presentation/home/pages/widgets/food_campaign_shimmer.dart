import 'package:flutter/material.dart';
import 'package:food_resturant_app/presentation/home/pages/widgets/banner_label_shimmer.dart';
import 'package:food_resturant_app/utils/extensions/context_ext.dart';
import 'package:food_resturant_app/utils/extensions/widget_ext.dart';
import 'package:shimmer/shimmer.dart';

class FoodCampaignShimmer extends StatelessWidget {
  const FoodCampaignShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = context.screenSize;

    return Column(
      children: [
        BannerLabelShimmer().padAt(horizontal: 20).padAt(bottom: 10),
        Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade100,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: List.generate(20, (index) {
                return Container(
                  width: screenSize.width * .7,
                  margin: EdgeInsetsGeometry.only(right: 10),
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadiusGeometry.circular(15),
                  ),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}
