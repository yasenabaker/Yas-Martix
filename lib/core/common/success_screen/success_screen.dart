import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:yas_martix/core/common/styles/spacing_styles.dart';
import 'package:yas_martix/core/constants/app_colors.dart';
import 'package:yas_martix/core/constants/image_strings.dart';
import 'package:yas_martix/core/constants/sizes.dart';
import 'package:yas_martix/core/constants/text_strings.dart';
import 'package:yas_martix/core/helpers/helper_functions.dart';
import 'package:yas_martix/core/navigation/app_routes.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: YSpacingStyles.paddingWithAppBarHeight * 1.4,
          child: Column(
            children: [
              /// Image
              Lottie.asset(
                YImageStrings.emailVerified,
                width: YHelperFunctions.screenWidtht(context) * 0.6,
                //height: YHelperFunctions.screenHeight(context) * 0.6,
                fit: BoxFit.contain,
              ),

              /// Title & Sub-Title
              Text(
                YTexts.yourAccountCreatedTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: YSizes.spaceBtwItmes),
              Text(
                YTexts.yourAccountCreatedSubTitle,
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  color: YAppColors.darkGrey,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: YSizes.spaceBtwSections),

              /// Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => YHelperFunctions.navigateToScreen(
                    context,
                    AppRoutes.loginScreen,
                  ),
                  child: Text(YTexts.continueText),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
