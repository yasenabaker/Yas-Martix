import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:yas_martix/core/constants/sizes.dart';
import 'package:yas_martix/core/constants/text_strings.dart';

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
                labelText: YTextStrings.email,
              ),
            ),
            const SizedBox(height: YSizes.spaceBtwInputFields),

            /// Password
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: YTextStrings.password,
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
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(YTextStrings.rememberMe),
                  ],
                ),

                /// Forget Password
                TextButton(
                  onPressed: () {},
                  child: Text(YTextStrings.forgetPassword),
                ),
              ],
            ),
            const SizedBox(height: YSizes.spaceBtwSections),

            /// Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(YTextStrings.signIn),
              ),
            ),
            const SizedBox(height: YSizes.spaceBtwItmes),

            /// Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                child: const Text(YTextStrings.creatAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
