import 'package:flutter/material.dart';
import 'package:yas_martix/core/constants/app_colors.dart';
import 'package:yas_martix/core/helpers/helper_functions.dart';

class YFormDivider extends StatelessWidget {
  final String text;
  const YFormDivider({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final bool isDark = YHelperFunctions.isDarkMode(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: isDark ? YAppColors.darkGrey : YAppColors.grey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(
          text,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: isDark ? YAppColors.darkGrey : YAppColors.grey,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}
