import 'package:flutter/material.dart';
import 'package:yas_martix/core/common/widgets/containers/primary_header_container.dart';
import 'package:yas_martix/core/common/widgets/containers/search_container.dart';
import 'package:yas_martix/core/common/widgets/texts/section_heading.dart';
import 'package:yas_martix/core/constants/sizes.dart';
import 'package:yas_martix/features/home/presentation/widgets/home_app_bar.dart';
import 'package:yas_martix/features/home/presentation/widgets/home_categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header Section
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  /// -- App Bar
                  const HomeAppBar(),
                  const SizedBox(height: YSizes.spaceBtwSections),

                  /// -- Search Bar
                  SearchContainer(text: "Search in Store", onTap: () { },),
                  const SizedBox(height: YSizes.spaceBtwSections),

                  /// -- Categories
                  Padding(
                    padding: EdgeInsets.only(left: YSizes.defaultSpace),
                    child: Column(
                      children: [
                        /// -- Heading
                        const SectionHeading(title: "Popular Categories"),
                        const SizedBox(height: YSizes.spaceBtwItmes),

                        /// -- Categories
                        const HomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
