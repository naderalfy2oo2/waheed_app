import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed_app/core/components/app_button.dart';
import 'package:waheed_app/core/components/app_image.dart';
import 'register.dart';

class StartNowView extends StatelessWidget {
  const StartNowView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            Positioned.fill(
              child: AppImage(
                image: 'start_now.jpg',
                width: double.infinity.w,
                height: double.infinity.h,
                fit: BoxFit.cover,
              ),
            ),

            Positioned.fill(
              child: Container(color: Color(0xff000000).withOpacity(0.70)),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                width: double.infinity.w,

                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32).r,
                    topRight: Radius.circular(32).r,
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 24.h),

                    Text(
                      'إطلالة تليق بك',
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'IBMPlexSansArabic',
                      ),
                    ),

                    SizedBox(height: 4.h),

                    Text(
                      'تسوّق أو استأجر بدلتك المفضلة بخطوات بسيطة\n وتجربة فاخرة.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff314158),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'IBMPlexSansArabic',
                      ),
                    ),

                    SizedBox(height: 16.h),

                    Padding(
                      padding: EdgeInsets.all(16),
                      child: AppButton(
                        title: 'البدء الآن',
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegisterView(),
                            ),
                          );
                        },
                      ),
                    ),

                    SizedBox(height: 9.h),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
