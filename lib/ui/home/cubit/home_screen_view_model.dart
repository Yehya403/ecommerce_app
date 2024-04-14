import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeViewModel extends Cubit<HomeScreenState> {
  @factoryMethod
  HomeViewModel() : super(HomeTabState());

  void onTabClick(int selectedIndex) {
    if (selectedIndex == 0) {
      emit(HomeTabState());
    } else if (selectedIndex == 1) {
      emit(CategoriesTabState());
    } else if (selectedIndex == 2) {
      emit(WishlistTabState());
    } else if (selectedIndex == 3) {
      emit(ProfileTabState());
    }
  }
}

sealed class HomeScreenState {}

class HomeTabState extends HomeScreenState {}

class ProfileTabState extends HomeScreenState {}

class WishlistTabState extends HomeScreenState {}

class CategoriesTabState extends HomeScreenState {}
