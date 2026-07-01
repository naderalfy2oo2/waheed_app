import 'package:flutter/material.dart';
import 'package:waheed_app/core/components/app_image.dart';

class AppButton extends StatelessWidget {
  final String title;
  final Color? color;
  final String? icon;
  final void Function()? onPressed;

  AppButton({
    super.key,
    required this.title,
    this.color,
    this.icon,
    this.onPressed,
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
          backgroundColor: Color(0xff000000),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppImage(image: icon ?? "", width: 24, height: 24),
            Text(
              title,
              style: TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: 20,
                fontFamily: 'IBMPlexSansArabic',
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
