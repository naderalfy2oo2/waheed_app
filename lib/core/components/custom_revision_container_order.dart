import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed_app/core/components/app_image.dart';

class CustomRevisionContainerOrder extends StatefulWidget {
  const CustomRevisionContainerOrder({super.key});

  @override
  State<CustomRevisionContainerOrder> createState() =>
      _CustomRevisionContainerOrderState();
}

class _CustomRevisionContainerOrderState
    extends State<CustomRevisionContainerOrder> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370.w,

      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(24).r,
        border: Border.all(color: Color(0xffEAEAEA)),
      ),

      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                AppImage(
                  image: 'talabat.svg',
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

                GestureDetector(
                  onTap: () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                  child: AnimatedRotation(
                    turns: isExpanded ? 0.5 : 0,
                    duration: Duration(milliseconds: 200),
                    child: AppImage(
                      image: 'arrow-down.svg',
                      width: 16.w,
                      height: 16.h,
                      color: Color(0xff292D32),
                    ),
                  ),
                ),
              ],
            ),

            if (isExpanded) ...[
              SizedBox(height: 16.h),

              Row(
                children: [
                  Text(
                    'المجموع الفرعي',
                    style: TextStyle(
                      color: Color(0xff000000).withValues(alpha: 0.60),
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'IBMPlexSansArabic',
                    ),
                  ),

                  Spacer(),

                  Text(
                    '٦٬٦٠٠ ج.م',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'IBMPlexSansArabic',
                    ),
                  ),
                ],
              ),

              SizedBox(height: 12.h),

              Row(
                children: [
                  Text(
                    'التوصيل',
                    style: TextStyle(
                      color: Color(0xff000000).withValues(alpha: 0.60),
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'IBMPlexSansArabic',
                    ),
                  ),

                  Spacer(),

                  Text(
                    '٦٠ ج.م',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'IBMPlexSansArabic',
                    ),
                  ),
                ],
              ),

              SizedBox(height: 12.h),

              Row(
                children: [
                  Text(
                    'الخصم',
                    style: TextStyle(
                      color: Color(0xff000000).withValues(alpha: 0.60),
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'IBMPlexSansArabic',
                    ),
                  ),

                  Spacer(),

                  Text(
                    '_',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'IBMPlexSansArabic',
                    ),
                  ),
                ],
              ),

              SizedBox(height: 25.h),

              Row(
                children: [
                  Text(
                    'الإجمالي',
                    style: TextStyle(
                      color: Color(0xff000000).withValues(alpha: 0.60),
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'IBMPlexSansArabic',
                    ),
                  ),

                  Spacer(),

                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '٦٬٦٦٠',

                          style: TextStyle(
                            color: Color(0xff0A0A0A),
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'IBMPlexSansArabic',
                          ),
                        ),

                        TextSpan(
                          text: 'ج.م',

                          style: TextStyle(
                            color: Color(0xff000000).withValues(alpha: 0.50),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'IBMPlexSansArabic',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}
