import 'package:flutter/material.dart';

class CustomRowTextHome extends StatelessWidget {
  final String? title;
  final String? subtitle;
  const CustomRowTextHome({super.key, this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        textDirection: TextDirection.rtl,

        children: [
          Text(
            title ?? "",
            style: TextStyle(
              color: Color(0xff000000),
              fontSize: 16,
              fontFamily: 'IBMPlexSansArabic',
              fontWeight: FontWeight.w800,
            ),
          ),

          Spacer(),

          TextButton(
            onPressed: () {},
            child: Text(
              subtitle ?? "",
              style: TextStyle(
                color: Color(0xff314158),
                fontSize: 12,
                fontFamily: 'IBMPlexSansArabic',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
