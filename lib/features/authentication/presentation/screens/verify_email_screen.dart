import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:yas_martix/core/constants/app_colors.dart';
import 'package:yas_martix/core/constants/image_strings.dart';
import 'package:yas_martix/core/constants/sizes.dart';
import 'package:yas_martix/core/constants/text_strings.dart';
import 'package:yas_martix/core/helpers/helper_functions.dart';
import 'package:yas_martix/core/navigation/app_routes.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: ()=> YHelperFunctions.navigateToScreen(context, AppRoutes.loginScreen), icon: Icon(CupertinoIcons.clear))
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(YSizes.defaultSpace),
          child: Column(
            children: [
              /// Image
              Lottie.asset(
            YImageStrings.verifyEmail,
            width: YHelperFunctions.screenWidtht(context) * 0.6,
            fit: BoxFit.contain,
          ),

              /// Title & Sub-Title
              Text(YTexts.confirmEmailTitle, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
              const SizedBox(height: YSizes.spaceBtwItmes,),
              Text("support@gmail.com", style: Theme.of(context).textTheme.labelLarge,),
              const SizedBox(height: YSizes.spaceBtwItmes,),
              Text(YTexts.confirmEmailSubTitle, style: Theme.of(context).textTheme.labelLarge!.copyWith( color: YAppColors.darkGrey,
                  fontWeight: FontWeight.w700,), textAlign: TextAlign.center,),
              const SizedBox(height: YSizes.spaceBtwSections,),

              /// Buttons
              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => YHelperFunctions.navigateToScreen(context, AppRoutes.successScreen), child: Text(YTexts.continueText)),),
              const SizedBox(height: YSizes.spaceBtwItmes,),
              SizedBox(width: double.infinity, child: TextButton(onPressed: (){}, child: Text(YTexts.resendEmail)),),

            ],
          ),
        ),
      ),
    );
  }
}
