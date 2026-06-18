import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String title;
  final Color? color;

  AppButton({super.key, required this.title, this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 370,
      height: 56,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(16),
          ),
          backgroundColor: Color(0xff000000),
        ),
        onPressed: () {},
        child: Text(
          title,
          style: TextStyle(
            color: Color(0xffFFFFFF),
            fontSize: 20,
            fontFamily: 'IBMPlexSansArabic',
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
