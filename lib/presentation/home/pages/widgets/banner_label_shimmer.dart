import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class BannerLabelShimmer extends StatelessWidget {
  const BannerLabelShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Row(
        children: [
          Container(height: 15, width: 100, color: Colors.white),
          Spacer(),
          Container(height: 10, width: 30, color: Colors.white),
        ],
      ),
    );
  }
}
