import 'package:flutter/material.dart';
import 'package:waheed_app/core/components/app_image.dart';

class Talabat extends StatefulWidget {
  const Talabat({super.key});

  @override
  State<Talabat> createState() => _TalabatState();
}

class _TalabatState extends State<Talabat> {
  int SelectedIndex = 0;
  final List<String> Categories = ['الكل', 'قيد المعالجة', 'تم التسليم'];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'طلباتي',
            style: TextStyle(
              color: Color(0xff000000),
              fontSize: 18,
              fontWeight: FontWeight.w500,
              fontFamily: 'IBMPlexSansArabic',
            ),
          ),
          centerTitle: true,
        ),

        body: Column(
          children: [
            SizedBox(height: 24),

            Row(
              children: [
                GestureDetector(
                  child: Container(
                    padding: EdgeInsets.all(8),
                    width: 132,
                    height: 36,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(99),

                      border: Border.all(
                        style: BorderStyle.solid,
                        color: Color(0xff000000).withValues(alpha: .20),
                      ),
                    ),
                    child: Row(
                      textDirection: TextDirection.rtl,
                      children: [
                        AppImage(
                          image: 'iconsax-calendar.svg',
                          width: 20,
                          height: 20,
                        ),

                        SizedBox(width: 8),

                        Text(
                          'كل الفترات',
                          style: TextStyle(
                            color: Color(0xff334155),
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            fontFamily: 'IBMPlexSansArabic',
                          ),
                        ),

                        Spacer(),
                        AppImage(
                          image: 'iconsax-arrow-down4.svg',
                          width: 16,
                          height: 16,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
