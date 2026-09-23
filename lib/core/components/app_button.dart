import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed_app/core/components/app_image.dart';

class AppButton extends StatelessWidget {
  final bool? isLoading;
  final String title;
  final Color? color;
  final String? icon;
  final void Function()? onPressed;
  final TextDirection? textDirection;
  final bool iconOnRight;
  final Color? textColor;

  AppButton({
    super.key,
    required this.title,
    this.color,
    this.icon,
    this.onPressed,
    this.textDirection,
    this.iconOnRight = false,
    this.textColor,
    this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    if (isLoading == true) {
      return Center(child: CircularProgressIndicator());
    }
    return SizedBox(
      width: 370.w,
      height: 56.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(16),
          ),

          backgroundColor: color ?? Colors.black87,
        ),
        onPressed: onPressed,
        child: Row(
          textDirection: textDirection ?? Directionality.of(context),
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (!iconOnRight && icon != null) ...[
              Transform.flip(
                flipX: false,
                child: AppImage(image: icon!, width: 24.w, height: 24.h),
              ),
              SizedBox(width: 8.w),
            ],

            Text(
              title,
              style: TextStyle(
                color: textColor ?? Color(0xffFFFFFF),
                fontSize: 20.sp,
                fontFamily: 'IBMPlexSansArabic',
                fontWeight: FontWeight.w700,
              ),
            ),

            if (iconOnRight && icon != null) ...[
              SizedBox(width: 8.w),
              Transform.flip(
                flipX: true,
                child: AppImage(image: icon!, width: 24.w, height: 24.h),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
