import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:food_resturant_app/utils/extensions/context_ext.dart';
import 'package:food_resturant_app/utils/extensions/widget_ext.dart';

import '../../../../core/themeConfigs/color_theme_config.dart';
import '../../../widgets/custom_network_image.dart';

class RestaurentItem extends StatelessWidget {
  const RestaurentItem({
    super.key,
    this.imageUrl,
    this.logoImage,
    this.restaurantName,
    this.restaurantAddress,
    this.ratingStar,
  });

  final String? imageUrl;
  final String? logoImage;
  final String? restaurantName;
  final String? restaurantAddress;
  final double? ratingStar;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final screenSize = context.screenSize;

    return Padding(
      padding: EdgeInsetsGeometry.only(left: 20, right: 20, bottom: 8),
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(15),
        child: Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CachedNetworkImage(
              imageUrl: imageUrl ?? "",
              height: 200,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            Positioned(
              top: 20,
              right: 20,
              child: Container(
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: theme.colorScheme.onPrimary,
                      size: 17,
                    ),
                    Text(
                      "${ratingStar?.toStringAsFixed(1) ?? 0}",
                      style: theme.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: theme.colorScheme.onPrimary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: AlignmentGeometry.topCenter,
                  end: AlignmentGeometry.bottomCenter,
                  colors: [
                    Colors.black.withValues(alpha: 0.0),
                    Colors.black.withValues(alpha: 0.5),
                    Colors.black,
                    Colors.black,
                    Colors.black,
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadiusGeometry.circular(100),
                        child: CachedNetworkImage(
                          imageUrl: logoImage ?? "",
                          height: 35,
                          width: 35,
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              restaurantName ?? "",
                              style: theme.textTheme.titleSmall?.copyWith(
                                color: theme.colorScheme.onPrimary,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              restaurantAddress ?? "",
                              maxLines: 2,
                              style: theme.textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.normal,
                                color: theme.colorScheme.onPrimary,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
