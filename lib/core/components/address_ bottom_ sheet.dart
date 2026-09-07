import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:waheed_app/core/components/app_button.dart';
import 'package:waheed_app/core/components/app_image.dart';
import 'package:waheed_app/views/pages/delivery_flow/revision_order.dart';

import '../../views/pages/delivery_flow/add_new_address.dart';

class AdressBottomSheet extends StatelessWidget {
  const AdressBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      width: 402,
      height: 407,
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(32),
          topLeft: Radius.circular(32),
        ),
        border: Border.all(color: Color(0xffEAEAEA)),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 16),

          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: AppImage(image: 'close.svg', width: 24, height: 24),
              ),

              SizedBox(width: 110),

              Text(
                'عنوان التوصيل',
                style: TextStyle(
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  fontFamily: 'IBMPlexSansArabic',
                ),
              ),
            ],
          ),

          SizedBox(height: 16),

          Row(
            children: [
              AppImage(
                image: 'location.svg',
                width: 20,
                height: 20,
                color: Color(0xff000000),
              ),

              SizedBox(width: 8),

              Text(
                'عنوان التوصيل',
                style: TextStyle(
                  color: Color(0xff314158),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'IBMPlexSansArabic',
                ),
              ),
            ],
          ),

          SizedBox(height: 16),

          Container(
            width: 370,
            height: 105,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Color(0xffFFFFFF),
              border: Border.all(color: Color(0xff000000)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 12),

                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xff0000000).withValues(alpha: 0.06),

                      borderRadius: BorderRadius.circular(14),
                    ),

                    child: Center(
                      child: AppImage(
                        image: 'home_black.svg',
                        width: 20,
                        height: 20,
                        color: Color(0xff3F3F3F),
                      ),
                    ),
                  ),

                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'المنزل',
                            style: TextStyle(
                              color: Color(0xff0A0A0A),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'IBMPlexSansArabic',
                            ),
                          ),

                          SizedBox(width: 12),

                          Container(
                            width: 51,
                            height: 22,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(999),
                              color: Color(0xff6A7282).withOpacity(0.20),
                            ),
                            child: Center(
                              child: Text(
                                'افتراضي',
                                style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'IBMPlexSansArabic',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 8),

                      Text(
                        'أحمد صبري • +15 55 123 4567',
                        style: TextStyle(
                          color: Color(0xff45556C),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'IBMPlexSansArabic',
                        ),
                      ),

                      SizedBox(width: 4),

                      Text(
                        'المنصورة، حي الزعفران',
                        style: TextStyle(
                          color: Color(0xff45556C),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'IBMPlexSansArabic',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 16),

          DottedBorder(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddNewAddress()),
                );
              },
              child: Container(
                width: 370,
                height: 48,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(12),
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 13),

                    AppImage(
                      image: 'add.svg',
                      width: 14,
                      height: 14,
                      color: Color(0xff314158),
                    ),

                    SizedBox(width: 4),

                    Text(
                      'إضافة عنوان جديد',
                      style: TextStyle(
                        color: Color(0xff314158),

                        fontSize: 14,

                        fontWeight: FontWeight.w400,
                        fontFamily: 'IBMPlexSansArabic',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          SizedBox(height: 32),

          AppButton(
            title: 'تأكيد العنوان',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RevisionOrder()),
              );
            },
          ),
        ],
      ),
    );
  }
}
