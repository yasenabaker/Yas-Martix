import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:yas_martix/core/constants/app_colors.dart';
import 'package:yas_martix/core/constants/sizes.dart';
import 'package:yas_martix/core/helpers/helper_functions.dart';
import 'package:yas_martix/core/utils/device/device_utility.dart';
import 'package:yas_martix/features/onboarding_screens/cubits/onboarding_cubit/onboarding_cubit.dart';

class CustomPageIndicator extends StatelessWidget {
  final OnboardingCubit cubit;
  const CustomPageIndicator({super.key, required this.cubit});

  @override
  Widget build(BuildContext context) {
    final isDark = YHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: YDeviceUtils.getBottomNavigationBarHeight(),
      left: YSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: cubit.pageController,
        onDotClicked: cubit.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          dotHeight: 6,
          activeDotColor: isDark ? YAppColors.light : YAppColors.dark,
        ),
      ),
    );
  }
}
