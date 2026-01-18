import 'package:flutter_bloc/flutter_bloc.dart';

part 'navigation_menu_state.dart';

class NavigationMenuCubit extends Cubit<NavigationMenuState> {
  NavigationMenuCubit() : super(NavigationMenuInitial());

  int currnetPageIndex = 0;

  void goToPage(int index) {
    currnetPageIndex = index;
    emit(PageLoaded(index: index));
  }
}
