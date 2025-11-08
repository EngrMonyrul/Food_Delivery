import 'package:flutter/material.dart';
import 'package:food_resturant_app/core/themeConfigs/color_theme_config.dart';
import 'package:food_resturant_app/presentation/widgets/custom_network_image.dart';
import 'package:food_resturant_app/utils/extensions/context_ext.dart';
import 'package:food_resturant_app/utils/extensions/widget_ext.dart';

class PopularFoodItem extends StatelessWidget {
  const PopularFoodItem({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = context.screenSize;
    final theme = context.theme;

    return Padding(
      padding: EdgeInsets.only(left: 8, right: 8, bottom: 8),
      child: Container(
        width: screenSize.width * 0.4,
        decoration: BoxDecoration(
          color: ColorThemeConfig.white,
          borderRadius: BorderRadiusGeometry.circular(10),
          boxShadow: [
            BoxShadow(
              color: ColorThemeConfig.black.withValues(alpha: 0.1),
              offset: const Offset(0, 4),
              blurRadius: 8.0,
              spreadRadius: 0,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //---> item image
              CustomNetworkImage(
                imageUrl:
                    "https://www.foodandwine.com/thmb/XE8ubzwObCIgMw7qJ9CsqUZocNM=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/MSG-Smash-Burger-FT-RECIPE0124-d9682401f3554ef683e24311abdf342b.jpg",
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //---> item name
                  Text(
                    "Fried Noodles",
                    style: theme.textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  //---> item shop
                  Text("Mac Donald", style: theme.textTheme.labelMedium),
                  SizedBox(height: 5),

                  Row(
                    children: [
                      //---> price
                      Text(
                        "\$7.56",
                        style: theme.textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),

                      //---> star icon
                      Icon(
                        Icons.star,
                        color: theme.colorScheme.primary,
                        size: 18,
                      ),

                      //---> star
                      Text(
                        "4.9",
                        style: theme.textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ).padAt(all: 10),
            ],
          ),
        ),
      ),
    );
  }
}
