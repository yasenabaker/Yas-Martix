import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:yas_martix/core/constants/app_colors.dart';
import 'package:yas_martix/core/helpers/helper_functions.dart';
import 'package:yas_martix/features/bottom_nav_bar/cubits/navigation_cubit/navigation_menu_cubit.dart';
import 'package:yas_martix/features/home/presentation/screens/home_screen.dart';
import 'package:yas_martix/features/profile/presentation/screens/profile_screen.dart';
import 'package:yas_martix/features/store/presentation/screens/store_screen.dart';
import 'package:yas_martix/features/wishlist/presentation/screens/wishlist_screen.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = YHelperFunctions.isDarkMode(context);
    final cubit = BlocProvider.of<NavigationMenuCubit>(context);

    return BlocBuilder<NavigationMenuCubit, NavigationMenuState>(
      builder: (context, state) {
        int index = 0;
        if (state is PageLoaded) {
          index = state.index;
        }
        return Scaffold(
          bottomNavigationBar: NavigationBar(
            height: 80,
            elevation: 0,
            selectedIndex: cubit.currnetPageIndex,
            onDestinationSelected: cubit.goToPage,
            backgroundColor: isDark ? YAppColors.dark : YAppColors.white,
            indicatorColor: isDark
                ? YAppColors.white.withAlpha(20)
                : YAppColors.dark.withAlpha(30),

            destinations: [
              NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
              NavigationDestination(icon: Icon(Iconsax.shop), label: "Store"),
              NavigationDestination(
                icon: Icon(Iconsax.heart),
                label: "Wishlist",
              ),
              NavigationDestination(icon: Icon(Iconsax.user), label: "Profile"),
            ],
          ),

          body: screens[index],
        );
      },
    );
  }
}

final List<Widget> screens = [
  HomeScreen(),
  StoreScreen(),
  WishlistScreen(),
  ProfileScreen(),
];
