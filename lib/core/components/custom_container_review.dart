import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed_app/core/components/app_image.dart';

class CustomContainerReview extends StatelessWidget {
  final String icon;
  final String title1;
  final String title2;
  final String title3;
  final String title4;
  final String title5;
  final String title6;
  final String title7;
  final String title8;
  final String? title9;
  final String? title10;
  final bool showLastItem;
  final double dynamicHeight;
  final double dynamicWidth;

  const CustomContainerReview({
    super.key,
    required this.title1,
    required this.title2,
    required this.icon,
    required this.title3,
    required this.title4,
    required this.title5,
    required this.title6,
    required this.title7,
    required this.title8,
    this.title9,
    this.title10,
    this.showLastItem = true,
    this.dynamicWidth = 165,
    this.dynamicHeight = 56,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.all(16),
      width: 370.w,

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24).r,
        border: Border.all(color: Color(0xffE5E7EB)),
        boxShadow: [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 16.r,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16.h),

          Row(
            children: [
              Container(
                width: 32.w,
                height: 32.h,
                decoration: BoxDecoration(
                  color: Color(0xff1E3A8A).withValues(alpha: 0.063),
                  borderRadius: BorderRadius.circular(10).r,
                ),
                child: Center(
                  child: AppImage(image: icon, width: 16.w, height: 16.h),
                ),
              ),

              SizedBox(width: 8.w),

              Text(
                title1,
                style: TextStyle(
                  color: Color(0xff0A0A0A),
                  fontWeight: FontWeight.w600,
                  fontSize: 18.sp,
                  fontFamily: 'IBMPlexSansArabic',
                ),
              ),

              Spacer(),
              Container(
                width: 52.w,
                height: 28.h,
                decoration: BoxDecoration(
                  color: Color(0xff1E3A8A).withValues(alpha: 0.063),
                  borderRadius: BorderRadius.circular(10).r,
                ),
                child: Center(
                  child: Text(
                    title2,
                    style: TextStyle(
                      color: Color(0xff314158),
                      fontWeight: FontWeight.w500,
                      fontFamily: 'IBMPlexSansArabic',
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Divider(thickness: 2, color: Color(0xffF1F5F9)),

          SizedBox(height: 12.h),

          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(12),

                  height: 65.h,
                  decoration: BoxDecoration(
                    color: Color(0xffF8FAFC),
                    borderRadius: BorderRadius.circular(14).r,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title3,
                        style: TextStyle(
                          color: Color(0xff62748E),
                          fontWeight: FontWeight.w400,
                          fontSize: 11.sp,
                          fontFamily: 'IBMPlexSansArabic',
                        ),
                      ),

                      SizedBox(height: 4.h),

                      Text(
                        title4,

                        style: TextStyle(
                          color: Color(0xff62748E),
                          fontWeight: FontWeight.w600,
                          fontSize: 14.sp,
                          fontFamily: 'IBMPlexSansArabic',
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(width: 8.w),

              Expanded(
                child: Container(
                  padding: EdgeInsets.all(12),

                  height: 65.h,
                  decoration: BoxDecoration(
                    color: Color(0xffF8FAFC),
                    borderRadius: BorderRadius.circular(14).r,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title5,
                        style: TextStyle(
                          color: Color(0xff62748E),
                          fontWeight: FontWeight.w400,
                          fontSize: 11.sp,
                          fontFamily: 'IBMPlexSansArabic',
                        ),
                      ),

                      SizedBox(height: 4.h),

                      Text(
                        title6,

                        style: TextStyle(
                          color: Color(0xff62748E),
                          fontWeight: FontWeight.w600,
                          fontSize: 14.sp,
                          fontFamily: 'IBMPlexSansArabic',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 8.h),

          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                height: dynamicHeight.h,
                width: dynamicWidth.w,

                decoration: BoxDecoration(
                  color: Color(0xffF8FAFC),
                  borderRadius: BorderRadius.circular(14).r,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title7,
                      style: TextStyle(
                        color: Color(0xff62748E),
                        fontWeight: FontWeight.w400,
                        fontSize: 11.sp,
                        fontFamily: 'IBMPlexSansArabic',
                      ),
                    ),

                    SizedBox(height: 4.h),

                    Text(
                      title8,

                      style: TextStyle(
                        color: Color(0xff62748E),
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,
                        fontFamily: 'IBMPlexSansArabic',
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(width: 8.w),
              if (showLastItem) ...[
                SizedBox(width: 8.w),

                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(12),

                    height: 65.h,
                    decoration: BoxDecoration(
                      color: Color(0xffF8FAFC),
                      borderRadius: BorderRadius.circular(14).r,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title9 ?? "",
                          style: TextStyle(
                            color: Color(0xff62748E),
                            fontWeight: FontWeight.w400,
                            fontSize: 11.sp,
                            fontFamily: 'IBMPlexSansArabic',
                          ),
                        ),

                        SizedBox(height: 4.h),

                        Text(
                          title10 ?? "",
                          style: TextStyle(
                            color: Color(0xff62748E),
                            fontWeight: FontWeight.w600,
                            fontSize: 14.sp,
                            fontFamily: 'IBMPlexSansArabic',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }
}
