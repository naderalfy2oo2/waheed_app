import 'package:flutter/material.dart';
import 'package:waheed_app/core/components/app_button.dart';

class BottomSheetWidget extends StatelessWidget {
  final String title;
  final String? icon;
  final void Function()? onPressed;

  const BottomSheetWidget({
    super.key,
    required this.title,
    this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Container(
        width: double.infinity,

        padding: EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        ),
        child: SingleChildScrollView(
          child: Row(
            children: [
              SizedBox(height: 12),
              Column(
                children: [
                  Text(
                    'إجمالي السعر',

                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'IBMPlexSansArabic',
                    ),
                  ),

                  Text(
                    '٦٬٦٦٠ جنيه',

                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'IBMPlexSansArabic',
                    ),
                  ),
                ],
              ),

              SizedBox(width: 10),

              Expanded(
                child: AppButton(
                  title: title,
                  icon: icon,
                  onPressed: onPressed,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
