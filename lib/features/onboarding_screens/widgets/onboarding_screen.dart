import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:yas_martix/core/constants/sizes.dart';
import 'package:yas_martix/core/helpers/helper_functions.dart';

class OnboardingScreen extends StatelessWidget {
  final String imageUrl, title, subTitle;
  const OnboardingScreen({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(YSizes.defaultSpace),
      child: Column(
        children: [
          Lottie.asset(
            imageUrl,
            width: YHelperFunctions.screenWidtht(context) * 0.8,
            height: YHelperFunctions.screenHeight(context) * 0.6,
            fit: BoxFit.contain,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: YSizes.spaceBtwItmes),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
