import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed_app/services/helper_methods.dart';
import 'package:waheed_app/views/auth/register.dart';
import 'package:waheed_app/core/components/app_button.dart';
import '../../core/components/app_image.dart';

class CompleteAccount extends StatelessWidget {
  const CompleteAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        appBar: AppBar(
          backgroundColor: Color(0xffFFFFFF),
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(12),

                width: 48.w,
                height: 48.h,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(99).r,
                  border: Border.all(color: Color(0xffECECEC)),
                ),

                child: Center(
                  child: AppImage(
                    image: 'arrow-left.svg',
                    width: 24.w,
                    height: 24.h,
                  ),
                ),
              ),
            ),
          ),
        ),

        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,

              children: [
                SizedBox(height: 17.h),

                Center(
                  child: AppImage(
                    image: 'complete_account.png',
                    width: 250.w,
                    height: 250.h,
                  ),
                ),
                SizedBox(height: 12.h),

                Text(
                  'تم إنشاء الحساب!',
                  style: TextStyle(
                    color: Color(0xff000000),

                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'IBMPlexSansArabic',
                  ),
                ),
                SizedBox(height: 8.h),

                Text(
                  'حسابك جاهز الآن، ابدأ باكتشاف تشكيلتنا\n           المميزة من البدل والقمصان.',
                  style: TextStyle(
                    color: Color(0xff314158),

                    fontSize: 14.sp,
                    fontWeight: FontWeight.w100,
                    fontFamily: 'IBMPlexSansArabic',
                  ),
                ),
                SizedBox(height: 32.h),

                AppButton(
                  title: 'المتابعة لتسجيل الدخول',
                  onPressed: () {
                    goTo(page: Register());
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
