import 'package:flutter/material.dart';

import '../core/components/app_image.dart';

import 'pages/home/cart.dart';
import 'pages/home/home.dart';
import 'pages/home/profile.dart';
import 'pages/home/talabat.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;

  final list = [
    _Model(
      icon: 'home.svg',
      selectedIcon: 'black_home.svg',
      page: Home(),
      title: 'الرئيسية',
    ),
    _Model(
      icon: 'talabat.svg',
      selectedIcon: 'black_talabt.svg',
      page: Talabat(),
      title: 'طلباتي',
    ),
    _Model(
      icon: 'shopping-cart.svg',
      selectedIcon: 'black_cart.svg',
      page: Cart(),
      title: 'العربة',
    ),
    _Model(
      icon: 'profile.svg',
      selectedIcon: 'black_profile.svg',
      page: Profile(),
      title: 'حسابي',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[currentIndex].page,

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
            currentIndex = value;
            setState(() {});
          },
          currentIndex: currentIndex,
          selectedFontSize: 12,
          unselectedFontSize: 12,

          items: List.generate(
            list.length,
            (index) => BottomNavigationBarItem(
              icon: AppImage(
                image: currentIndex == index
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

class _Model {
  final String icon;
  final String selectedIcon;
  final Widget page;
  final String title;

  _Model({
    required this.icon,
    required this.selectedIcon,
    required this.page,
    required this.title,
  });
}
