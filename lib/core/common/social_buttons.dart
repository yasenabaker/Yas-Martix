import 'package:flutter/material.dart';
import 'package:yas_martix/core/constants/app_colors.dart';
import 'package:yas_martix/core/constants/image_strings.dart';
import 'package:yas_martix/core/constants/sizes.dart';
import 'package:yas_martix/core/helpers/helper_functions.dart';

class YSocialButtons extends StatelessWidget {
  const YSocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = YHelperFunctions.isDarkMode(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: isDark ? YAppColors.darkGrey : YAppColors.grey,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              width: YSizes.iconsMd,
              height: YSizes.iconsMd,
              image: AssetImage(YImageStrings.google),
            ),
          ),
        ),
        const SizedBox(width: YSizes.spaceBtwItmes),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: isDark ? YAppColors.darkGrey : YAppColors.grey,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              width: YSizes.iconsMd,
              height: YSizes.iconsMd,
              image: AssetImage(YImageStrings.facebook),
            ),
          ),
        ),
      ],
    );
  }
}
