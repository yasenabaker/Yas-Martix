import 'package:flutter/material.dart';
import 'package:yas_martix/core/constants/sizes.dart';
import 'package:yas_martix/core/utils/device/device_utility.dart';
import 'package:yas_martix/features/onboarding_screens/cubits/onboarding_cubit/onboarding_cubit.dart';

class SkipButton extends StatelessWidget {
  final OnboardingCubit cubit;
  const SkipButton({super.key, required this.cubit});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: YDeviceUtils.getAppBarHeight() - 20,
      right: YSizes.defaultSpace,
      child: TextButton(
        onPressed: cubit.lastPage,
        child: Text("Skip", style: Theme.of(context).textTheme.bodyMedium),
      ),
    );
  }
}
