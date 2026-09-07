import 'package:flutter/material.dart';
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
      width: 370,
      height: 56,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(16),
          ),
<<<<<<< HEAD
         
=======

>>>>>>> e5b45a5 (updated UI and fixed login API)
          backgroundColor: color ?? Colors.black87,
        ),
        onPressed: onPressed,
        child: Row(
          textDirection: textDirection ?? Directionality.of(context),
          mainAxisAlignment: MainAxisAlignment.center,

<<<<<<< HEAD
        
=======
>>>>>>> e5b45a5 (updated UI and fixed login API)
          children: [
            if (!iconOnRight && icon != null) ...[
              Transform.flip(
                flipX: false,
                child: AppImage(image: icon!, width: 24, height: 24),
              ),
              const SizedBox(width: 8),
            ],

            Text(
              title,
              style: TextStyle(
<<<<<<< HEAD
              
=======
>>>>>>> e5b45a5 (updated UI and fixed login API)
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
