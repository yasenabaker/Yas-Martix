import 'package:flutter/material.dart';
import 'package:yas_martix/core/helpers/helper_functions.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/sizes.dart';

class VerticalImageText extends StatelessWidget {
  final Color textColor;
  final Color? backgroundColor;
  final VoidCallback? onTap;
  final String image, title;

  const VerticalImageText({
    super.key,
    this.textColor = YAppColors.white,
    this.backgroundColor = YAppColors.white,
    this.onTap,
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = YHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: YSizes.spaceBtwItmes),
        child: Column(
          children: [
            /// Circular Icon
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(YSizes.sm),
              decoration: BoxDecoration(
                color: isDarkMode ? YAppColors.black : backgroundColor,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Image(
                image: AssetImage(image),
                fit: BoxFit.cover,
                color: isDarkMode ? YAppColors.light : YAppColors.black,
              ),
            ),

            /// Text
            const SizedBox(height: YSizes.spaceBtwItmes / 2),
            SizedBox(
              width: 55,
              child: Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(
                  context,
                ).textTheme.labelMedium!.apply(color: textColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
