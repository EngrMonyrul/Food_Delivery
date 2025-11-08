import 'package:flutter/material.dart';

extension WidgetExt on Widget {
  Widget padAt({
    double? all,
    double? right,
    double? left,
    double? bottom,
    double? top,
    double? horizontal,
    double? vertical,
  }) {
    return Padding(
      padding: all != null
          ? EdgeInsets.all(all)
          : (horizontal != null || vertical != null)
          ? EdgeInsets.symmetric(
              horizontal: horizontal ?? 0,
              vertical: vertical ?? 0,
            )
          : EdgeInsetsGeometry.only(
              left: left ?? 0,
              right: right ?? 0,
              top: top ?? 0,
              bottom: bottom ?? 0,
            ),
      child: this,
    );
  }
}
