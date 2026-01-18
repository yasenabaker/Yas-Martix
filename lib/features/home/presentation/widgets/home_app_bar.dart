import 'package:flutter/material.dart';

import '../../../../core/common/widgets/app_bar/custom_app_bar.dart';
import '../../../../core/common/widgets/products_cart/cart_menu_icon.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/text_strings.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            YTexts.homeAppBarTitle,
            style: Theme.of(
              context,
            ).textTheme.labelMedium!.copyWith(color: YAppColors.grey),
          ),
          Text(
            YTexts.homeAppBarSubTitle,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.copyWith(color: YAppColors.white),
          ),
        ],
      ),
      actions: [CartCounterIcon(iconColor: YAppColors.white, onPressed: () {})],
    );
  }
}
