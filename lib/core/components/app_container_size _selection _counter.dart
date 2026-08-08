import 'package:flutter/material.dart';
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

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 16),
            Align(
              alignment: AlignmentGeometry.topRight,
              child: Text(
                'تخصيص المقاس',
                style: TextStyle(
                  color: Color(0xff62748E),

                  fontFamily: 'IBMPlexSansArabic',
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ),

            SizedBox(height: 24),

            Row(
              children: [
                Text(
                  title1 ?? "",
                  style: TextStyle(
                    color: Color(0xff314158),

                    fontFamily: 'IBMPlexSansArabic',
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),

                Spacer(),

                Text(
                  title2 ?? "",
                  style: TextStyle(
                    color: Color(0xff90A1B9),

                    fontFamily: 'IBMPlexSansArabic',
                    fontWeight: FontWeight.w400,
                    fontSize: 11,
                  ),
                ),
              ],
            ),

            SizedBox(height: 16),

            TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade100,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      AppImage(
                        image: 'tick-circle.svg',
                        width: 16,
                        height: 16,
                        color: const Color(0xff90A1B9),
                      ),

                      const SizedBox(width: 6),

                      Text(
                        text1 ?? "",

                        style: TextStyle(
                          color: Color(0xff314158),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      const SizedBox(width: 4),

                      Text(
                        'سم',
                        style: TextStyle(
                          color: Color(0xff90A1B9),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 16),

            Row(
              children: [
                Text(
                  title3 ?? "",
                  style: TextStyle(
                    color: Color(0xff314158),

                    fontFamily: 'IBMPlexSansArabic',
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),

                Spacer(),

                Text(
                  title4 ?? "",
                  style: TextStyle(
                    color: Color(0xff90A1B9),

                    fontFamily: 'IBMPlexSansArabic',
                    fontWeight: FontWeight.w400,
                    fontSize: 11,
                  ),
                ),
              ],
            ),

            SizedBox(height: 16),

            TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade100,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      AppImage(
                        image: 'tick-circle.svg',
                        width: 16,
                        height: 16,
                        color: const Color(0xff90A1B9),
                      ),

                      const SizedBox(width: 6),

                      Text(
                        text2 ?? "",

                        style: TextStyle(
                          color: Color(0xff314158),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      const SizedBox(width: 4),

                      Text(
                        'سم',
                        style: TextStyle(
                          color: Color(0xff90A1B9),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),

            Row(
              children: [
                Text(
                  title5 ?? "",
                  style: TextStyle(
                    color: Color(0xff314158),

                    fontFamily: 'IBMPlexSansArabic',
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),

                Spacer(),

                Text(
                  title6 ?? "",
                  style: TextStyle(
                    color: Color(0xff90A1B9),

                    fontFamily: 'IBMPlexSansArabic',
                    fontWeight: FontWeight.w400,
                    fontSize: 11,
                  ),
                ),
              ],
            ),

            SizedBox(height: 16),

            TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade100,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      AppImage(
                        image: 'tick-circle.svg',
                        width: 16,
                        height: 16,
                        color: const Color(0xff90A1B9),
                      ),

                      const SizedBox(width: 6),

                      Text(
                        text3 ?? "",

                        style: TextStyle(
                          color: Color(0xff314158),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      const SizedBox(width: 4),

                      Text(
                        'سم',
                        style: TextStyle(
                          color: Color(0xff90A1B9),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            if (title7 != null && title8 != null && text4 != null) ...[
              Row(
                children: [
                  Text(
                    title7 ?? "",
                    style: TextStyle(
                      color: Color(0xff314158),

                      fontFamily: 'IBMPlexSansArabic',
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),

                  Spacer(),

                  Text(
                    title8 ?? "",
                    style: TextStyle(
                      color: Color(0xff90A1B9),

                      fontFamily: 'IBMPlexSansArabic',
                      fontWeight: FontWeight.w400,
                      fontSize: 11,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),

              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      children: [
                        AppImage(
                          image: 'tick-circle.svg',
                          width: 16,
                          height: 16,
                          color: const Color(0xff90A1B9),
                        ),

                        const SizedBox(width: 6),

                        Text(
                          text4 ?? "",

                          style: TextStyle(
                            color: Color(0xff314158),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                        const SizedBox(width: 4),

                        Text(
                          'سم',
                          style: TextStyle(
                            color: Color(0xff90A1B9),
                            fontSize: 12,
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
