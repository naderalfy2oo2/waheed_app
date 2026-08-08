import 'package:flutter/material.dart';
import 'package:waheed_app/core/components/app_image.dart';

class AppButton extends StatelessWidget {
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
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 370,
      height: 56,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(16),
          ),
          // backgroundColor: Colors.black87,
          backgroundColor: color ?? Colors.black87,
        ),
        onPressed: onPressed,
        child: Row(
          textDirection: textDirection ?? Directionality.of(context),
          mainAxisAlignment: MainAxisAlignment.center,

          // children: [
          //   if (icon != null)
          //     Transform.flip(
          //       flipX: true,
          //       child: AppImage(image: icon!, width: 24, height: 24),
          //     ),
          //   Text(
          //     title,

          //     style: TextStyle(
          //       color: Color(0xffFFFFFF),
          //       fontSize: 20,
          //       fontFamily: 'IBMPlexSansArabic',
          //       fontWeight: FontWeight.w700,
          //     ),
          //   ),
          // ],
          children: [
            if (!iconOnRight && icon != null) ...[
              Transform.flip(
                flipX: true,
                child: AppImage(image: icon!, width: 24, height: 24),
              ),
              const SizedBox(width: 8),
            ],

            Text(
              title,
              style: TextStyle(
                // color: Color(0xffFFFFFF),
                color: textColor ?? const Color(0xffFFFFFF),
                fontSize: 20,
                fontFamily: 'IBMPlexSansArabic',
                fontWeight: FontWeight.w700,
              ),
            ),

            if (iconOnRight && icon != null) ...[
              const SizedBox(width: 8),
              Transform.flip(
                flipX: true,
                child: AppImage(image: icon!, width: 24, height: 24),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
