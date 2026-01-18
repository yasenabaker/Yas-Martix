import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:yas_martix/core/constants/app_colors.dart';
import 'package:yas_martix/core/constants/sizes.dart';
import 'package:yas_martix/core/constants/text_strings.dart';
import 'package:yas_martix/core/helpers/helper_functions.dart';
import 'package:yas_martix/core/navigation/app_routes.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = YHelperFunctions.isDarkMode(context);

    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// FirstName & LastName
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: YTexts.firstName,
                  ),
                ),
              ),
              const SizedBox(width: YSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: YTexts.lastName,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: YSizes.spaceBtwInputFields),

          /// UserName
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.user_edit),
              labelText: YTexts.userName,
            ),
          ),
          const SizedBox(height: YSizes.spaceBtwInputFields),

          /// E-Mail
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: YTexts.email,
            ),
          ),
          const SizedBox(height: YSizes.spaceBtwInputFields),

          /// PhoneNumber
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.call),
              labelText: YTexts.phoneNumber,
            ),
          ),
          const SizedBox(height: YSizes.spaceBtwInputFields),

          /// Password
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
              labelText: YTexts.password,
            ),
          ),
          const SizedBox(height: YSizes.spaceBtwSections),

          /// Terms & conditions checkBox
          Row(
            children: [
              SizedBox(
                width: 24,
                height: 24,
                child: Checkbox(value: true, onChanged: (value) {}),
              ),
              const SizedBox(width: YSizes.spaceBtwItmes),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '${YTexts.iAgreeTo} ',
                      style: Theme.of(
                        context,
                      ).textTheme.bodySmall!.copyWith(fontSize: 12),
                    ),
                    TextSpan(
                      text: YTexts.privcyPloicy,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 13,
                        color: isDark ? YAppColors.light : YAppColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor: isDark
                            ? YAppColors.light
                            : YAppColors.primary,
                      ),
                    ),
                    TextSpan(
                      text: ' ${YTexts.and} ',
                      style: Theme.of(
                        context,
                      ).textTheme.bodySmall!.copyWith(fontSize: 12),
                    ),
                    TextSpan(
                      text: YTexts.termsOfUse,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 13,
                        color: isDark ? YAppColors.light : YAppColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor: isDark
                            ? YAppColors.light
                            : YAppColors.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: YSizes.spaceBtwSections),

          /// Sign Up Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => YHelperFunctions.navigateToScreen(context, AppRoutes.verifyEmailScreen),
              child: const Text(YTexts.signUp),
            ),
          ),
          const SizedBox(height: YSizes.spaceBtwSections),
        ],
      ),
    );
  }
}
