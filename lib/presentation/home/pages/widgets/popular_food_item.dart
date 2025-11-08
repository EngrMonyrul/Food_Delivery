import 'package:flutter/material.dart';
import 'package:food_resturant_app/core/themeConfigs/color_theme_config.dart';
import 'package:food_resturant_app/presentation/widgets/custom_network_image.dart';
import 'package:food_resturant_app/utils/extensions/context_ext.dart';
import 'package:food_resturant_app/utils/extensions/widget_ext.dart';

class PopularFoodItem extends StatelessWidget {
  const PopularFoodItem({
    super.key,
    this.image,
    this.itemName,
    this.restaurentName,
    this.price,
    this.rating,
  });

  final String? image;
  final String? itemName;
  final String? restaurentName;
  final double? price;
  final double? rating;

  @override
  Widget build(BuildContext context) {
    final screenSize = context.screenSize;
    final theme = context.theme;

    return Padding(
      padding: EdgeInsets.only(left: 8, right: 8, bottom: 8),
      child: Container(
        height: 220,
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
                imageUrl: image ?? "",
                height: 120,
                width: double.infinity,
                boxFit: BoxFit.fill,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //---> item name
                  Text(
                    itemName ?? "",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  //---> item shop
                  Text(
                    restaurentName ?? "",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.labelMedium,
                  ),
                  SizedBox(height: 5),

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
                      Icon(
                        Icons.star,
                        color: theme.colorScheme.primary,
                        size: 18,
                      ),

                      //---> star
                      Text(
                        "${rating?.toStringAsFixed(1)}",
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
