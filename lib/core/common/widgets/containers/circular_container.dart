import 'package:flutter/material.dart';
import 'package:yas_martix/core/constants/app_colors.dart';

class CircularContainer extends StatelessWidget {
  final double? width;
  final double? height;
  final double padding;
  final Color backgroundColor;
  final double radius;
  final Widget? child;

  const CircularContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.padding = 0,
    this.backgroundColor = YAppColors.white,
    this.radius = 400,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
      ),
    );
  }
}
