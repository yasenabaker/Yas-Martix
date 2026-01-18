part of 'navigation_menu_cubit.dart';

sealed class NavigationMenuState {}

final class NavigationMenuInitial extends NavigationMenuState {}

final class PageLoaded extends NavigationMenuState {
  final int index;

  PageLoaded({required this.index});
}
