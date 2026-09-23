import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed_app/core/components/app_button.dart';
import 'package:waheed_app/core/components/app_image.dart';
import '../../../core/components/app_shipping_hint.dart';

class OrderSuccessfullyConfirmedPage extends StatefulWidget {
  const OrderSuccessfullyConfirmedPage({super.key});

  @override
  State<OrderSuccessfullyConfirmedPage> createState() =>
      _OrderSuccessfullyConfirmedPageState();
}

class _OrderSuccessfullyConfirmedPageState
    extends State<OrderSuccessfullyConfirmedPage> {
  void showShippingHint(BuildContext context) {
    final overlay = Overlay.of(context);

    final entry = OverlayEntry(
      builder: (context) {
        return Positioned(top: 15, right: 25, child: ShippingHint());
      },
    );

    overlay.insert(entry);

    Future.delayed(const Duration(seconds: 3), () {
      entry.remove();
      entry.dispose();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                top: -100,
                right: -70,
                child: Container(
                  width: 300.w,
                  height: 300.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,

                    color: Color(0xffF0F1F7),
                  ),
                ),
              ),

              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(32),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 60.h,
                        child: Row(children: []),
                      ),
                      SizedBox(height: 50.h),

                      AppImage(
                        image: 'order_sucess_container.svg',
                        width: 250.w,
                        height: 250.h,
                      ),

                      Text(
                        'تم تأكيد طلبك بنجاح',
                        style: TextStyle(
                          color: Color(0xff0F172B),
                          fontWeight: FontWeight.w700,
                          fontFamily: 'IBMPlexSansArabic',
                          fontSize: 24.sp,
                        ),
                      ),

                      SizedBox(height: 8.h),

                      Text(
                        'شكراً لاختيارك متجرنا. سنرسل لك إشعاراً عند شحن طلبك',
                        style: TextStyle(
                          color: Color(0xff62748E),
                          fontWeight: FontWeight.w400,
                          fontFamily: 'IBMPlexSansArabic',
                          fontSize: 14.sp,
                        ),
                      ),

                      SizedBox(height: 32.h),

                      Text(
                        'رقم الطلب',
                        style: TextStyle(
                          color: Color(0xff62748E),
                          fontWeight: FontWeight.w400,
                          fontFamily: 'IBMPlexSansArabic',
                          fontSize: 13.sp,
                        ),
                      ),
                      SizedBox(height: 4.h),

                      Text(
                        'EQ-815069',
                        style: TextStyle(
                          color: Color(0xff292D32),
                          fontWeight: FontWeight.w700,
                          fontFamily: 'IBMPlexSansArabic',
                          fontSize: 18.sp,
                        ),
                      ),
                      SizedBox(height: 12.h),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppImage(
                            image: 'truck-fast.svg',
                            width: 16.w,
                            height: 16.h,
                            color: Color(0xffC9A961),
                          ),

                          SizedBox(width: 8.w),

                          Text(
                            'التوصيل المتوقع: ٣–٥ أيام عمل',
                            style: TextStyle(
                              color: Color(0xff62748E),
                              fontWeight: FontWeight.w400,
                              fontFamily: 'IBMPlexSansArabic',
                              fontSize: 12.sp,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 142.h),

                      AppButton(
                        title: 'تتبع الطلب',
                        icon: 'truck_fas_whitet.svg',

                        onPressed: () {
                          showShippingHint(context);
                        },
                      ),

                      SizedBox(height: 8.h),
                      AppButton(
                        title: 'العودة للرئيسية',
                        textColor: Color(0xff000000),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
