import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed_app/core/components/app_image.dart';
import 'package:waheed_app/views/pages/detail_product.dart';

class ItemGridviewHome extends StatelessWidget {
  final String? image;
  final String? title;
  final bool showFavorite;
  final String heartIcon;
  final int? id;
  final bool showName;

  final String? name;
  final String? subTitle;
  final String? price;
  const ItemGridviewHome({
    super.key,
    this.title,
    this.subTitle,
    this.price,
    this.name,
    this.image,
    this.showFavorite = true,
    this.heartIcon = 'heart.svg',
    this.id,
    this.showName = true,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (id == null) {
          return;
        }
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailProductPage(id: id!)),
        );
      },
      child: Container(
        width: 177.w,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16).r,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5.r,
              offset: Offset(0, 2),
            ),
          ],
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16).r,
                    topRight: Radius.circular(16).r,
                  ),

                  child: AppImage(
                    image: image ?? "",
                    width: double.infinity.w,
                    fit: BoxFit.cover,
                    height: 176.h,
                  ),
                ),

                if (showFavorite)
                  Positioned(
                    top: 8,
                    left: 8,
                    child: Container(
                      width: 32.w,
                      height: 32.h,
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFFE5).withValues(alpha: 0.9),
                        borderRadius: BorderRadius.circular(42770700).r,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x1A000000),
                            offset: Offset(0, 1),
                            blurRadius: 2.r,
                            spreadRadius: -1.r,
                          ),
                          BoxShadow(
                            color: Color(0x1A000000),
                            offset: Offset(0, 1),
                            blurRadius: 3.r,
                            spreadRadius: 0.r,
                          ),
                        ],
                      ),
                      child: AppImage(
                        image: heartIcon,
                        width: 20.w,
                        height: 20.h,
                        color: Color(0xff292D32),
                      ),
                    ),
                  ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AppImage(image: 'star.svg', width: 12.w, height: 12.h),

                  SizedBox(width: 4.w),

                  Text(
                    '4.9',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 12.sp,

                      fontFamily: 'IBMPlexSansArabic',
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                  SizedBox(width: 4.w),

                  Text(
                    '(128)',
                    style: TextStyle(
                      color: Color(0xff99A1AF),
                      fontSize: 10.sp,

                      fontFamily: 'IBMPlexSansArabic',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 8.h),

            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                textDirection: TextDirection.rtl,
                title ?? "",
                maxLines: 2,
                style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 14.sp,

                  fontFamily: 'IBMPlexSansArabic',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            SizedBox(height: 2.h),

            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                textDirection: TextDirection.rtl,
                subTitle ?? "",
                maxLines: 2,
                style: TextStyle(
                  color: Color(0xff6A7282),
                  fontSize: 11.sp,

                  fontFamily: 'IBMPlexSansArabic',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                textDirection: TextDirection.rtl,
                children: [
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '$price',

                            style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 16.sp,
                              fontFamily: 'IBMPlexSansArabic',
                              fontWeight: FontWeight.w400,
                            ),
                          ),

                          TextSpan(
                            text: 'ج.م',

                            style: TextStyle(
                              color: Color(0xff6A7282),
                              fontSize: 10.sp,
                              fontFamily: 'IBMPlexSansArabic',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Spacer(),
                  if (showName)
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Container(
                          alignment: Alignment.center,
                          width: 42.w,
                          height: 23.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(99).r,
                            border: Border.all(
                              style: BorderStyle.solid,
                              color: Color(0xffE5E7EB),
                            ),
                          ),

                          child: Text(
                            name ?? "",
                            style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 10.sp,
                              fontFamily: 'IBMPlexSansArabic',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
