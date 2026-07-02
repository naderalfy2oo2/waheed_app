import 'package:flutter/material.dart';
import 'package:waheed_app/core/components/app_bar_widget.dart';
import 'package:waheed_app/core/components/app_button.dart';
import 'package:waheed_app/core/components/custom_container_clothes.dart';

class JacketSize extends StatefulWidget {
  const JacketSize({super.key});

  @override
  State<JacketSize> createState() => _JacketSizeState();
}

class _JacketSizeState extends State<JacketSize> {
  int currentStepIndex = 0;

  final List<String> titles = ["الجاكيت", "القميص", "البنطلون", "المراجعة"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        appBar: AppBarWidget(icon: 'arrow-left.svg', title: 'قياسات البدلة'),
        body: Column(
          children: [
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Row(
                  children: List.generate(
                    titles.length,
                    (index) => Expanded(
                      child: CustomContainerClothes(
                        Steplevel: index + 1,
                        title: titles[index],
                        isCurrentIndex: currentStepIndex == index,
                        isCompleted: currentStepIndex > index,
                        showLineColor: index != titles.length - 1,
                        lineCompleted: currentStepIndex > index,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 16),

            Row(children: [
                
              ],
            ),

            // AppButton(
            //   title: 'التالي',
            //   icon: 'iconsax-arrow-left.svg',
            //   onPressed: () {
            //     if (currentStepIndex < titles.length - 1) {
            //       setState(() {
            //         currentStepIndex++;
            //       });
            //     }
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
