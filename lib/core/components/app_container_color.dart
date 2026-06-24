import 'package:flutter/material.dart';
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
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: _color,
          borderRadius: BorderRadius.circular(42770700),
          border: Border.all(
            color: isSelected ? Colors.blue : Colors.transparent,
            width: 2,
          ),
        ),
        child: isSelected
            ? AppImage(image: 'correct.svg', width: 16, height: 16)
            : null,
      ),
    );
  }
}
