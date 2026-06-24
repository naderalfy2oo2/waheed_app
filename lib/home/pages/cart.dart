import 'package:flutter/material.dart';
import 'package:waheed_app/core/components/app_container_color.dart';
import 'package:waheed_app/core/components/app_container_product.dart';
import 'package:waheed_app/core/components/app_image.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  Color selectedColor = const Color(0xff3F4651);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffEAEAEA),

        appBar: AppBar(
          backgroundColor: Color(0xffFFFFFF),
          title: Text(
            'تفاصيل المنتج',
            style: TextStyle(
              color: Color(0xff000000),
              fontSize: 18,
              fontWeight: FontWeight.w500,
              fontFamily: 'IBMPlexSansArabic',
            ),
          ),

          centerTitle: true,

          leading: SizedBox(
            width: 48,
            height: 48,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(99),
                      border: Border.all(
                        style: BorderStyle.solid,
                        color: Color(0xffECECEC),
                      ),
                    ),

                    child: Center(
                      child: AppImage(
                        image: 'shopping-cart.svg',
                        width: 24,
                        height: 24,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentGeometry.topLeft,
                    child: Container(
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                        color: Color(0xff000000),

                        borderRadius: BorderRadius.circular(99),
                      ),
                      child: Text(
                        textAlign: TextAlign.center,
                        '2',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'IBMPlexSansArabic',
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          actions: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),

                  border: Border.all(
                    color: Color(0xffECECEC),

                    style: BorderStyle.solid,
                  ),
                  shape: BoxShape.circle,
                ),
                child: AppImage(image: 'arrow-left.svg', width: 24, height: 24),
              ),
            ),
          ],
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    SizedBox(height: 24),

                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: AppImage(
                            image: 'blazer.png',
                            width: double.infinity,
                            height: 374,
                            fit: BoxFit.cover,
                          ),
                        ),

                        Positioned(
                          top: 8,
                          right: 8,
                          child: Container(
                            width: 138,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Color(0xffC9A961).withOpacity(.8),
                              borderRadius: BorderRadius.circular(99),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "تفصيل علي المقاس",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(width: 4),

                                AppImage(
                                  image: 'iconsax-tick-circle.svg',
                                  width: 16,
                                  height: 16,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 16),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: AppImage(
                            image: 'view1.jpg',
                            width: 82,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),

                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: AppImage(
                            image: 'view2.jpg',
                            width: 82,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),

                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: AppImage(
                            image: 'view3.jpg',
                            width: 82,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),

                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: AppImage(
                            image: 'view4.jpg',
                            width: 82,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 24),

              Container(
                width: double.infinity,
                constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Align(
                        alignment: AlignmentGeometry.topRight,
                        child: Text(
                          'بدلة كلاسيكية',
                          style: TextStyle(
                            color: Color(0xffC9A961),
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'IBMPlexSansArabic',
                          ),
                        ),
                      ),

                      SizedBox(height: 5),

                      Align(
                        alignment: AlignmentGeometry.topRight,
                        child: Text(
                          'بدلة رجالية رصاصي فاخرة',
                          style: TextStyle(
                            color: Color(0xff0F172B),
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'IBMPlexSansArabic',
                          ),
                        ),
                      ),

                      Row(
                        textDirection: TextDirection.rtl,

                        children: [
                          Directionality(
                            textDirection: TextDirection.rtl,
                            child: Text(
                              '(124تقيم)',
                              style: TextStyle(
                                color: Color(0xff62748E),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'IBMPlexSansArabic',
                              ),
                            ),
                          ),
                          SizedBox(width: 8),

                          Text(
                            '4.8',
                            style: TextStyle(
                              color: Color(0xff0A0A0A),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'IBMPlexSansArabic',
                            ),
                          ),

                          AppImage(image: 'Star.svg', width: 14, height: 14),
                        ],
                      ),

                      SizedBox(height: 16),

                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: Row(
                          children: [
                            AppContainerProduct(
                              Icon: 'medal.svg',
                              title: 'جودة عالية',
                              color: Color(0xffF8FAFC),
                            ),

                            SizedBox(width: 8),

                            AppContainerProduct(
                              Icon: 'truck-fast.svg',
                              title: 'توصيل 3–7 أيام',
                              color: Color(0xffF8FAFC),
                            ),

                            SizedBox(width: 8),

                            AppContainerProduct(
                              Icon: 'shield.svg',
                              title: 'ضمان التفصيل',
                              color: Color(0xffF8FAFC),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 18),

                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: Row(
                          children: [
                            Text(
                              'اللون',
                              style: TextStyle(
                                color: Color(0xff0A0A0A),

                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'IBMPlexSansArabic',
                              ),
                            ),

                            Spacer(),

                            Text(
                              'رصاصي داكن',
                              style: TextStyle(
                                color: Color(0xff62748E),

                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'IBMPlexSansArabic',
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 12),

                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: Row(
                          children: [
                            AppContainerColor(
                              color: Color(0xff3F4651),
                              isSelected:
                                  selectedColor == const Color(0xff3F4651),
                              onTap: () {
                                setState(() {
                                  selectedColor = const Color(0xff3F4651);
                                });
                              },
                            ),

                            SizedBox(width: 12),

                            AppContainerColor(
                              color: Color(0xff172554),
                              isSelected:
                                  selectedColor == const Color(0xff172554),
                              onTap: () {
                                setState(() {
                                  selectedColor = const Color(0xff172554);
                                });
                              },
                            ),

                            SizedBox(width: 12),

                            AppContainerColor(
                              color: Color(0xff1A1A1A),
                              isSelected:
                                  selectedColor == const Color(0xff1A1A1A),
                              onTap: () {
                                setState(() {
                                  selectedColor = const Color(0xff1A1A1A);
                                });
                              },
                            ),

                            SizedBox(width: 12),

                            AppContainerColor(
                              color: Color(0xffC9B79C),
                              isSelected:
                                  selectedColor == const Color(0xffC9B79C),
                              onTap: () {
                                setState(() {
                                  selectedColor = const Color(0xffC9B79C);
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
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
