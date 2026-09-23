import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShippingHint extends StatelessWidget {
  const ShippingHint({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 333.w,
      height: 64.h,
      decoration: BoxDecoration(
        color: Color(0xFF94A3B8),
        borderRadius: BorderRadius.circular(16).r,
      ),
      alignment: Alignment.center,
      child: Text(
        'الزرار دا بيروح علي موقع شركة الشحن',
        style: TextStyle(
          color: Color(0xffFFF4E7),
          fontSize: 20.sp,
          fontWeight: FontWeight.w800,
          fontFamily: 'IBMPlexSansArabic',
        ),
      ),
    );
  }
}
