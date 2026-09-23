import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      width: 402.w,
      height: 496.h,
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(32).r,
          topLeft: Radius.circular(32).r,
        ),
        border: Border.all(color: Color(0xffEAEAEA)),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 38.h),

            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: AppImage(
                    image: 'close.svg',
                    width: 24.w,
                    height: 24.h,
                  ),
                ),

                SizedBox(width: 99.w),

                Text(
                  'طريقة دفع جديدة',
                  style: TextStyle(
                    color: Color(0xff000000),

                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'IBMPlexSansArabic',
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.h),

            Text(
              'اسم حامل الكارت',
              style: TextStyle(
                color: Color(0xff314158),
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                fontFamily: 'IBMPlexSansArabic',
              ),
            ),

            SizedBox(height: 8.h),

            AppInput(labelText: 'الاسم', fillColor: Color(0xffFFFFFF)),
            SizedBox(height: 8.h),

            Text(
              'رقم الكارت',
              style: TextStyle(
                color: Color(0xff314158),
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                fontFamily: 'IBMPlexSansArabic',
              ),
            ),

            SizedBox(height: 8.h),

            AppInput(
              labelText: '0000 0000 0000 0000',
              fillColor: Color(0xffFFFFFF),
              preifixIcon: AppImage(
                image: 'card.svg',
                width: 24.w,
                height: 24.h,
                color: Color(0xff314158),
              ),
            ),

            SizedBox(height: 8.h),

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
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'IBMPlexSansArabic',
                          ),
                        ),
                      ),

                      SizedBox(height: 8.h),

                      SizedBox(
                        width: 176.w,
                        height: 48.h,
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

                SizedBox(width: 18.w),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'تاريخ الانتهاء',
                        textDirection: TextDirection.ltr,

                        style: TextStyle(
                          color: Color(0xff314158),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'IBMPlexSansArabic',
                        ),
                      ),

                      SizedBox(height: 8.h),

                      SizedBox(
                        width: 176.w,
                        height: 48.h,
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

            SizedBox(height: 16.h),

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

                SizedBox(width: 2.w),

                Text(
                  'حفظ الكارت للمعاملات القادمة',
                  style: TextStyle(
                    color: Color(0xff000000),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'IBMPlexSansArabic',
                  ),
                ),
              ],
            ),

            SizedBox(height: 33.h),

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
