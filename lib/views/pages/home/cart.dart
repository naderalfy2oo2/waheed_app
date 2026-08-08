import 'package:flutter/material.dart';
import 'package:waheed_app/core/components/app_image.dart';

import '../../../core/components/app_button.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffEAEAEA),
        appBar: AppBar(
          title: Text(
            'عربة التسوق',
            style: TextStyle(
              color: Color(0xff000000),

              fontSize: 18,
              fontWeight: FontWeight.w600,
              fontFamily: 'IBMPlexSansArabic',
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 90),

              Center(
                child: AppImage(
                  image: 'cart_shopping.png',
                  width: 240,
                  height: 240,
                ),
              ),

              SizedBox(height: 12),

              Text(
                'عربة التسوق فارعة...',
                style: TextStyle(
                  color: Color(0xff000000),

                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'IBMPlexSansArabic',
                ),
              ),

              SizedBox(height: 32),

              AppButton(
                title: 'اذهب الي التسوق',
                onPressed: () {},
                icon: 'arrow-left_white_color.svg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
