import 'package:flutter/material.dart';
import 'package:waheed_app/core/components/app_image.dart';
import 'package:waheed_app/view.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeView()),
      );
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
