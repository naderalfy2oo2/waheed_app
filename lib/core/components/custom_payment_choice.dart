import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_image.dart';

class PaymentOption extends StatelessWidget {
  final int index;
  final int selectedPayment;
  final String title;
  final String subtitle;
  final String icon;
  final VoidCallback? onTap;
  final Function(int) onSelected;
  const PaymentOption({
    super.key,
    required this.index,
    required this.selectedPayment,
    required this.title,
    required this.subtitle,
    required this.icon,
    this.onTap,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    final bool isSelected = selectedPayment == index;

    return GestureDetector(
      onTap: () {
        onSelected(index);
        onTap?.call();
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        width: double.infinity.w,
        height: 77.h,
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24).r,
          border: Border.all(
            color: isSelected ? Colors.black : Color(0xffE5E7EB),
            width: isSelected ? 1.5.w : 1.w,
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 40.w,
              height: 40.h,
              decoration: BoxDecoration(
                color: isSelected ? Color(0xff252525) : Color(0xffF2F4F7),
                borderRadius: BorderRadius.circular(8).r,
              ),
              child: AppImage(image: icon, width: 20.w, height: 20.h),
            ),

            SizedBox(width: 12.w),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Color(0xff0A0A0A),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'IBMPlexSansArabic',
                    ),
                  ),

                  SizedBox(height: 2.h),

                  Text(
                    subtitle,
                    style: TextStyle(
                      color: Color(0xff62748E),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'IBMPlexSansArabic',
                    ),
                  ),
                ],
              ),
            ),

            Checkbox(
              value: isSelected,
              onChanged: (value) {
                onSelected(index);
                onTap?.call();
              },
              shape: CircleBorder(),
              activeColor: Colors.black,
              checkColor: Colors.white,
              side: BorderSide(color: Color(0xffCBD5E1), width: 1.5.w),
              visualDensity: VisualDensity.compact,
            ),
          ],
        ),
      ),
    );
  }
}
