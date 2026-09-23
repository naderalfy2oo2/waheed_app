import 'package:flutter/material.dart';
import 'package:waheed_app/core/components/app_bar_widget.dart';
import 'package:waheed_app/core/components/app_image.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffEAEAEA),
        appBar: AppBarWidget(title: 'سياسة الخصوصية', icon: 'arrow-left.svg'),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 64),
            Center(child: AppImage(image: 'splash.png', width: 64, height: 64)),
          ],
        ),
      ),
    );
  }
}
