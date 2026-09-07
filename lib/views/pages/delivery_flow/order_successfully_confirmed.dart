import 'package:flutter/material.dart';
import 'package:waheed_app/core/components/app_button.dart';
import 'package:waheed_app/core/components/app_image.dart';

import '../../../core/components/app_shipping_hint.dart';

class OrderSuccessfullyConfirmed extends StatefulWidget {
  const OrderSuccessfullyConfirmed({super.key});

  @override
  State<OrderSuccessfullyConfirmed> createState() =>
      _OrderSuccessfullyConfirmedState();
}

class _OrderSuccessfullyConfirmedState
    extends State<OrderSuccessfullyConfirmed> {
  void showShippingHint(BuildContext context) {
    final overlay = Overlay.of(context);

    final entry = OverlayEntry(
      builder: (context) {
        return Positioned(top: 15, right: 25, child: const ShippingHint());
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
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,

                    color: const Color(0xffF0F1F7),
                  ),
                ),
              ),

              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(32),
                  child: Column(
                    children: [
                      SizedBox(height: 60, child: Row(children: [])),
                      SizedBox(height: 50),

                      AppImage(
                        image: 'order_sucess_container.svg',
                        width: 250,
                        height: 250,
                      ),

                      Text(
                        'تم تأكيد طلبك بنجاح',
                        style: TextStyle(
                          color: Color(0xff0F172B),
                          fontWeight: FontWeight.w700,
                          fontFamily: 'IBMPlexSansArabic',
                          fontSize: 24,
                        ),
                      ),

                      SizedBox(height: 8),

                      Text(
                        'شكراً لاختيارك متجرنا. سنرسل لك إشعاراً عند شحن طلبك',
                        style: TextStyle(
                          color: Color(0xff62748E),
                          fontWeight: FontWeight.w400,
                          fontFamily: 'IBMPlexSansArabic',
                          fontSize: 14,
                        ),
                      ),

                      SizedBox(height: 32),

                      Text(
                        'رقم الطلب',
                        style: TextStyle(
                          color: Color(0xff62748E),
                          fontWeight: FontWeight.w400,
                          fontFamily: 'IBMPlexSansArabic',
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(height: 4),

                      Text(
                        'EQ-815069',
                        style: TextStyle(
                          color: Color(0xff292D32),
                          fontWeight: FontWeight.w700,
                          fontFamily: 'IBMPlexSansArabic',
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 12),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppImage(
                            image: 'truck-fast.svg',
                            width: 16,
                            height: 16,
                            color: Color(0xffC9A961),
                          ),

                          SizedBox(width: 8),

                          Text(
                            'التوصيل المتوقع: ٣–٥ أيام عمل',
                            style: TextStyle(
                              color: Color(0xff62748E),
                              fontWeight: FontWeight.w400,
                              fontFamily: 'IBMPlexSansArabic',
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 142),

                      AppButton(
                        title: 'تتبع الطلب',
                        icon: 'truck_fas_whitet.svg',

                        onPressed: () {
                          showShippingHint(context);
                        },
                      ),

                      SizedBox(height: 8),
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
