import 'package:ecommerce_app/ui/home/categories_tab/categories_tab.dart';
import 'package:ecommerce_app/ui/home/profile_tab/profile_tab.dart';
import 'package:ecommerce_app/ui/home/wishlist_tab/wishlist_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../di/di.dart';
import 'home/home_screen_view_model.dart';
import 'home/home_tab/home_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String routeName = 'HomeSc';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var viewModel = getIt<HomeViewModel>();
  int selectedIndex = 0;
  Widget bodyWidget = const HomeTab();

  @override
  void initState() {
    super.initState();
    viewModel.onTabClick(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
        bloc: viewModel,
        builder: (context, state) {
          switch (state) {
            case HomeTabState():
              selectedIndex = 0;
              bodyWidget = const HomeTab();
            case CategoriesTabState():
              selectedIndex = 1;
              bodyWidget = const CategoriesTab();
            case WishlistTabState():
              selectedIndex = 2;
              bodyWidget = const WishlistTab();
            case ProfileTabState():
              selectedIndex = 3;
              bodyWidget = const ProfileTab();
          }
          return Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (index) {
                setState(() {
                  viewModel.onTabClick(index);
                });
              },
              items: [
                BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: selectedIndex == 0
                      ? const CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(Icons.home),
                        )
                      : const Icon(Icons.home_outlined),
                  label: '',
                ),
                BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: selectedIndex == 1
                      ? const CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(Icons.category_outlined),
                        )
                      : const Icon(Icons.category_outlined),
                  label: '',
                ),
                BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: selectedIndex == 2
                      ? const CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(Icons.favorite_outline),
                        )
                      : const Icon(Icons.favorite_outline),
                  label: '',
                ),
                BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: selectedIndex == 3
                      ? const CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(Icons.person_outline),
                        )
                      : const Icon(Icons.person_outline),
                  label: '',
                ),
              ],
            ),
            body: bodyWidget,
          );
        });
  }
}
