import 'package:flutter/material.dart';
import 'package:food_resturant_app/core/themeConfigs/color_theme_config.dart';
import 'package:food_resturant_app/presentation/widgets/custom_network_image.dart';
import 'package:food_resturant_app/utils/extensions/context_ext.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    this.itemImage,
    this.itemTitle,
    this.onPressed,
  });

  final String? itemImage;
  final String? itemTitle;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final screenSize = context.screenSize;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      width: screenSize.width * .18,
      child: InkWell(
        onTap: onPressed,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //---> item image
            Container(
              padding: EdgeInsets.all(10),
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
              child: CustomNetworkImage(
                imageUrl: itemImage ?? "",
                height: 35,
                width: 35,
                boxFit: BoxFit.fill,
              ),
            ),
            SizedBox(height: 7),

            //---> item name
            Text(
              itemTitle ?? "",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.labelMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
