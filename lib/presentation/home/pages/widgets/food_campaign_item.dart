import 'package:flutter/material.dart';
import 'package:food_resturant_app/core/themeConfigs/color_theme_config.dart';
import 'package:food_resturant_app/presentation/widgets/custom_network_image.dart';
import 'package:food_resturant_app/utils/extensions/context_ext.dart';
import 'package:food_resturant_app/utils/extensions/widget_ext.dart';

class FoodCampaignItem extends StatelessWidget {
  const FoodCampaignItem({super.key});

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
                imageUrl:
                    "https://images.unsplash.com/photo-1551024601-bec78aea704b?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZGVsaWNpb3VzJTIwZm9vZHxlbnwwfHwwfHx8MA%3D%3D&fm=jpg&q=60&w=3000",
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
                    "Burger",
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
                          text: "Mc Donald,",
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
