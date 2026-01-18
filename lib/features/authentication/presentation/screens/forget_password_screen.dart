import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:yas_martix/core/constants/sizes.dart';
import 'package:yas_martix/core/constants/text_strings.dart';
import 'package:yas_martix/core/helpers/helper_functions.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/navigation/app_routes.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(YSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title & Sub-Title
              Text(
                YTexts.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: YSizes.spaceBtwItmes),
              Text(
                YTexts.forgetPasswordSubTitle,
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  color: YAppColors.darkGrey,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: YSizes.spaceBtwSections * 2),

              /// Text Field
              TextFormField(
                decoration: InputDecoration(
                  labelText: YTexts.email,
                  prefixIcon: Icon(Iconsax.direct_right),
                ),
              ),
              const SizedBox(height: YSizes.spaceBtwSections),

              /// Submit Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => YHelperFunctions.navigateToScreen(
                    context,
                    AppRoutes.resetPassword,
                  ),
                  child: Text(YTexts.submit),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
