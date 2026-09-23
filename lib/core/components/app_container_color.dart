import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed_app/core/components/app_image.dart';

class AppContainerColor extends StatelessWidget {
  final Color? _color;
  final bool isSelected;
  final VoidCallback onTap;

  const AppContainerColor({
    super.key,
    Color? color,
    required this.isSelected,
    required this.onTap,
  }) : _color = color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 40.w,
        height: 40.h,
        decoration: BoxDecoration(
          color: _color,
          borderRadius: BorderRadius.circular(42770700).r,
          border: Border.all(
            color: isSelected ? Colors.blue : Colors.transparent,
            width: 2.w,
          ),
        ),
        child: isSelected
            ? AppImage(
                image: 'correct_white_color.svg',
                width: 16.w,
                height: 16.h,
              )
            : null,
      ),
    );
  }
}
