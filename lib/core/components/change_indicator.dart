import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangeIndicator extends StatelessWidget {
  final int currentIndex;

  const ChangeIndicator({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        bool isActive = index < currentIndex;

        return Row(
          children: [
            Container(
              width: 115.w,
              height: 6.h,
              decoration: BoxDecoration(
                color: isActive ? Color(0xff000000) : Color(0xffE5E7EB),
                borderRadius: BorderRadius.circular(99).r,
              ),
            ),

            if (index != 2) SizedBox(width: 8.w),
          ],
        );
      }),
    );
  }
}
