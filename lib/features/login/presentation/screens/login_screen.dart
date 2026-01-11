import 'package:flutter/material.dart';
import 'package:yas_martix/core/common/form_divider.dart';
import 'package:yas_martix/core/common/social_buttons.dart';
import 'package:yas_martix/core/common/styles/spacing_styles.dart';
import 'package:yas_martix/core/constants/sizes.dart';
import 'package:yas_martix/core/constants/text_strings.dart';
import 'package:yas_martix/features/login/presentation/widgets/login_form.dart';
import 'package:yas_martix/features/login/presentation/widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: YSpacingStyles.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo title & sub-title
              LoginHeader(),

              /// Form
              LoginForm(),

              /// Divider
              YFormDivider(text: YTextStrings.orSignInWith),
              const SizedBox(height: YSizes.spaceBtwSections),

              /// Footer
              YSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
