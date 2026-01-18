import 'package:flutter/material.dart';
import 'package:yas_martix/core/constants/app_colors.dart';

class SectionHeading extends StatelessWidget {
  final Color? textColor;
  final String title, buttonTitle;
  final VoidCallback? onPressed;
  final bool showSectionButton;

  const SectionHeading({
    super.key,
    this.textColor = YAppColors.white,
    required this.title,
    this.buttonTitle = "View All",
    this.onPressed,
    this.showSectionButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if(showSectionButton) TextButton(onPressed: onPressed, child: Text(buttonTitle)),
      ],
    );
  }
}
