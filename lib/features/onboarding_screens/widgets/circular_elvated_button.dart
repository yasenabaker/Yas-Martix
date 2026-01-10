import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:yas_martix/core/constants/app_colors.dart';
import 'package:yas_martix/core/constants/sizes.dart';
import 'package:yas_martix/core/helpers/helper_functions.dart';
import 'package:yas_martix/core/utils/device/device_utility.dart';
import 'package:yas_martix/features/onboarding_screens/cubits/onboarding_cubit/onboarding_cubit.dart';

class CircularElvatedButton extends StatelessWidget {
  final OnboardingCubit cubit;
  const CircularElvatedButton({super.key, required this.cubit});

  @override
  Widget build(BuildContext context) {
    final isDark = YHelperFunctions.isDarkMode(context);
    

    return Positioned(
      right: YSizes.defaultSpace,
      bottom: YDeviceUtils.getBottomNavigationBarHeight() - 20,
      child: ElevatedButton(
        onPressed: cubit.nextPage,
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: isDark ? YAppColors.primary : YAppColors.black,
        ),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
