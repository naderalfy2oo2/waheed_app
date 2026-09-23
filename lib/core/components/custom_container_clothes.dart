import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed_app/core/components/app_image.dart';

class CustomContainerClothes extends StatelessWidget {
  final int Steplevel;
  final String title;
  final bool isCurrentIndex;
  final bool isCompleted;
  final bool showLineColor;
  final bool lineCompleted;

  CustomContainerClothes({
    super.key,
    required this.Steplevel,
    required this.title,
    required this.isCurrentIndex,
    required this.isCompleted,
    required this.showLineColor,
    required this.lineCompleted,
  });

  @override
  Widget build(BuildContext context) {
    String toArabicDigits(int number) {
      const EnglishNumber = '0123456789';
      const ArabicNumber = '٠١٢٣٤٥٦٧٨٩';

      return number.toString().replaceAllMapped(
        RegExp(r'\d'),
        (match) => ArabicNumber[EnglishNumber.indexOf(match.group(0)!)],
      );
    }

    Color circleColor;

    if (isCurrentIndex) {
      circleColor = Color(0xff314158);
    } else if (isCompleted) {
      circleColor = Color(0xffC9A961);
    } else {
      circleColor = Color(0xffE2E8F0);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 40.w,
              height: 40.h,
              decoration: BoxDecoration(
                color: circleColor,
                borderRadius: BorderRadius.circular(44909232).r,
              ),

              child: Center(
                child: isCompleted
                    ? AppImage(
                        image: 'circle_correct.svg',
                        width: 24.w,
                        height: 24.h,
                      )
                    : Text(
                        toArabicDigits(Steplevel),

                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'IBMPlexSansArabic',
                          color: lineCompleted
                              ? Color(0xff94A3B8)
                              : Color(0xffFFFFFF),
                        ),
                      ),
              ),
            ),

            if (showLineColor)
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Container(
                    width: 42.w,
                    height: 1.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(42770700).r,
                      color: lineCompleted
                          ? Color(0xffC49A3A)
                          : Color(0xffE2E8F0),
                    ),
                  ),
                ),
              ),
          ],
        ),
        SizedBox(height: 8.h),

        Text(
          title,
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w600,
            fontFamily: 'IBMPlexSansArabic',
          ),
        ),
      ],
    );
  }
}
