import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yas_martix/core/constants/image_strings.dart';
import 'package:yas_martix/core/constants/text_strings.dart';
import 'package:yas_martix/features/onboarding_screens/cubits/onboarding_cubit/onboarding_cubit.dart';
import 'package:yas_martix/features/onboarding_screens/widgets/circular_elvated_button.dart';
import 'package:yas_martix/features/onboarding_screens/widgets/custom_page_indicator.dart';
import 'package:yas_martix/features/onboarding_screens/widgets/onboarding_screen.dart';
import 'package:yas_martix/features/onboarding_screens/widgets/skip_button.dart';

class OnboardingScreens extends StatefulWidget {
  const OnboardingScreens({super.key});

  @override
  State<OnboardingScreens> createState() => _OnboardingScreensState();
}

class _OnboardingScreensState extends State<OnboardingScreens> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardingCubit(),
      child: Scaffold(
        body: Builder(
          builder: (context) {
            final cubit = BlocProvider.of<OnboardingCubit>(context);

            return Stack(
              children: [
                /// Horizantal scrollable pages
                BlocBuilder<OnboardingCubit, OnboardingState>(
                  buildWhen: (previous, current) => current != previous,
                  builder: (context, state) {
                    return PageView(
                      controller: cubit.pageController,
                      onPageChanged: cubit.updatePageIndicator,
                      
                      children: const [
                        OnboardingScreen(
                          imageUrl: YImageStrings.onboardingImage1,
                          title: YTextStrings.onboardingTitle1,
                          subTitle: YTextStrings.onboardingSubTitle1,
                        ),
                        OnboardingScreen(
                          imageUrl: YImageStrings.onboardingImage2,
                          title: YTextStrings.onboardingTitle2,
                          subTitle: YTextStrings.onboardingSubTitle2,
                        ),
                        OnboardingScreen(
                          imageUrl: YImageStrings.onboardingImage3,
                          title: YTextStrings.onboardingTitle3,
                          subTitle: YTextStrings.onboardingSubTitle3,
                        ),
                      ],
                    );
                  },
                ),

                /// Skip button
                SkipButton(cubit: cubit),

                /// Dot navigation smoothPageIndicator
                CustomPageIndicator(cubit: cubit),

                /// Circular button
                CircularElvatedButton(cubit: cubit),
              ],
            );
          },
        ),
      ),
    );
  }
}
