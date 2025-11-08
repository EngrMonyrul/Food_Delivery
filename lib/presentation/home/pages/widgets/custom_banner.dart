import 'package:flutter/material.dart';
import 'package:food_resturant_app/utils/extensions/context_ext.dart';

class CustomBanner extends StatelessWidget {
  const CustomBanner({super.key, this.bannerTitle, this.pressedOnViewAll});

  final String? bannerTitle;
  final VoidCallback? pressedOnViewAll;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return Row(
      children: [
        //---> banner titel
        Text(
          bannerTitle ?? "",
          style: theme.textTheme.titleSmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(),

        //---> view all button
        TextButton(
          onPressed: pressedOnViewAll,
          child: Text(
            "View All",
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.primary,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.solid,
              decorationColor: theme.colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }
}
