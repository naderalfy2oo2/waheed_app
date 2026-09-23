import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed_app/core/components/app_button.dart';
import 'package:waheed_app/core/components/app_image.dart';
import 'package:waheed_app/services/helper_methods.dart';

import '../home/home.dart';
import '../home/talabat.dart';

class ConfirmOrderPage extends StatelessWidget {
  const ConfirmOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(170),
          child: AppBar(
            automaticallyImplyLeading: false,
            elevation: 0,
            backgroundColor: Colors.transparent,
            flexibleSpace: ClipRect(
              child: Stack(
                children: [
                  Container(
                    width: double.infinity.w,
                    height: double.infinity.h,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Color(0xff314158), Color(0xff0A0A0A)],
                      ),
                    ),
                  ),

                  Positioned(
                    top: -40,
                    right: -25,
                    child: Container(
                      width: 140.w,
                      height: 140.h,
                      decoration: BoxDecoration(
                        color: const Color(0xff343632),
                        borderRadius: BorderRadius.circular(100).r,
                      ),
                    ),
                  ),

                  Positioned(
                    bottom: -40,
                    left: -40,

                    child: Container(
                      width: 145.w,
                      height: 145.h,
                      decoration: BoxDecoration(
                        color: Color(0xff29323A),
                        borderRadius: BorderRadius.circular(100).r,
                      ),
                    ),
                  ),

                  Column(
                    children: [
                      SizedBox(height: 17.h),

                      Center(
                        child: Container(
                          width: 80.w,
                          height: 80.h,
                          decoration: BoxDecoration(
                            color: Color(0xffC9A961),
                            borderRadius: BorderRadius.circular(26843500).r,

                            boxShadow: [
                              BoxShadow(
                                color: Color(0xff000000),
                                offset: Offset(0, 25),
                                blurRadius: 50.r,
                                spreadRadius: -12.r,
                              ),
                            ],
                          ),
                          child: AppImage(
                            image: 'true.svg',
                            width: 40.w,
                            height: 40.h,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ),

                      SizedBox(height: 10.h),

                      Text(
                        'تم تأكيد الحجز',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'IBMPlexSansArabic',
                        ),
                      ),

                      SizedBox(height: 4.h),

                      Text(
                        'استلم بدلتك من الفرع في الموعد المحدد',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          color: Color(0xffFFFFFF).withOpacity(0.8),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'IBMPlexSansArabic',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),

        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 24.h),

              Center(
                child: Container(
                  padding: EdgeInsets.all(24),
                  width: 370.w,
                  height: 431.h,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(24).r,

                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff000000),
                        offset: Offset(0, 8),
                        blurRadius: 10.r,
                        spreadRadius: -6.r,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 20.h),

                      Row(
                        children: [
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'رقم الطلب\n',
                                  style: TextStyle(
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'IBMPlexSansArabic',

                                    color: Color(0xff314158),
                                  ),
                                ),

                                TextSpan(
                                  text: 'EQ-862334',
                                  style: TextStyle(
                                    color: Color(0xff000000),
                                    fontSize: 16.sp,

                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'IBMPlexSansArabic',
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Spacer(),

                          Row(
                            children: [
                              Text(
                                ' نسخ',
                                style: TextStyle(
                                  color: Color(0xff000000),

                                  fontSize: 14.sp,

                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'IBMPlexSansArabic',
                                ),
                              ),

                              IconButton(
                                onPressed: () {},
                                icon: AppImage(
                                  image: 'copy.svg',
                                  width: 14.w,
                                  height: 14.h,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      AppImage(image: 'scan.svg', width: 295.w, height: 280.h),

                      SizedBox(height: 12.h),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'اعرض هذا الرمز في الفرع للاستلام',
                            style: TextStyle(
                              color: Color(0xff314158),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'IBMPlexSansArabic',
                            ),
                          ),

                          SizedBox(width: 6.w),
                          AppImage(
                            image: 'scan_color.svg',
                            width: 14.w,
                            height: 14.h,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 16.h),

              Container(
                padding: EdgeInsets.all(16),
                width: 370.w,
                height: 245.h,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(16).r,

                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff000000),
                      offset: Offset(0, 1),
                      blurRadius: 2.r,
                      spreadRadius: -1.r,
                    ),

                    BoxShadow(
                      color: Color(0xff000000),
                      offset: Offset(0, 1),
                      blurRadius: 3.r,
                      spreadRadius: 0.r,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(height: 16.h),

                    Row(
                      children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'فرع الاستلام\n',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'IBMPlexSansArabic',
                                ),
                              ),

                              TextSpan(
                                text: 'الفرع الرئيسي – ميت غمر\n',
                                style: TextStyle(
                                  color: Color(0xff0A0A0A),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'IBMPlexSansArabic',
                                ),
                              ),

                              TextSpan(
                                text:
                                    'ميت غمر، شارع المعاهده بجوار كلية التربية النوعية',
                                style: TextStyle(
                                  color: Color(0xff62748E),
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'IBMPlexSansArabic',
                                ),
                              ),
                            ],
                          ),
                        ),

                        Spacer(),

                        Container(
                          width: 40.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14).r,

                            color: Color(0xff1E3A8A).withOpacity(0.063),
                          ),
                          child: AppImage(
                            image: 'shop.svg',
                            width: 20.w,
                            height: 20.h,
                            color: Color(0xff314158),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 13.h),

                    Row(
                      children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'موعد الاستلام\n',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'IBMPlexSansArabic',
                                ),
                              ),

                              TextSpan(
                                text: 'الأربعاء، ٢٠ مايو\n',
                                style: TextStyle(
                                  color: Color(0xff0A0A0A),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'IBMPlexSansArabic',
                                ),
                              ),

                              TextSpan(
                                text: '١١:٠٠ ص',
                                style: TextStyle(
                                  color: Color(0xff62748E),
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'IBMPlexSansArabic',
                                ),
                              ),
                            ],
                          ),
                        ),

