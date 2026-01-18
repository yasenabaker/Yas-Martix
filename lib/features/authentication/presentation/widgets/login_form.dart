import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:yas_martix/core/constants/sizes.dart';
import 'package:yas_martix/core/constants/text_strings.dart';
import 'package:yas_martix/core/helpers/helper_functions.dart';
import 'package:yas_martix/core/navigation/app_routes.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: YSizes.spaceBtwSections),
        child: Column(
          children: [
            /// Email
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: YTexts.email,
              ),
            ),
            const SizedBox(height: YSizes.spaceBtwInputFields),

            /// Password
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: YTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: YSizes.spaceBtwInputFields / 2),

            /// Remember Me & Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Remember Me
                Row(
                  children: [
                    SizedBox(
                      width: 24,
                      height: 24,
                      child: Checkbox(value: true, onChanged: (value) {}),
                    ),
                    const SizedBox(width: YSizes.spaceBtwItmes),
                    const Text(YTexts.rememberMe),
                  ],
                ),

                /// Forget Password
                TextButton(
                  onPressed: () => YHelperFunctions.navigateToScreen(context, AppRoutes.forgetPassword),
                  child: Text(YTexts.forgetPassword),
                ),
              ],
            ),
            const SizedBox(height: YSizes.spaceBtwSections),

            /// Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => YHelperFunctions.navigateToScreen(context, AppRoutes.navigationMenu),
                child: const Text(YTexts.signIn),
              ),
            ),
            const SizedBox(height: YSizes.spaceBtwItmes),

            /// Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => YHelperFunctions.navigateToScreen(context, AppRoutes.signUpScreen),
                child: const Text(YTexts.creatAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
