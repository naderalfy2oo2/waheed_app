import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:waheed_app/core/components/app_image.dart';
import 'package:waheed_app/core/components/app_input.dart';
import 'package:waheed_app/core/components/custom_container_home.dart';

import '../../core/components/custom_row_text_home.dart';
import '../../core/components/item_gridView_home.dart';
import 'filter_sheet.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int countIndex = 0;

  final List<String> image = [
    'assets/images/home.png',
    'assets/images/home.png',
    'assets/images/home.png',
  ];

  final List<Map<String, dynamic>> clothes = [
    {
      "image": "blazer.jpg",
      "title": "بدلة كلاسيكية سوداء",
      "subTitle": "صوف إيطالي فاخر",
      "price": "2,450",
      "name": "إيجار",
    },
    {
      "image": "suit.jpg",
      "title": "بدلة كلاسيكية سوداء",
      "subTitle": "صوف إيطالي فاخر",
      "price": "2,450",
      "name": "إيجار",
    },

    {
      "image": "blazer.jpg",
      "title": "بدلة كلاسيكية سوداء",
      "subTitle": "صوف إيطالي فاخر",
      "price": "2,450",
      "name": "إيجار",
    },
    {
      "image": "suit.jpg",
      "title": "بدلة كلاسيكية سوداء",
      "subTitle": "صوف إيطالي فاخر",
      "price": "2,450",
      "name": "إيجار",
    },

    {
      "image": "blazer.jpg",
      "title": "بدلة كلاسيكية سوداء",
      "subTitle": "صوف إيطالي فاخر",
      "price": "2,450",
      "name": "إيجار",
    },
    {
      "image": "suit.jpg",
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
          backgroundColor: Colors.white,
          title: Row(
            children: [
              AppImage(image: 'Vector 3.svg', width: 32, height: 32),
              SizedBox(width: 4),

              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'WAHEED HASSAN\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w800,
                      ),
                    ),

                    TextSpan(
                      text: 'MEN’S SUITS',

                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          actions: [
            SizedBox(
              width: 50,
              height: 50,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.all(8),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      style: BorderStyle.solid,
                      color: Color(0xffECECEC),
                    ),
                  ),

                  child: AppImage(image: 'Frame.svg', width: 150, height: 150),
                ),
              ),
            ),
          ],
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 25),
              Directionality(
                textDirection: TextDirection.rtl,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Builder(
                    builder: (context) {
                      return AppInput(
                        filled: true,
                        fillColor: Color(0xffEAEAEA),
                        labelText: 'البحث عن منتج...',
                        preifixIcon: AppImage(image: 'search.svg'),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            showBottomSheet(
                              context: context,
                              builder: (context) => FilterSheet(),
                            );
                          },
                          child: AppImage(image: 'tabbar.svg'),
                        ),
                      );
                    },
                  ),
                ),
              ),

              SizedBox(height: 26),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: CarouselSlider.builder(
                  itemCount: image.length,
                  carouselController: CarouselSliderController(),
                  itemBuilder: (context, index, realIndex) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: SizedBox(
                        width: double.infinity,
                        height: 220,

                        child: AppImage(
                          image: 'home.png',
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },

                  options: CarouselOptions(
                    height: 220,
                    viewportFraction: 1,

                    autoPlay: true,
                    enlargeCenterPage: false,

                    onPageChanged: (index, reason) {
                      setState(() {
                        countIndex = index;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: 12),

              Padding(
                padding: const EdgeInsets.only(top: 1),
                child: AnimatedSmoothIndicator(
                  activeIndex: countIndex,
                  count: image.length,

                  effect: WormEffect(
                    dotWidth: 8,
                    dotHeight: 8,
                    dotColor: Color(0xffB5B5B5),
                    activeDotColor: Color(0xff000000),
                  ),
                ),
              ),

              SizedBox(height: 16),

              CustomRowTextHome(
                title: 'تسوق حسب التصنيف',
                subtitle: 'عرض الكل',
              ),

              SizedBox(height: 15),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  textDirection: TextDirection.rtl,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomContainerHome(image: 'Jacket.svg', title: 'بدلات'),

                    SizedBox(width: 8),

                    CustomContainerHome(image: 'Shirts.svg', title: 'قمصان'),
                  ],
                ),
              ),

              SizedBox(height: 8),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  textDirection: TextDirection.rtl,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomContainerHome(
                      image: 'accessories.svg',
                      title: 'اكسسوارات',
                    ),

                    SizedBox(width: 8),

                    CustomContainerHome(image: 'shose.svg', title: 'أحذية'),
                  ],
                ),
              ),

              CustomRowTextHome(title: 'أحدث المنتجات', subtitle: 'عرض المزيد'),

              SizedBox(height: 16),

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
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
