import 'package:flutter/material.dart';
import 'package:waheed_app/core/components/app_image.dart';

import '../../../core/components/item_gridView_home.dart';

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  late final List<bool> favorites = List.filled(clothes.length, false);

  final List<Map<String, dynamic>> clothes = [
    {
      "image": "view2.png",
      "title": "بدلة كلاسيكية سوداء",
      "subTitle": "صوف إيطالي فاخر",
      "price": "2,450",
      "name": "إيجار",
    },
    {
      "image": "view1.jpg",
      "title": "بدلة كلاسيكية سوداء",
      "subTitle": "صوف إيطالي فاخر",
      "price": "2,450",
      "name": "إيجار",
    },

    {
      "image": "view2.png",
      "title": "بدلة كلاسيكية سوداء",
      "subTitle": "صوف إيطالي فاخر",
      "price": "2,450",
      "name": "إيجار",
    },
    {
      "image": "view1.jpg",
      "title": "بدلة كلاسيكية سوداء",
      "subTitle": "صوف إيطالي فاخر",
      "price": "2,450",
      "name": "إيجار",
    },

    {
      "image": "view2.png",
      "title": "بدلة كلاسيكية سوداء",
      "subTitle": "صوف إيطالي فاخر",
      "price": "2,450",
      "name": "إيجار",
    },
    {
      "image": "view1.jpg",
      "title": "بدلة كلاسيكية سوداء",
      "subTitle": "صوف إيطالي فاخر",
      "price": "2,450",
      "name": "إيجار",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffEAEAEA),
        appBar: AppBar(
          backgroundColor: Color(0xffFFFFFF),
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(99),
                  border: Border.all(color: const Color(0xffE5E7EB)),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x14000000),
                      blurRadius: 16,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: AppImage(image: 'arrow-left.svg', width: 24, height: 24),
              ),
            ),
          ),
          title: Text(
            'المفضلة',
            style: TextStyle(
              color: Color(0xff000000),
              fontSize: 18,
              fontWeight: FontWeight.w500,
              fontFamily: 'IBMPlexSansArabic',
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 32),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: GridView.builder(
                  itemCount: clothes.length,

                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,

                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    childAspectRatio: 0.55,
                  ),
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,

                  itemBuilder: (context, index) => ItemGridviewHome(
                    image: clothes[index]["image"],
                    title: clothes[index]["title"],
                    subTitle: clothes[index]["subTitle"],
                    price: clothes[index]["price"],
                    name: clothes[index]["name"],
                    heartIcon: 'black_heart.svg',
                  ),
                ),
              ),

              SizedBox(height: 135),
            ],
          ),
        ),
      ),
    );
  }
}
