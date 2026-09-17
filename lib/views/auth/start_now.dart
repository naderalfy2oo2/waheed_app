import 'package:flutter/material.dart';
import 'package:waheed_app/core/components/app_button.dart';
import 'package:waheed_app/core/components/app_image.dart';
import 'register.dart';

class StartNow extends StatelessWidget {
  const StartNow({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            Positioned.fill(
              child: AppImage(
                image: 'start_now.jpg',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            Positioned.fill(
              child: Container(
                color: const Color(0xff000000).withOpacity(0.70),
              ),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                width: double.infinity,

                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 24),

                    Text(
                      'إطلالة تليق بك',
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'IBMPlexSansArabic',
                      ),
                    ),

                    SizedBox(height: 4),

                    Text(
                      'تسوّق أو استأجر بدلتك المفضلة بخطوات بسيطة\n وتجربة فاخرة.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff314158),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'IBMPlexSansArabic',
                      ),
                    ),

                    SizedBox(height: 16),

                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: AppButton(
                        title: 'البدء الآن',
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => Register()),
                          );
                        },
                      ),
                    ),

                    SizedBox(height: 9),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
