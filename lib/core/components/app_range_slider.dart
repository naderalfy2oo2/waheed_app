import 'package:flutter/material.dart';

class AppRangeSlider extends StatefulWidget {
  final String title;
  final int price;
  const AppRangeSlider({super.key, required this.title, required this.price});

  @override
  State<AppRangeSlider> createState() => _AppRangeSliderState();
}

class _AppRangeSliderState extends State<AppRangeSlider> {
  RangeValues _currentRange = RangeValues(0, 1800);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 60,
      decoration: BoxDecoration(
        color: Color(0xffF6F6F6),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 10),
          Text(
            widget.title,
            style: TextStyle(
              color: Color(0xff64748B),
              fontFamily: 'IBMPlexSansArabic',
              fontWeight: FontWeight.w400,
            ),
          ),

          Text(
            '${widget.price} ج.م',
            style: TextStyle(
              color: Color(0xff000000),
              fontFamily: 'IBMPlexSansArabic',
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
