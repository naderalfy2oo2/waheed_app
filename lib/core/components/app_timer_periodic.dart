import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed_app/core/components/app_image.dart';

class AppTimerPeriodic extends StatefulWidget {
  final VoidCallback? onResend;
  final VoidCallback? onTimerFinished;

  const AppTimerPeriodic({super.key, this.onResend, this.onTimerFinished});

  @override
  State<AppTimerPeriodic> createState() => _AppTimerPeriodicState();
}

class _AppTimerPeriodicState extends State<AppTimerPeriodic> {
  int seconds = 30;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    timer?.cancel();

    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (seconds > 0) {
        setState(() {
          seconds--;
        });
        if (seconds == 0) {
          timer.cancel();
          widget.onTimerFinished?.call();
        }
      }
    });
  }

  void resendCode() {
    setState(() {
      seconds = 30;
    });

    widget.onResend?.call();

    startTimer();
  }

  String formatTime() {
    final minutes = seconds ~/ 60;
    final remainingSeconds = seconds % 60;

    return '${minutes.toString().padLeft(2, '0')}:'
        '${remainingSeconds.toString().padLeft(2, '0')}';
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (seconds == 0) {
      return Column(
        children: [
          Text(
            'لم تستلم الرمز ؟',
            style: TextStyle(
              color: Color(0xff000000),
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
              fontFamily: 'IBMPlexSansArabic',
            ),
          ),

          SizedBox(height: 4.h),

          GestureDetector(
            onTap: resendCode,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppImage(
                  image: 're_loading.svg',
                  width: 16.w,
                  height: 16.h,
                  color: Color(0xff686868),
                ),

                SizedBox(width: 4.w),

                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'إعادة الإرسال',
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'IBMPlexSansArabic',
                      ),
                    ),

                    SizedBox(height: 1.h),

                    Container(
                      height: 0.5.h,
                      width: 68.w,
                      color: Color(0xff000000),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
    }

    return Column(
      children: [
        Text(
          'لم تستلم الرمز ؟',
          style: TextStyle(
            color: Color(0xff000000),
            fontSize: 14.sp,
            fontWeight: FontWeight.w700,
            fontFamily: 'IBMPlexSansArabic',
          ),
        ),

        SizedBox(height: 2.h),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'إعادة الإرسال خلال',
              style: TextStyle(
                color: Color(0xff000000),

                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                fontFamily: 'IBMPlexSansArabic',
              ),
            ),

            SizedBox(width: 4.w),

            Text(
              formatTime(),
              style: TextStyle(
                color: Color(0xff000000),
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
                fontFamily: 'IBMPlexSansArabic',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
