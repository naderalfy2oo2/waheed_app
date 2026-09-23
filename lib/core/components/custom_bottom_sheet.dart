import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed_app/core/components/app_button.dart';
import 'package:waheed_app/core/components/app_image.dart';
import 'package:waheed_app/services/helper_methods.dart';
import '../../views/customized_size/jacket_size.dart';

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({super.key});

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Container(
        width: double.infinity.w,

        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(24).r),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 16.h),

              Row(
                children: [
                  Container(
                    width: 106.w,
                    height: 42.h,
                    decoration: BoxDecoration(
                      color: Color(0xffF8FAFC),

                      borderRadius: BorderRadius.circular(99).r,
                      border: Border.all(color: Color(0xffEAEAEA)),
                    ),

                    child: Directionality(
                      textDirection: TextDirection.ltr,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  counter++;
                                });
                              },
                              child: Container(
                                width: 32.w,
                                height: 32.h,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.circle,
                                ),
                                child: AppImage(
                                  image: 'add.svg',
                                  width: 24.w,
                                  height: 24.h,
                                ),
                              ),
                            ),

                            Text(
                              "$counter",
                              style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),

                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (counter > 1) {
                                    counter--;
                                  }
                                });
                              },
                              child: Container(
                                width: 32.w,
                                height: 32.h,
                                decoration: BoxDecoration(
                                  color: Color(0xffFFFFFF),
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Color(0xffECECEC)),
                                ),
                                child: AppImage(
                                  image: 'minus.svg',
                                  width: 24.w,
                                  height: 24.h,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Spacer(),

                  Column(
                    children: [
                      SizedBox(height: 16.h),

                      Text(
                        'إجمالي السعر',
                        style: TextStyle(
                          color: Color(0xff62748E),

                          fontFamily: 'IBMPlexSansArabic',
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                        ),
                      ),

                      SizedBox(height: 12.h),

                      Row(
                        children: [
                          Text(
                            '2,200 ج',

                            style: TextStyle(
                              color: Color(0xff62748E),

                              fontFamily: 'IBMPlexSansArabic',
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,

                              decoration: TextDecoration.lineThrough,
                            ),
                          ),

                          SizedBox(width: 9.w),

                          Text(
                            '1,800 ج',

                            style: TextStyle(
                              color: Color(0xff000000),

                              fontFamily: 'IBMPlexSansArabic',
                              fontWeight: FontWeight.w700,
                              fontSize: 25.sp,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 16.h),

              Divider(thickness: 1, color: Color(0xffEAEAEA)),

              AppButton(
                title: 'المتابعة لتحديد القياسات',
                icon: 'tick-circle.svg',
                onPressed: () {
                  print("Pressed");
                  goTo(page: JacketSizeView());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
