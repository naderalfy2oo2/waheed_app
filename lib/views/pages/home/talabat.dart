import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/components/app_image.dart';
import '../../../core/order_card.dart';

class TalabatPage extends StatefulWidget {
  const TalabatPage({super.key});

  @override
  State<TalabatPage> createState() => _TalabatPageState();
}

class _TalabatPageState extends State<TalabatPage> {
  int selectedIndex = 0;
  final List Categories = ['الكل', 'قيد المعالجة', 'تم التسليم', 'ملغي'];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            'طلباتي',
            style: TextStyle(
              color: Color(0xff000000),
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
              fontFamily: 'IBMPlexSansArabic',
            ),
          ),
          centerTitle: true,
        ),

        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 24.h),

              Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(8),
                      width: 132.w,
                      height: 36.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(99).r,

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
                            width: 20.w,
                            height: 20.h,
                          ),

                          SizedBox(width: 8.w),

                          Text(
                            'كل الفترات',
                            style: TextStyle(
                              color: Color(0xff334155),
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                              fontFamily: 'IBMPlexSansArabic',
                            ),
                          ),

                          Spacer(),
                          AppImage(
                            image: 'arrow-down.svg',
                            width: 16.w,
                            height: 16.h,
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(width: 8.w),

                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,

                      child: Wrap(
                        spacing: 6,
                        runSpacing: 12,
                        textDirection: TextDirection.rtl,

                        children: List.generate(Categories.length, (index) {
                          final bool isSelected = selectedIndex == index;
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: Container(
                              width: 110.w,
                              height: 41.h,

                              decoration: BoxDecoration(
                                color: isSelected
                                    ? Color(0xff000000)
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(16).r,
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
                                    fontSize: 14.sp,
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

              SizedBox(height: 24.h),

              Align(
                alignment: AlignmentGeometry.centerRight,
                child: Text(
                  'مايو ٢٠٢٦',
                  style: TextStyle(
                    color: Color(0xff90A1B9),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'IBMPlexSansArabic',
                  ),
                ),
              ),

              SizedBox(height: 16.h),

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
                                borderRadius: BorderRadius.circular(14).r,
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
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'IBMPlexSansArabic',
                              ),
                            ),
                          ),

                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14).r,
                              ),

                              backgroundColor: Color(0xff000000),
                            ),
                            onPressed: () {},
                            child: Text(
                              "تتبع الطلب",

                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 14.sp,
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
                                borderRadius: BorderRadius.circular(14).r,
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
                                fontSize: 14.sp,
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
                              borderRadius: BorderRadius.circular(14).r,
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
                              fontSize: 14.sp,
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
    );
  }
}
