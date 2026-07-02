import 'package:flutter/material.dart';
import '../../../core/components/app_image.dart';
import '../../../core/order_card.dart';

class Talabat extends StatefulWidget {
  const Talabat({super.key});

  @override
  State<Talabat> createState() => _TalabatState();
}

class _TalabatState extends State<Talabat> {
  int SelectedIndex = 0;
  final List<String> Categories = [
    'الكل',
    'قيد المعالجة',
    'تم التسليم',
    'ملغي',
  ];
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

        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 24),

                Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          textDirection: TextDirection.rtl,
                          children: [
                            AppImage(
                              image: 'calendar.svg',
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
                              image: 'arrow-down.svg',
                              width: 16,
                              height: 16,
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(width: 8),

                    Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,

                        child: Wrap(
                          spacing: 6,
                          runSpacing: 12,
                          textDirection: TextDirection.rtl,

                          children: List.generate(Categories.length, (index) {
                            final bool isSelected = SelectedIndex == index;
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  SelectedIndex = index;
                                });
                              },
                              child: Container(
                                width: 110,
                                height: 41,

                                decoration: BoxDecoration(
                                  color: isSelected
                                      ? Color(0xff000000)
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(16),
                                  border: Border.all(
                                    style: BorderStyle.solid,

                                    color: Color(
                                      0xff000000,
                                    ).withValues(alpha: .20),
                                  ),

                                  boxShadow: isSelected
                                      ? [BoxShadow(color: Colors.transparent)]
                                      : [],
                                ),
                                child: Center(
                                  child: Text(
                                    Categories[index],
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'IBMPlexSansArabic',
                                      fontWeight: FontWeight.w900,
                                      color: isSelected
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 24),

                Align(
                  alignment: AlignmentGeometry.centerRight,
                  child: Text(
                    'مايو ٢٠٢٦',
                    style: TextStyle(
                      color: Color(0xff90A1B9),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'IBMPlexSansArabic',
                    ),
                  ),
                ),

                SizedBox(height: 16),

                Expanded(
                  child: ListView.builder(
                    itemCount: 5,

                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return OrderCard(
                          title: "قيد التوصيل",
                          TextColor: Color(0xff1E3A8A),

                          BackgroundColorContainer: Color(
                            0xff1E3A8A1A,
                          ).withValues(alpha: .10),
                          image: 'truck-fast.svg',
                          buttons: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                backgroundColor: Color(
                                  0xff0000001A,
                                ).withValues(alpha: .10),
                                foregroundColor: Color(0xff000000),
                              ),
                              onPressed: () {},
                              child: Text(
                                "عرض التفاصيل",

                                style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'IBMPlexSansArabic',
                                ),
                              ),
                            ),

                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                ),

                                backgroundColor: Color(0xff000000),
                              ),
                              onPressed: () {},
                              child: const Text(
                                "تتبع الطلب",

                                style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'IBMPlexSansArabic',
                                ),
                              ),
                            ),
                          ],
                        );
                      }

                      if (index == 1) {
                        return OrderCard(
                          title: "تم التسليم",

                          BackgroundColorContainer: Color(0xffDCFCE7),
                          image: 'correct_green_color.svg',
                          buttons: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                backgroundColor: Color(
                                  0xff0000001A,
                                ).withValues(alpha: .10),
                                foregroundColor: Color(0xff000000),
                              ),
                              onPressed: () {},
                              child: Text(
                                "عرض التفاصيل",

                                style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'IBMPlexSansArabic',
                                ),
                              ),
                            ),
                          ],
                        );
                      }

                      return OrderCard(
                        title: "تم التسليم",

                        BackgroundColorContainer: Color(0xffDCFCE7),
                        image: 'correct_green_color.svg',
                        buttons: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),
                              backgroundColor: Color(
                                0xff0000001A,
                              ).withValues(alpha: .10),
                              foregroundColor: Color(0xff000000),
                            ),
                            onPressed: () {},
                            child: Text(
                              "قيد المعاجة ",

                              style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'IBMPlexSansArabic',
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
