import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed_app/core/components/app_bar_widget.dart';
import 'package:waheed_app/core/components/app_image.dart';
import 'package:waheed_app/core/components/bottom_sheet.dart';
import 'package:waheed_app/services/helper_methods.dart';
import 'package:waheed_app/views/home/delivery_flow/order_successfully_confirmed.dart';
import '../../../core/components/address_ bottom_ sheet.dart';

class RevisionOrderPage extends StatefulWidget {
  const RevisionOrderPage({super.key});

  @override
  State<RevisionOrderPage> createState() => _RevisionOrderPageState();
}

class _RevisionOrderPageState extends State<RevisionOrderPage> {
  int selectedMethod = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        appBar: AppBarWidget(title: 'مراجعة الطلب', icon: 'arrow-left.svg'),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 21.h),

                Row(
                  children: [
                    AppImage(
                      image: 'truck_blue.svg',
                      width: 20.w,
                      height: 20.h,
                    ),

                    SizedBox(width: 8.w),

                    Text(
                      'طريقة الاستلام',
                      style: TextStyle(
                        color: Color(0xff314158),
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'IBMPlexSansArabic',
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 16.h),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedMethod = 0;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(8),
                        width: 177.w,
                        height: 150.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16).r,
                          color: Color(0xffFFFFFF),

                          border: Border.all(
                            color: selectedMethod == 0
                                ? Color(0xff314158)
                                : Colors.transparent,
                            width: 1.5.w,
                          ),

                          boxShadow: [
                            BoxShadow(
                              color: Color(0x10000000),
                              blurRadius: 2.r,
                              offset: Offset(0, 2),
                              spreadRadius: 0.r,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Align(
                              alignment: AlignmentGeometry.topLeft,
                              child: Container(
                                width: 37.w,
                                height: 19.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(99).r,
                                  color: Color(0xffF8F4EB),
                                ),
                                child: Center(
                                  child: Text(
                                    'مجاناً',
                                    style: TextStyle(
                                      color: Color(0xffC9A961),
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'IBMPlexSansArabic',
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            Align(
                              alignment: AlignmentGeometry.centerRight,
                              child: Container(
                                padding: EdgeInsets.all(8),
                                margin: EdgeInsets.all(8),
                                width: 40.w,
                                height: 40.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12).r,
                                  color: Color(0xffF1F5F9),
                                ),
                                child: Center(
                                  child: AppImage(
                                    image: 'shop.svg',
                                    width: 24.w,
                                    height: 24.h,
                                    color: Color(0xff314158),
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(height: 12.h),

                            Align(
                              alignment: AlignmentGeometry.centerRight,
                              child: Text(
                                'استلام من الفرع',

                                style: TextStyle(
                                  color: Color(0xff0A0A0A),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'IBMPlexSansArabic',
                                ),
                              ),
                            ),

                            SizedBox(height: 3.h),

                            Align(
                              alignment: AlignmentGeometry.centerRight,
                              child: Text(
                                'جاهز خلال ٣ أيام',

                                style: TextStyle(
                                  color: Color(0xff62748E),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'IBMPlexSansArabic',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(width: 16.w),

                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedMethod = 1;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(8),
                        width: 177.w,
                        height: 150.h,
                        decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(16).r,

                          border: Border.all(
                            color: selectedMethod == 1
                                ? Color(0xff314158)
                                : Colors.transparent,
                            width: 1.5.w,
                          ),

                          boxShadow: [
                            BoxShadow(
                              color: Color(0x10000000),
                              blurRadius: 2.r,
                              offset: Offset(0, 2),
                              spreadRadius: 0.r,
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 16.h),

                            Align(
                              alignment: AlignmentGeometry.topRight,
                              child: Container(
                                padding: EdgeInsets.all(8),
                                width: 40.w,
                                height: 40.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12).r,

                                  gradient: LinearGradient(
                                    begin: Alignment(-0.85, -0.53),
                                    end: Alignment(0.85, 0.53),
                                    colors: [
                                      Color(0xFF314158),
                                      Color(0xFF6A8CBE),
                                    ],
                                    stops: [0.2577, 0.9329],
                                  ),
                                ),
                                child: AppImage(
                                  image: 'truck_blue.svg',
                                  width: 30.w,
                                  height: 30.h,
                                  color: Color(0xffFFFFFF),
                                ),
                              ),
                            ),

                            SizedBox(height: 12.h),

                            Align(
                              alignment: AlignmentGeometry.centerRight,
                              child: Text(
                                'توصيل للمنزل',

                                style: TextStyle(
                                  color: Color(0xff0A0A0A),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'IBMPlexSansArabic',
                                ),
                              ),
                            ),

                            SizedBox(height: 3.h),

                            Align(
                              alignment: AlignmentGeometry.centerRight,
                              child: Text(
                                '٣–٧ أيام',

                                style: TextStyle(
                                  color: Color(0xff62748E),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'IBMPlexSansArabic',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 16.h),

                Row(
                  children: [
                    AppImage(
                      image: 'location.svg',
                      width: 20.w,
                      height: 20.h,
                      color: Color(0xff000000),
                    ),

                    SizedBox(width: 8.w),

                    Text(
                      'عنوان التوصيل',
                      style: TextStyle(
                        color: Color(0xff314158),
                        fontFamily: 'IBMPlexSansArabic',

                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    Spacer(),

                    TextButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          builder: (context) {
                            return AdressBottomSheet();
                          },
                        );
                      },
                      child: Text(
                        'تغيير',
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontFamily: 'IBMPlexSansArabic',

                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 16.h),

                Container(
                  width: 370.w,
                  height: 100.h,
                  padding: EdgeInsets.all(10),

                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(16).r,
                    border: Border.all(color: Color(0xffEAEAEA)),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 40.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                          color: Color(0xff0000000).withValues(alpha: 0.06),
                          borderRadius: BorderRadius.circular(14).r,
                        ),
                        child: Center(
                          child: AppImage(
                            image: 'home_black.svg',
                            width: 20.w,
                            height: 20.h,
                          ),
                        ),
                      ),

                      SizedBox(width: 12.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'المنزل',
                                  style: TextStyle(
                                    color: Color(0xff0A0A0A),
                                    fontSize: 18.sp,
                                    fontFamily: 'IBMPlexSansArabic',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),

                                SizedBox(width: 12.w),

                                Container(
                                  width: 51.w,
                                  height: 22.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(999).r,
                                    color: Color(
                                      0xff6A7282,
                                    ).withValues(alpha: 0.20),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'افتراضي',
                                      style: TextStyle(
                                        color: Color(0xff000000),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14.sp,
                                        fontFamily: 'IBMPlexSansArabic',
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 8.h),

                            Text(
                              'أحمد صبري • +15 55 123 4567',
                              style: TextStyle(
                                color: Color(0xff45556C),
                                fontSize: 14.sp,
                                fontFamily: 'IBMPlexSansArabic',
                                fontWeight: FontWeight.w400,
                              ),
                            ),

                            SizedBox(height: 4.h),

                            Text(
                              'المنصورة، حي الزعفران',
                              style: TextStyle(
                                color: Color(0xff62748E),
                                fontSize: 14.sp,
                                fontFamily: 'IBMPlexSansArabic',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 16.h),

                Container(
                  padding: EdgeInsets.all(4),
                  width: 370.w,
                  height: 63.h,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),

                    borderRadius: BorderRadius.circular(24).r,
                  ),
                  child: Row(
                    children: [
                      SizedBox(height: 20.h),

                      AppImage(
                        image: 'box.svg',
                        width: 20.w,
                        height: 20.h,
                        color: Color(0xff292D32),
                      ),

                      SizedBox(width: 4.w),

                      Text(
                        'ملخص الطلب',
                        style: TextStyle(
                          color: Color(0xff0A0A0A),
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
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
              ],
            ),
          ),
        ),

        bottomNavigationBar: BottomSheetWidget(
          title: 'تأكيد الطلب',
          icon: 'circle_correct.svg',
          onPressed: () {
            goTo(page: OrderSuccessfullyConfirmedPage());
          },
        ),
      ),
    );
  }
}
