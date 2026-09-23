import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed_app/core/components/app_image.dart';

class AppContainerProduct extends StatelessWidget {
  final String Icon;
  final String title;
  final Color _color;

  const AppContainerProduct({
    super.key,
    required this.Icon,
    required this.title,
    required Color color,
  }) : _color = color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2),
      child: Container(
        width: 118.w,
        height: 79.h,
        decoration: BoxDecoration(
          color: _color,

          borderRadius: BorderRadius.circular(14).r,
          border: Border.all(
            style: BorderStyle.solid,
            color: Color(0xffEAEAEA),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              AppImage(image: Icon, width: 24.w, height: 24.h),

              SizedBox(height: 4.h),

              Text(
                title,
                style: TextStyle(
                  color: Color(0xff45556C),
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'IBMPlexSansArabic',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
