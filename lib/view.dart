import 'package:flutter/material.dart';

import 'core/components/app_image.dart';

import 'views/pages/home/cart.dart';
import 'views/pages/home/home.dart';
import 'views/pages/home/profile.dart';
import 'views/pages/home/talabat.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int CurrentIndex = 0;

  final list = [
    _model(
      icon: 'home.svg',
      selectedIcon: 'black_home.svg',
      page: Home(),
      title: 'الرئيسية',
    ),
    _model(
      icon: 'talabat.svg',
      selectedIcon: 'black_talabt.svg',
      page: Talabat(),
      title: 'طلباتي',
    ),
    _model(
      icon: 'shopping-cart.svg',
      selectedIcon: 'black_cart.svg',
      page: Cart(),
      title: 'العربة',
    ),
    _model(
      icon: 'profile.svg',
      selectedIcon: 'black_profile.svg',
      page: Profile(),
      title: 'حسابي',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[CurrentIndex].page,

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        width: double.infinity,

        decoration: BoxDecoration(color: Colors.white),

        child: BottomNavigationBar(
          selectedItemColor: Colors.black,

          backgroundColor: Colors.transparent,

          elevation: 0,

          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            CurrentIndex = value;
            setState(() {});
          },
          currentIndex: CurrentIndex,
          selectedFontSize: 12,
          unselectedFontSize: 12,

          items: List.generate(
            list.length,
            (index) => BottomNavigationBarItem(
              icon: AppImage(
                image: CurrentIndex == index
                    ? list[index].selectedIcon
                    : list[index].icon,
              ),
              label: list[index].title,
            ),
          ),
        ),
      ),
    );
  }
}

class _model {
  final String icon;
  final String selectedIcon;
  final Widget page;
  final String title;

  _model({
    required this.icon,
    required this.selectedIcon,
    required this.page,
    required this.title,
  });
}
