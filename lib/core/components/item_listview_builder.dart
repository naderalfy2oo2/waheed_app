import 'package:flutter/material.dart';
import 'package:waheed_app/core/components/app_image.dart';

class ItemListviewBuilder extends StatelessWidget {
  final String? image;
  final String? title;
  final String? Subtitle;

  const ItemListviewBuilder({super.key, this.image, this.title, this.Subtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: AppImage(
                    image: image!,
                    width: 175,
                    height: 160,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 7,
                  right: 11,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    width: 38,
                    height: 23,
                    decoration: BoxDecoration(
                      color: Color(0xff314158),
                      borderRadius: BorderRadius.circular(99),
                    ),

                    child: Text(
                      'جديد',

                      style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 10,
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
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF).withValues(alpha: 0.90),
                      borderRadius: BorderRadius.circular(42770700),
                    ),

                    child: Center(
                      child: AppImage(
                        image: 'heart.svg',
                        width: 16,
                        height: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 12),

            Align(
              alignment: AlignmentGeometry.centerRight,
              child: Text(
                title ?? "",

                style: TextStyle(
                  color: Color(0xffC9A961),
                  fontSize: 10,
                  fontFamily: 'IBMPlexSansArabic',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            SizedBox(height: 2),

            Align(
              alignment: AlignmentGeometry.centerRight,
              child: Text(
                Subtitle ?? '',

                style: TextStyle(
                  color: Color(0xff0A0A0A),
                  fontSize: 14,
                  fontFamily: 'IBMPlexSansArabic',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            SizedBox(height: 6),

            Row(
              children: [
                Text(
                  '4.9',

                  style: TextStyle(
                    color: Color(0xff62748E),
                    fontSize: 11,
                    fontFamily: 'IBMPlexSansArabic',
                    fontWeight: FontWeight.w400,
                  ),
                ),

                SizedBox(width: 4),

                AppImage(image: 'star.svg', width: 12, height: 12),
              ],
            ),

            SizedBox(height: 8),

            Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      color: Color(0xff000000),

                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: AppImage(image: 'cart.svg', width: 16, height: 16),
                  ),
                ),

                SizedBox(width: 46),

                Text(
                  '2400',

                  style: TextStyle(
                    color: Color(0xff90A1B9),
                    fontSize: 10,
                    fontFamily: 'IBMPlexSansArabic',
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),

                SizedBox(width: 4),

                Text(
                  '2,100',

                  style: TextStyle(
                    color: Color(0xff000000),
                    fontSize: 14,
                    fontFamily: 'IBMPlexSansArabic',
                    fontWeight: FontWeight.w700,
                  ),
                ),

                SizedBox(width: 4),

                Text(
                  'ج',

                  style: TextStyle(
                    color: Color(0xff62748E),
                    fontSize: 10,
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
