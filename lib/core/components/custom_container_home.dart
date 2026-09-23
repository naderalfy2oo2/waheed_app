import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed_app/core/components/app_image.dart';

class CustomContainerHome extends StatelessWidget {
  final String? image;
  final String? title;
  final Color? color;

  const CustomContainerHome({super.key, this.title, this.color, this.image});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8),
        width: 181.w,
        height: 56.h,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16).r,
          color: Color(0xffFFFFFF),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  width: 40.w,
                  height: 40.r,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(999).r,
                    border: Border.all(
                      style: BorderStyle.solid,
                      color: Color(0xffDADADA),
                    ),
                  ),

                  child: AppImage(image: image ?? ""),
                ),

                SizedBox(width: 8.w),

                Text(
                  title ?? "",
                  style: TextStyle(
                    color: Color(0xff000000),

                    fontSize: 14.sp,
                    fontFamily: 'IBMPlexSansArabic',
                    fontWeight: FontWeight.w500,
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
