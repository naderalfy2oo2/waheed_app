import 'package:flutter/material.dart';
import 'package:waheed_app/core/components/app_image.dart';

class CustomContainerReview extends StatelessWidget {
  final String icon;
  final String title1;
  final String title2;
  final String title3;
  final String title4;
  final String title5;
  final String title6;
  final String title7;
  final String title8;
  final String? title9;
  final String? title10;
  final bool showLastItem;
  final double dynamicHeight;
  final double dynamicWidth;

  const CustomContainerReview({
    super.key,
    required this.title1,
    required this.title2,
    required this.icon,
    required this.title3,
    required this.title4,
    required this.title5,
    required this.title6,
    required this.title7,
    required this.title8,
    this.title9,
    this.title10,
    this.showLastItem = true,
    this.dynamicWidth = 165,
    this.dynamicHeight = 56,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.all(16),
      width: 370,

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: const Color(0xffE5E7EB)),
        boxShadow: const [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 16,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16),

          Row(
            children: [
              Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  color: Color(0xff1E3A8A).withValues(alpha: 0.063),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: AppImage(image: icon, width: 16, height: 16),
                ),
              ),

              SizedBox(width: 8),

              Text(
                title1,
                style: TextStyle(
                  color: Color(0xff0A0A0A),
                  fontWeight: FontWeight.w600,

                  fontSize: 18,
                  fontFamily: 'IBMPlexSansArabic',
                ),
              ),

              Spacer(),
              Container(
                width: 52,
                height: 28,
                decoration: BoxDecoration(
                  color: Color(0xff1E3A8A).withValues(alpha: 0.063),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    title2,
                    style: TextStyle(
                      color: Color(0xff314158),
                      fontWeight: FontWeight.w500,
                      fontFamily: 'IBMPlexSansArabic',
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Divider(thickness: 2, color: Color(0xffF1F5F9)),

          SizedBox(height: 12),

          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(12),

                  height: 65,
                  decoration: BoxDecoration(
                    color: Color(0xffF8FAFC),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title3,
                        style: TextStyle(
                          color: Color(0xff62748E),
                          fontWeight: FontWeight.w400,
                          fontSize: 11,
                          fontFamily: 'IBMPlexSansArabic',
                        ),
                      ),

                      SizedBox(height: 4),

                      Text(
                        title4,

                        style: TextStyle(
                          color: Color(0xff62748E),
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          fontFamily: 'IBMPlexSansArabic',
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(width: 8),

              Expanded(
                child: Container(
                  padding: EdgeInsets.all(12),

                  height: 65,
                  decoration: BoxDecoration(
                    color: Color(0xffF8FAFC),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title5,
                        style: TextStyle(
                          color: Color(0xff62748E),
                          fontWeight: FontWeight.w400,
                          fontSize: 11,
                          fontFamily: 'IBMPlexSansArabic',
                        ),
                      ),

                      SizedBox(height: 4),

                      Text(
                        title6,

                        style: TextStyle(
                          color: Color(0xff62748E),
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          fontFamily: 'IBMPlexSansArabic',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 8),

          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                height: dynamicHeight,
                width: dynamicWidth,

                decoration: BoxDecoration(
                  color: Color(0xffF8FAFC),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title7,
                      style: TextStyle(
                        color: Color(0xff62748E),
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                        fontFamily: 'IBMPlexSansArabic',
                      ),
                    ),

                    SizedBox(height: 4),

                    Text(
                      title8,

                      style: TextStyle(
                        color: Color(0xff62748E),
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        fontFamily: 'IBMPlexSansArabic',
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(width: 8),
              if (showLastItem) ...[
                SizedBox(width: 8),

                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(12),

                    height: 65,
                    decoration: BoxDecoration(
                      color: Color(0xffF8FAFC),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title9 ?? "",
                          style: TextStyle(
                            color: Color(0xff62748E),
                            fontWeight: FontWeight.w400,
                            fontSize: 11,
                            fontFamily: 'IBMPlexSansArabic',
                          ),
                        ),

                        SizedBox(height: 4),

                        Text(
                          title10 ?? "",

                          style: TextStyle(
                            color: Color(0xff62748E),
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            fontFamily: 'IBMPlexSansArabic',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }
}
