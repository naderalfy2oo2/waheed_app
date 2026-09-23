import 'package:flutter/material.dart';
import 'package:waheed_app/views/auth/register.dart';
import 'package:waheed_app/core/components/app_image.dart';
import 'package:waheed_app/services/helper_methods.dart';
import 'package:waheed_app/views/pages/view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      goTo(page: Register());
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 141),
          child: Column(
            children: [
              SizedBox(height: 300),
              AppImage(image: 'splash.png', width: 120, height: 120),

              Text(
                'WAHEED HASSAN\n     MEN’S SUITS',
                style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
