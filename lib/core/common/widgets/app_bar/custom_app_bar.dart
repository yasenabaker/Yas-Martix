import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:yas_martix/core/constants/sizes.dart';
import 'package:yas_martix/core/utils/device/device_utility.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  const CustomAppBar({
    super.key,
    this.title,
    this.leadingIcon,
    this.actions,
    this.leadingOnPressed,
    this.showBackArrow = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: YSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(onPressed: leadingOnPressed, icon: Icon(Iconsax.arrow_left),)
            : leadingIcon != null
            ? IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon))
            : null,
            title: title,
            actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(YDeviceUtils.getAppBarHeight());
}
