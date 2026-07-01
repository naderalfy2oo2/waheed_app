import 'package:flutter/material.dart';

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
      circleColor = const Color(0xff314158);
    } else if (isCompleted) {
      circleColor = const Color(0xffC9A961);
    } else {
      circleColor = const Color(0xffE2E8F0);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: circleColor,
                borderRadius: BorderRadius.circular(44909232),
              ),

              child: Center(
                child: isCompleted
                    ? AppImage(image: 'Clip path .svg', width: 24, height: 24)
                    : Text(
                        toArabicDigits(Steplevel),

                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'IBMPlexSansArabic',
                          color: lineCompleted
                              ? const Color(0xff94A3B8)
                              : const Color(0xffFFFFFF),
                        ),
                      ),
              ),
            ),

            if (showLineColor)
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Container(
                    width: 42,
                    height: 1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(42770700),
                      color: lineCompleted
                          ? const Color(0xffC49A3A)
                          : const Color(0xffE2E8F0),
                    ),
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(height: 8),

        Text(
          title,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            fontFamily: 'IBMPlexSansArabic',
          ),
        ),
      ],
    );
  }
}
