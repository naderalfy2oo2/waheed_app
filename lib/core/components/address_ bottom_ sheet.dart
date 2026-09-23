import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed_app/core/components/app_button.dart';
import 'package:waheed_app/core/components/app_image.dart';
import 'package:waheed_app/services/helper_methods.dart';
import 'package:waheed_app/views/pages/delivery_flow/revision_order.dart';
import '../../views/pages/delivery_flow/add_new_address.dart';

class AdressBottomSheet extends StatelessWidget {
  const AdressBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      width: 402.w,
      height: 407.h,
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(32).r,
          topLeft: Radius.circular(32).r,
        ),
        border: Border.all(color: Color(0xffEAEAEA)),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 16.h),

          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: AppImage(image: 'close.svg', width: 24.w, height: 24.h),
              ),

              SizedBox(width: 110.w),

              Text(
                'عنوان التوصيل',
                style: TextStyle(
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w500,
                  fontSize: 18.sp,
                  fontFamily: 'IBMPlexSansArabic',
                ),
              ),
            ],
          ),

          SizedBox(height: 16.h),

          Row(
            children: [
              AppImage(
                image: 'location.svg',
                width: 20.w,
                height: 20.h,
                color: Color(0xff000000),
              ),

              SizedBox(width: 8.w),

              Text(
                'عنوان التوصيل',
                style: TextStyle(
                  color: Color(0xff314158),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'IBMPlexSansArabic',
                ),
              ),
            ],
          ),

          SizedBox(height: 16.h),

          Container(
            width: 370.w,
            height: 105.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16).r,
              color: Color(0xffFFFFFF),
              border: Border.all(color: Color(0xff000000)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 12.h),

                  Container(
                    width: 40.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                      color: Color(0xff0000000).withValues(alpha: 0.06),

                      borderRadius: BorderRadius.circular(14).r,
                    ),

                    child: Center(
                      child: AppImage(
                        image: 'home_black.svg',
                        width: 20.w,
                        height: 20.h,
                        color: Color(0xff3F3F3F),
                      ),
                    ),
                  ),

                  SizedBox(width: 12.w),
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
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'IBMPlexSansArabic',
                            ),
                          ),

                          SizedBox(width: 12.w),

                          Container(
                            width: 51.w,
                            height: 22.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(999).r,
                              color: Color(0xff6A7282).withOpacity(0.20),
                            ),
                            child: Center(
                              child: Text(
                                'افتراضي',
                                style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'IBMPlexSansArabic',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 8.h),

                      Text(
                        'أحمد صبري • +15 55 123 4567',
                        style: TextStyle(
                          color: Color(0xff45556C),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'IBMPlexSansArabic',
                        ),
                      ),

                      SizedBox(width: 4.w),

                      Text(
                        'المنصورة، حي الزعفران',
                        style: TextStyle(
                          color: Color(0xff45556C),
                          fontSize: 14.sp,
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

          SizedBox(height: 16.h),

          DottedBorder(
            child: GestureDetector(
              onTap: () {
                goTo(page: AddNewAddressPage());
              },
              child: Container(
                width: 370.w,
                height: 48.h,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(12).r,
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 13.h),

                    AppImage(
                      image: 'add.svg',
                      width: 14.w,
                      height: 14.h,
                      color: Color(0xff314158),
                    ),

                    SizedBox(width: 4.w),

                    Text(
                      'إضافة عنوان جديد',
                      style: TextStyle(
                        color: Color(0xff314158),

                        fontSize: 14.sp,

                        fontWeight: FontWeight.w400,
                        fontFamily: 'IBMPlexSansArabic',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          SizedBox(height: 32.h),

          AppButton(
            title: 'تأكيد العنوان',
            onPressed: () {
              goTo(page: RevisionOrderPage());
            },
          ),
        ],
      ),
    );
  }
}
