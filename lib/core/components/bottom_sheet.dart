import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed_app/core/components/app_button.dart';

class BottomSheetWidget extends StatelessWidget {
  final String title;
  final String? icon;
  final void Function()? onPressed;

  const BottomSheetWidget({
    super.key,
    required this.title,
    this.icon,
    this.onPressed,
  });

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
          child: Row(
            children: [
              SizedBox(height: 12.h),
              Column(
                children: [
                  Text(
                    'إجمالي السعر',

                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'IBMPlexSansArabic',
                    ),
                  ),

                  Text(
                    '٦٬٦٦٠ جنيه',

                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'IBMPlexSansArabic',
                    ),
                  ),
                ],
              ),

              SizedBox(width: 10.w),

              Expanded(
                child: AppButton(
                  title: title,
                  icon: icon,
                  onPressed: onPressed,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