                        Spacer(),

                        Container(
                          width: 40.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14).r,

                            color: Color(0xff1E3A8A).withOpacity(0.063),
                          ),
                          child: AppImage(
                            image: 'clender_icon.svg',
                            width: 20.w,
                            height: 20.h,
                            color: Color(0xff314158),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 13.h),

                    Row(
                      children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'حالة التفصيل\n',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'IBMPlexSansArabic',
                                ),
                              ),

                              TextSpan(
                                text: 'قيد التحضير\n',
                                style: TextStyle(
                                  color: Color(0xff0A0A0A),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'IBMPlexSansArabic',
                                ),
                              ),

                              TextSpan(
                                text: 'جاهز خلال ٣ أيام',
                                style: TextStyle(
                                  color: Color(0xffC9A961),
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'IBMPlexSansArabic',
                                ),
                              ),
                            ],
                          ),
                        ),

                        Spacer(),

                        Container(
                          width: 40.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14).r,

                            color: Color(0xffC9A961).withOpacity(0.0125),
                          ),
                          child: AppImage(
                            image: 'scissor.svg',
                            width: 20.w,
                            height: 20.h,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 79.h),
            ],
          ),
        ),

        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    goTo(page: HomePage());
                  },
                  child: Container(
                    width: 180.w,
                    height: 56.h,
                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(16).r,
                      border: Border.all(color: Color(0xff000000)),

                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff000000),
                          offset: Offset(0, 2),
                          blurRadius: 8.r,
                          spreadRadius: 0.r,
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppImage(
                          image: 'home.svg',
                          width: 20.w,
                          height: 20.h,
                          color: Color(0xff000000),
                        ),
                        SizedBox(width: 10.w),

                        Text(
                          'الرئيسية',
                          style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 16.sp,

                            fontWeight: FontWeight.w600,
                            fontFamily: 'IBMPlexSansArabic',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(width: 10.w),

              Expanded(
                child: AppButton(
                  title: 'تتبع الطلب',
                  onPressed: () {
                    goTo(page: TalabatPage());
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
