import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingInitial());

  /// Variables
  final pageController = PageController();
  int currentPageIndex = 0;

  /// Update current index when page scroll
  void updatePageIndicator(int index) => currentPageIndex = index;

  /// Jump to the specific dot selected page
  void dotNavigationClick(int index) {
    currentPageIndex = index;
    pageController.jumpTo(index.toDouble());
  }

  /// Update current index & jump to next page
  void nextPage() {
    if (currentPageIndex == 2) {
      emit(OnboardingLoaded());
    } else {
      int page = currentPageIndex + 1;
      pageController.jumpToPage(page);
    }
  }

  /// Update current index & jump to last page
  void lastPage() {
    currentPageIndex = 2;
    pageController.jumpToPage(2);
  }
}
