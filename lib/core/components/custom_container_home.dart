import 'package:flutter/material.dart';
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
        width: 181,
        height: 56,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color(0xffFFFFFF),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(999),
                    border: Border.all(
                      style: BorderStyle.solid,
                      color: Color(0xffDADADA),
                    ),
                  ),

                  child: AppImage(image: image ?? ""),
                ),

                SizedBox(width: 8),

                Text(
                  title ?? "",
                  style: TextStyle(
                    color: Color(0xff000000),

                    fontSize: 14,
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
