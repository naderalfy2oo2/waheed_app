import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed_app/core/components/app_image.dart';

class ItemListviewBuilder extends StatelessWidget {
  final String? image;
  final String? title;
  final String? Subtitle;
  final String? price;

  const ItemListviewBuilder({
    super.key,
    this.image,
    this.title,
    this.Subtitle,
    this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16).r,
                  child: AppImage(
                    image: image!,
                    width: 175.w,
                    height: 160.h,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 7,
                  right: 11,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    width: 38.w,
                    height: 23.h,
                    decoration: BoxDecoration(
                      color: Color(0xff314158),
                      borderRadius: BorderRadius.circular(99).r,
                    ),

                    child: Text(
                      'جديد',

                      style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 10.sp,
                        fontFamily: 'IBMPlexSansArabic',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),

                Positioned(
                  top: 9,
                  left: 9,
                  child: Container(
                    width: 32.w,
                    height: 32.h,
                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF).withValues(alpha: 0.90),
                      borderRadius: BorderRadius.circular(42770700).r,
                    ),

                    child: Center(
                      child: AppImage(
                        image: 'heart.svg',
                        width: 16.w,
                        height: 16.h,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 12.h),

            Align(
              alignment: AlignmentGeometry.centerRight,
              child: Text(
                title ?? "",

                style: TextStyle(
                  color: Color(0xffC9A961),
                  fontSize: 10.sp,
                  fontFamily: 'IBMPlexSansArabic',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            SizedBox(height: 2.h),

            Align(
              alignment: AlignmentGeometry.centerRight,
              child: Text(
                Subtitle ?? '',

                style: TextStyle(
                  color: Color(0xff0A0A0A),
                  fontSize: 14.sp,
                  fontFamily: 'IBMPlexSansArabic',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            SizedBox(height: 6.h),

            Row(
              children: [
                Text(
                  '4.9',

                  style: TextStyle(
                    color: Color(0xff62748E),
                    fontSize: 11.sp,
                    fontFamily: 'IBMPlexSansArabic',
                    fontWeight: FontWeight.w400,
                  ),
                ),

                SizedBox(width: 4.w),

                AppImage(image: 'star.svg', width: 12.w, height: 12.h),
              ],
            ),

            SizedBox(height: 8.h),

            Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 32.w,
                    height: 32.h,
                    decoration: BoxDecoration(
                      color: Color(0xff000000),

                      borderRadius: BorderRadius.circular(8).r,
                    ),
                    child: AppImage(
                      image: 'cart.svg',
                      width: 16.w,
                      height: 16.h,
                    ),
                  ),
                ),

                SizedBox(width: 46.w),

                Text(
                  '2400',

                  style: TextStyle(
                    color: Color(0xff90A1B9),
                    fontSize: 10.sp,
                    fontFamily: 'IBMPlexSansArabic',
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),

                SizedBox(width: 4.w),

                Text(
                  '2,100',

                  style: TextStyle(
                    color: Color(0xff000000),
                    fontSize: 14.sp,
                    fontFamily: 'IBMPlexSansArabic',
                    fontWeight: FontWeight.w700,
                  ),
                ),

                SizedBox(width: 4.w),

                Text(
                  'ج',

                  style: TextStyle(
                    color: Color(0xff62748E),
                    fontSize: 10.sp,
                    fontFamily: 'IBMPlexSansArabic',
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.lineThrough,
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
