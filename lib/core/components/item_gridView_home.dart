import 'package:flutter/material.dart';
import 'package:waheed_app/core/components/app_image.dart';
import 'package:waheed_app/views/pages/detail_product.dart';

class ItemGridviewHome extends StatelessWidget {
  final String? image;
  final String? title;

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
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const DetailProduct()),
        );
      },
      child: Container(
        width: 177,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5,
              offset: Offset(0, 2),
            ),
          ],
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),

              child: AppImage(
                image: image ?? "",
                width: double.infinity,
                fit: BoxFit.cover,
                height: 176,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AppImage(image: 'star.svg', width: 12, height: 12),

                  SizedBox(width: 4),

                  Text(
                    '4.9',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 12,

                      fontFamily: 'IBMPlexSansArabic',
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                  SizedBox(width: 4),

                  Text(
                    '(128)',
                    style: TextStyle(
                      color: Color(0xff99A1AF),
                      fontSize: 10,

                      fontFamily: 'IBMPlexSansArabic',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 8),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                textDirection: TextDirection.rtl,
                title ?? "",
                style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 14,

                  fontFamily: 'IBMPlexSansArabic',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            SizedBox(height: 2),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                textDirection: TextDirection.rtl,
                subTitle ?? "",
                style: TextStyle(
                  color: Color(0xff6A7282),
                  fontSize: 11,

                  fontFamily: 'IBMPlexSansArabic',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
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
                              fontSize: 16,
                              fontFamily: 'IBMPlexSansArabic',
                              fontWeight: FontWeight.w400,
                            ),
                          ),

                          TextSpan(
                            text: 'ج.م',

                            style: TextStyle(
                              color: Color(0xff6A7282),
                              fontSize: 10,
                              fontFamily: 'IBMPlexSansArabic',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Spacer(),

                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.center,
                        width: 42,
                        height: 23,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(99),
                          border: Border.all(
                            style: BorderStyle.solid,
                            color: Color(0xffE5E7EB),
                          ),
                        ),

                        child: Text(
                          name ?? "",
                          style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 10,
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
