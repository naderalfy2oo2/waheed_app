import 'package:flutter/material.dart';

class AppContainerSize extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onTap;
  const AppContainerSize({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      child: Container(
        width: 62,
        height: 42,
        decoration: BoxDecoration(
          color: isSelected ? Color(0xffC9A961) : Colors.white,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: isSelected ? Colors.green : Color(0xffE5E7EB),
          ),

          gradient: LinearGradient(
            colors: [Color(0x101E3A8A), Color(0x15C9A961)],
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: isSelected ? Color((0xff334155)) : Color(0xff334155),

              fontFamily: 'IBMPlexSansArabic',
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
