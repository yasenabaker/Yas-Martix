import 'package:flutter/material.dart';
import 'package:yas_martix/core/common/widgets/containers/circular_container.dart';
import 'package:yas_martix/core/common/widgets/curved_shapes/custom_curved_edge_widget.dart';

import '../../../constants/app_colors.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  final Widget child;
  const PrimaryHeaderContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return CustomCurvedEdgeWidget(
      child: SizedBox(
        height: 380,
        child: Container(
          color: YAppColors.primary,
          padding: const EdgeInsets.all(0),

          child: Stack(
            children: [
              /// -- Background custom shapes
              Positioned( top: -150, right: -250, child: CircularContainer( backgroundColor: YAppColors.textWhite.withAlpha(20),),),
              Positioned( top: 100, right: -300,  child: CircularContainer(  backgroundColor: YAppColors.textWhite.withAlpha(20),) ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
