import 'package:flutter/material.dart';
import 'package:yas_martix/core/common/widgets/login_sign_up/form_divider.dart';
import 'package:yas_martix/core/common/widgets/login_sign_up/social_buttons.dart';
import 'package:yas_martix/core/constants/sizes.dart';
import 'package:yas_martix/core/constants/text_strings.dart';

import '../widgets/sign_up_form.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(YSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(
                YTexts.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: YSizes.spaceBtwSections),

              /// form
              const SignUpForm(),

              /// divider
              const YFormDivider(text: YTexts.orSignUpWith),
              const SizedBox(height: YSizes.spaceBtwSections),

              /// footer
              const YSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
