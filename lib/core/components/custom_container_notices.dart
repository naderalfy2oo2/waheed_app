import 'package:flutter/material.dart';
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
      width: 375,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xffFFFFFF),

        boxShadow: [
          BoxShadow(
            color: const Color(0x0F000000),
            offset: const Offset(0, 1),
            blurRadius: 4,
            spreadRadius: 0,
          ),
          BoxShadow(
            color: const Color(0x21C9A96E),
            offset: const Offset(0, 2),
            blurRadius: 16,
            spreadRadius: 0,
          ),
        ],
      ),

      child: Row(
        children: [
          if (showIconContainer)
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  color: ContainerColor,
                  borderRadius: BorderRadius.circular(26843500),
                ),

                child: Center(
                  child: AppImage(image: icon, width: 18, height: 18),
                ),
              ),
            ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 16),
                Text(
                  title1,
                  style: TextStyle(
                    color: Color(0xff141414),
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    fontFamily: 'IBMPlexSansArabic',
                  ),
                ),
                SizedBox(height: 4),

                Text(
                  title2,
                  style: TextStyle(
                    color: Color(0xff6A6A6A),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'IBMPlexSansArabic',
                  ),
                ),

                SizedBox(height: 4),

                Text(
                  title3,
                  style: TextStyle(
                    color: Color(0xffC9A96E),
                    fontSize: 12,

                    fontWeight: FontWeight.w500,
                    fontFamily: 'IBMPlexSansArabic',
                  ),
                ),

                SizedBox(height: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
