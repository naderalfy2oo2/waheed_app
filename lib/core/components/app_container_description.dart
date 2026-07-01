import 'package:flutter/material.dart';

class AppContainerDescription extends StatelessWidget {
  final String title;
  const AppContainerDescription({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),

      width: 77,
      height: 25,
      decoration: BoxDecoration(
        color: Color(0xffC9A961).withOpacity(0.08),
        borderRadius: BorderRadius.circular(99),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: Color(0xffC9A961),
          fontSize: 11,
          fontWeight: FontWeight.w500,
          fontFamily: 'IBMPlexSansArabic',
        ),
      ),
    );
  }
}
