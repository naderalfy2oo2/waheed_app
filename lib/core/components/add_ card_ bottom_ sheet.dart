import 'package:flutter/material.dart';
import 'package:waheed_app/core/components/app_button.dart';
import 'package:waheed_app/core/components/app_image.dart';
import 'package:waheed_app/core/components/app_input.dart';

import 'payment _bottom_ sheet.dart';

class AddCardBottomSheet extends StatefulWidget {
  const AddCardBottomSheet({super.key});

  @override
  State<AddCardBottomSheet> createState() => _AddCardBottomSheetState();
}

class _AddCardBottomSheetState extends State<AddCardBottomSheet> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      width: 402,
      height: 496,
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(32),
          topLeft: Radius.circular(32),
        ),
        border: Border.all(color: Color(0xffEAEAEA)),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 38),

            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: AppImage(image: 'close.svg', width: 24, height: 24),
                ),

                SizedBox(width: 99),

                Text(
                  'طريقة دفع جديدة',
                  style: TextStyle(
                    color: Color(0xff000000),

                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'IBMPlexSansArabic',
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),

            Text(
              'اسم حامل الكارت',
              style: TextStyle(
                color: Color(0xff314158),
                fontSize: 14,
                fontWeight: FontWeight.w500,
                fontFamily: 'IBMPlexSansArabic',
              ),
            ),

            SizedBox(height: 8),

            AppInput(labelText: 'الاسم', fillColor: Color(0xffFFFFFF)),
            SizedBox(height: 8),

            Text(
              'رقم الكارت',
              style: TextStyle(
                color: Color(0xff314158),
                fontSize: 14,
                fontWeight: FontWeight.w500,
                fontFamily: 'IBMPlexSansArabic',
              ),
            ),

            SizedBox(height: 8),

            AppInput(
              labelText: '0000 0000 0000 0000',
              fillColor: Color(0xffFFFFFF),
              preifixIcon: AppImage(
                image: 'card.svg',
                width: 24,
                height: 24,
                color: Color(0xff314158),
              ),
            ),

            SizedBox(height: 8),

            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      Align(
                        alignment: AlignmentGeometry.centerLeft,
                        child: Text(
                          'CVV',
                          textDirection: TextDirection.ltr,
                          style: TextStyle(
                            color: Color(0xff314158),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'IBMPlexSansArabic',
                          ),
                        ),
                      ),

                      SizedBox(height: 8),

                      SizedBox(
                        width: 176,
                        height: 48,
                        child: Directionality(
                          textDirection: TextDirection.ltr,
                          child: AppInput(
                            labelText: '•••',
                            fillColor: Color(0xffFFFFFF),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(width: 18),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'تاريخ الانتهاء',
                        textDirection: TextDirection.ltr,

                        style: TextStyle(
                          color: Color(0xff314158),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'IBMPlexSansArabic',
                        ),
                      ),

                      SizedBox(height: 8),

                      SizedBox(
                        width: 176,
                        height: 48,
                        child: Directionality(
                          textDirection: TextDirection.ltr,
                          child: AppInput(
                            labelText: 'MM/YY',
                            fillColor: Color(0xffFFFFFF),
                          ),
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
                Checkbox(
                  checkColor: Color(0xffFFFFFF),
                  activeColor: Color(0xff292D32),

                  value: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value ?? false;
                    });
                  },
                ),

                SizedBox(width: 2),

                Text(
                  'حفظ الكارت للمعاملات القادمة',
                  style: TextStyle(
                    color: Color(0xff000000),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'IBMPlexSansArabic',
                  ),
                ),
              ],
            ),

            SizedBox(height: 33),

            Center(
              child: AppButton(
                title: 'حفظ',
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    builder: (context) {
                      return PaymentBottomSheet();
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
