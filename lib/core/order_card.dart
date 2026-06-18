import 'package:flutter/material.dart';
import 'package:waheed_app/core/components/app_image.dart';

class OrderCard extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final Color? BackgroundColorContainer;
  final Color? TextColor;
  final String? image;
  final List<Widget>? buttons;

  const OrderCard({
    super.key,
    this.title,
    this.subtitle,

    this.image,
    this.buttons,
    this.BackgroundColorContainer,
    this.TextColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        width: double.infinity,
        height: 186,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            style: BorderStyle.solid,
            color: Color(0xff0000000A).withValues(alpha: .4),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'طلب رقم',
                    style: TextStyle(
                      color: Color(0xff90A1B9),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'IBMPlexSansArabic',
                    ),
                  ),

                  SizedBox(width: 8),

                  Text(
                    'EQ-482910',

                    style: TextStyle(
                      color: Color(0xff314158),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'IBMPlexSansArabic',
                    ),
                  ),

                  Spacer(),

                  Container(
                    padding: EdgeInsets.all(2),
                    width: 87,
                    height: 25,
                    decoration: BoxDecoration(
                      color: BackgroundColorContainer,

                      borderRadius: BorderRadius.circular(99),
                    ),
                    child: Row(
                      children: [
                        AppImage(image: image ?? "", width: 14, height: 14),

                        SizedBox(width: 4),

                        Text(
                          title ?? "",
                          style: TextStyle(
                            color: TextColor,

                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'IBMPlexSansArabic',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 16),

              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: AppImage(image: 'suit.jpg', width: 56, height: 56),
                  ),
                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'بدلة سوداء + ملحقات',
                        style: TextStyle(
                          color: Color(0xff0A0A0A),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,

                          fontFamily: 'IBMPlexSansArabic',
                        ),
                      ),

                      SizedBox(height: 3),

                      Text(
                        '3 منتجات • ٨ مايو ٢٠٢٦',
                        style: TextStyle(
                          color: Color(0xff62748E),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,

                          fontFamily: 'IBMPlexSansArabic',
                        ),
                      ),

                      SizedBox(height: 3),

                      Text(
                        '3,475 ج.م',
                        style: TextStyle(
                          color: Color(0xff314158),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,

                          fontFamily: 'IBMPlexSansArabic',
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 16),

              if (buttons != null)
                Row(
                  children: buttons!
                      .map(
                        (button) => Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: button,
                          ),
                        ),
                      )
                      .toList(),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
