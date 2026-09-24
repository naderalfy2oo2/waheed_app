import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed_app/core/components/app_image.dart';
import '../../../core/components/app_button.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffEAEAEA),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            'عربة التسوق',
            style: TextStyle(
              color: Color(0xff000000),

              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              fontFamily: 'IBMPlexSansArabic',
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 90.h),

              Center(
                child: AppImage(
                  image: 'cart_shopping.png',
                  width: 240.w,
                  height: 240.h,
                ),
              ),

              SizedBox(height: 12.h),

              Text(
                'عربة التسوق فارعة...',
                style: TextStyle(
                  color: Color(0xff000000),

                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'IBMPlexSansArabic',
                ),
              ),

              SizedBox(height: 32.h),

              Directionality(
                textDirection: TextDirection.ltr,
                child: AppButton(
                  title: 'اذهب الي التسوق',
                  onPressed: () {},
                  icon: 'arrow-left_white_color.svg',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
