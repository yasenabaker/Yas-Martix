import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:yas_martix/core/constants/image_strings.dart';
import 'package:yas_martix/core/constants/sizes.dart';
import 'package:yas_martix/core/helpers/helper_functions.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/text_strings.dart';
import '../../../../core/navigation/app_routes.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Navigator.of(
              context,
              rootNavigator: true,
            ).pushNamedAndRemoveUntil(AppRoutes.loginScreen, (route) => false),
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(YSizes.defaultSpace),
          child: Column(
            children: [
              /// Image
              Lottie.asset(
                YImageStrings.verifyEmail,
                width: YHelperFunctions.screenWidtht(context) * 0.6,
                fit: BoxFit.contain,
              ),

              /// Title & Sub-Title
              Text(
                YTexts.changeYourPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: YSizes.spaceBtwItmes),
              Text(
                "support@gmail.com",
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(height: YSizes.spaceBtwItmes),
              Text(
                YTexts.changeYourtPasswordSubTitle,
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
                  child: Text(YTexts.done),
                ),
              ),
              const SizedBox(height: YSizes.spaceBtwItmes),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: Text(YTexts.resendPassword),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
