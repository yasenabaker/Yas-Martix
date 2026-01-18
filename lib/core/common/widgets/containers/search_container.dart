import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:yas_martix/core/helpers/helper_functions.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/sizes.dart';
import '../../../utils/device/device_utility.dart';

class SearchContainer extends StatelessWidget {
  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;

  const SearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = YHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: YSizes.defaultSpace),
        child: Container(
          width: YDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(YSizes.md),
          decoration: BoxDecoration(
            border: showBorder ? Border.all(color: YAppColors.grey) : null,
            color: showBackground
                ? isDarkMode
                      ? YAppColors.dark
                      : YAppColors.light
                : Colors.tealAccent,
            borderRadius: BorderRadius.circular(YSizes.cardRadiusLg),
          ),
          child: Row(
            children: [
              Icon(icon, color: YAppColors.darkerGrey),
              const SizedBox(width: YSizes.spaceBtwItmes),
              Text(text, style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
        ),
      ),
    );
  }
}
