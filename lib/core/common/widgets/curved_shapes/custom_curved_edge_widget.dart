import 'package:flutter/material.dart';
import 'package:yas_martix/core/common/widgets/curved_shapes/custom_curved_widget.dart';

class CustomCurvedEdgeWidget extends StatelessWidget {
  final Widget? child;
  const CustomCurvedEdgeWidget({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: CustomCurvedWidget(), child: child,);
  }
}
