import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed_app/core/components/app_image.dart';

class CustomContainerNotices extends StatelessWidget {
  final String title1;
  final String title2;
  final String title3;
  final bool showIconContainer;
  final Color ContainerColor;
  final String icon;
  const CustomContainerNotices({
    super.key,
    required this.title1,
    required this.title2,
    required this.title3,
    this.showIconContainer = true,
    this.ContainerColor = const Color(0xffEEF3F9),
    this.icon = 'clender_icon.svg',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.w,
      height: 100.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20).r,
        color: Color(0xffFFFFFF),

        boxShadow: [
          BoxShadow(
            color: Color(0x0F000000),
            offset: Offset(0, 1),
            blurRadius: 4.r,
            spreadRadius: 0.r,
          ),
          BoxShadow(
            color: Color(0x21C9A96E),
            offset: Offset(0, 2),
            blurRadius: 16.r,
            spreadRadius: 0.r,
          ),
        ],
      ),

      child: Row(
        children: [
          if (showIconContainer)
            Padding(
              padding: EdgeInsets.all(16),
              child: Container(
                width: 44.w,
                height: 44.h,
                decoration: BoxDecoration(
                  color: ContainerColor,
                  borderRadius: BorderRadius.circular(26843500).r,
                ),

                child: Center(
                  child: AppImage(image: icon, width: 18.w, height: 18.h),
                ),
              ),
            ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 16.h),
                Text(
                  title1,
                  style: TextStyle(
                    color: Color(0xff141414),
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp,
                    fontFamily: 'IBMPlexSansArabic',
                  ),
                ),
                SizedBox(height: 4.h),

                Text(
                  title2,
                  style: TextStyle(
                    color: Color(0xff6A6A6A),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'IBMPlexSansArabic',
                  ),
                ),

                SizedBox(height: 4.h),

                Text(
                  title3,
                  style: TextStyle(
                    color: Color(0xffC9A96E),
                    fontSize: 12.sp,

                    fontWeight: FontWeight.w500,
                    fontFamily: 'IBMPlexSansArabic',
                  ),
                ),

                SizedBox(height: 16.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
