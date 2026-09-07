import 'package:flutter/material.dart';

import '../../core/components/app_bar_widget.dart';
import '../../core/components/app_image.dart';

class TermsConditions extends StatelessWidget {
  const TermsConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffEAEAEA),
        appBar: AppBarWidget(title: 'الشروط والاحكام', icon: 'arrow-left.svg'),
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
