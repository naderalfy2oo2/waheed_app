import 'package:flutter/material.dart';
import 'package:waheed_app/home/cart.dart';
import 'package:waheed_app/home/pages/talabat.dart';

import 'core/components/app_image.dart';
import 'home/pages/detail_product.dart';
import 'home/pages/home.dart';
import 'home/pages/profile.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int CurrentIndex = 0;

  final list = [
    _model(icon: 'home.svg', page: Home(), title: 'الرئيسية'),
    _model(icon: 'talabat.svg', page: Talabat(), title: 'طلباتي'),
    _model(icon: 'shopping-cart.svg', page: Cart(), title: 'العربة'),
    _model(icon: 'profile.svg', page: Profile(), title: 'حسابي'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[CurrentIndex].page,

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        width: double.infinity,

        decoration: BoxDecoration(color: Colors.white),

        child: Directionality(
          textDirection: TextDirection.rtl,

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
                  image: list[index].icon,
                  color: CurrentIndex == index ? Colors.black : null,
                ),
                label: list[index].title,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _model {
  final String icon;
  final Widget page;
  final String title;

  _model({required this.icon, required this.page, required this.title});
}
