import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:food_resturant_app/core/themeConfigs/color_theme_config.dart';
import 'package:food_resturant_app/presentation/widgets/custom_network_image.dart';
import 'package:food_resturant_app/utils/extensions/context_ext.dart';
import 'package:food_resturant_app/utils/extensions/widget_ext.dart';

class FoodCampaignItem extends StatelessWidget {
  const FoodCampaignItem({
    super.key,
    this.foodImage,
    this.foodName,
    this.restaurantName,
    this.price,
    this.star,
  });

  final String? foodImage;
  final String? foodName;
  final String? restaurantName;
  final double? price;
  final double? star;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final screenSize = context.screenSize;

    return Padding(
      padding: EdgeInsetsGeometry.only(left: 8, right: 8, bottom: 8),
      child: Container(
        width: screenSize.width * .7,
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: ColorThemeConfig.white,
          borderRadius: BorderRadiusGeometry.circular(15),
          boxShadow: [
            BoxShadow(
              color: ColorThemeConfig.black.withValues(alpha: 0.1),
              offset: const Offset(0, 4),
              blurRadius: 8.0,
              spreadRadius: 0,
            ),
          ],
        ),
        child: Row(
          children: [
            //---> item image
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(15),
              child: CustomNetworkImage(
                imageUrl: foodImage ?? "",
                height: 80,
                width: 100,
              ),
            ),

            //---> item details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //---> item name
                  Text(
                    foodName ?? "",
                    style: theme.textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  //---> shop location
                  Text.rich(
                    style: theme.textTheme.labelMedium,
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "${restaurantName},",
                          style: theme.textTheme.labelMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: " New York,"),
                        TextSpan(text: " USA"),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  RatingStars(
                    value: star ?? 0,
                    starCount: 5,
                    starSize: 13,
                    valueLabelVisibility: false,
                    starSpacing: 4,
                    starColor: theme.colorScheme.primary,
                    starOffColor: Colors.grey.shade300,
                    onValueChanged: (v) {},
                  ),

                  Row(
                    children: [
                      //---> price
                      Text(
                        "\$${price}",
                        style: theme.textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),

                      //---> star icon
                      InkWell(child: Icon(Icons.add, size: 25)),
                    ],
                  ),
                ],
              ).padAt(horizontal: 10),
            ),
          ],
        ),
      ),
    );
  }
}
