import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed_app/core/components/app_image.dart';

class AppContainerSizeSelectionCounter extends StatelessWidget {
  final String? title1;
  final String? title2;
  final String? title3;
  final String? title4;
  final String? title5;
  final String? title6;
  final String? title7;
  final String? title8;
  final String? text1;
  final String? text2;
  final String? text3;
  final String? text4;

  const AppContainerSizeSelectionCounter({
    super.key,
    this.title1,
    this.title2,
    this.title3,
    this.title4,
    this.title5,
    this.title6,
    this.title7,
    this.title8,
    this.text1,
    this.text2,
    this.text3,
    this.text4,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370.w,

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24).r,
        border: Border.all(color: Color(0xffE5E7EB)),
        boxShadow: [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 16.r,
            offset: Offset(0, 4),
          ),
        ],
      ),

      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 16.h),
            Align(
              alignment: AlignmentGeometry.topRight,
              child: Text(
                'تخصيص المقاس',
                style: TextStyle(
                  color: Color(0xff62748E),

                  fontFamily: 'IBMPlexSansArabic',
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                ),
              ),
            ),

            SizedBox(height: 24.h),

            Row(
              children: [
                Text(
                  title1 ?? "",
                  style: TextStyle(
                    color: Color(0xff314158),

                    fontFamily: 'IBMPlexSansArabic',
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                  ),
                ),

                Spacer(),

                Text(
                  title2 ?? "",
                  style: TextStyle(
                    color: Color(0xff90A1B9),

                    fontFamily: 'IBMPlexSansArabic',
                    fontWeight: FontWeight.w400,
                    fontSize: 11.sp,
                  ),
                ),
              ],
            ),

            SizedBox(height: 16.h),

            TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade100,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16).r,
                ),
                suffixIcon: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      AppImage(
                        image: 'tick-circle.svg',
                        width: 16.w,
                        height: 16.h,
                        color: Color(0xff90A1B9),
                      ),

                      SizedBox(width: 6.w),

                      Text(
                        text1 ?? "",

                        style: TextStyle(
                          color: Color(0xff314158),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      SizedBox(width: 4.w),

                      Text(
                        'سم',
                        style: TextStyle(
                          color: Color(0xff90A1B9),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 16.h),

            Row(
              children: [
                Text(
                  title3 ?? "",
                  style: TextStyle(
                    color: Color(0xff314158),

                    fontFamily: 'IBMPlexSansArabic',
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                  ),
                ),

                Spacer(),

                Text(
                  title4 ?? "",
                  style: TextStyle(
                    color: Color(0xff90A1B9),

                    fontFamily: 'IBMPlexSansArabic',
                    fontWeight: FontWeight.w400,
                    fontSize: 11.sp,
                  ),
                ),
              ],
            ),

            SizedBox(height: 16.h),

            TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade100,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16).r,
                ),
                suffixIcon: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      AppImage(
                        image: 'tick-circle.svg',
                        width: 16.w,
                        height: 16.h,
                        color: Color(0xff90A1B9),
                      ),

                      SizedBox(width: 6.w),

                      Text(
                        text2 ?? "",

                        style: TextStyle(
                          color: Color(0xff314158),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 4.w),

                      Text(
                        'سم',
                        style: TextStyle(
                          color: Color(0xff90A1B9),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.h),

            Row(
              children: [
                Text(
                  title5 ?? "",
                  style: TextStyle(
                    color: Color(0xff314158),

                    fontFamily: 'IBMPlexSansArabic',
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                  ),
                ),

                Spacer(),

                Text(
                  title6 ?? "",
                  style: TextStyle(
                    color: Color(0xff90A1B9),

                    fontFamily: 'IBMPlexSansArabic',
                    fontWeight: FontWeight.w400,
                    fontSize: 11.sp,
                  ),
                ),
              ],
            ),

            SizedBox(height: 16.h),

            TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade100,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16).r,
                ),
                suffixIcon: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      AppImage(
                        image: 'tick-circle.svg',
                        width: 16.w,
                        height: 16.h,
                        color: Color(0xff90A1B9),
                      ),

                      SizedBox(width: 6.w),

                      Text(
                        text3 ?? "",

                        style: TextStyle(
                          color: Color(0xff314158),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      SizedBox(width: 4.w),

                      Text(
                        'سم',
                        style: TextStyle(
                          color: Color(0xff90A1B9),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.h),
            if (title7 != null && title8 != null && text4 != null) ...[
              Row(
                children: [
                  Text(
                    title7 ?? "",
                    style: TextStyle(
                      color: Color(0xff314158),

                      fontFamily: 'IBMPlexSansArabic',
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                    ),
                  ),

                  Spacer(),

                  Text(
                    title8 ?? "",
                    style: TextStyle(
                      color: Color(0xff90A1B9),

                      fontFamily: 'IBMPlexSansArabic',
                      fontWeight: FontWeight.w400,
                      fontSize: 11.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h),

              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16).r,
                  ),
                  suffixIcon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      children: [
                        AppImage(
                          image: 'tick-circle.svg',
                          width: 16.w,
                          height: 16.h,
                          color: Color(0xff90A1B9),
                        ),

                        SizedBox(width: 6.w),

                        Text(
                          text4 ?? "",

                          style: TextStyle(
                            color: Color(0xff314158),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 4.w),

                        Text(
                          'سم',
                          style: TextStyle(
                            color: Color(0xff90A1B9),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
