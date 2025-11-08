import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class NotificationBannerShimmer extends StatelessWidget {
  const NotificationBannerShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Shimmer.fromColors(
          baseColor: Colors.grey[300]!, // Color when not shimmering
          highlightColor: Colors.grey[100]!, // Color when shimmering
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.home, size: 40.0, color: Colors.black),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(width: 150, height: 15, color: Colors.white),
                    SizedBox(height: 5),
                    Container(width: 100, height: 15, color: Colors.white),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
