import 'package:flutter/material.dart';
import 'package:waheed_app/core/components/app_bar_widget.dart';
import 'package:waheed_app/core/components/app_button.dart';
import 'package:waheed_app/core/components/app_container_size.dart';
import 'package:waheed_app/core/components/app_image.dart';
import 'package:waheed_app/core/components/custom_container_clothes.dart';
import 'package:waheed_app/services/helper_methods.dart';
import 'package:waheed_app/views/customized_size/shirt_size.dart';

import '../../core/components/app_container_size _selection _counter.dart';

class JacketSizeView extends StatefulWidget {
  const JacketSizeView({super.key});

  @override
  State<JacketSizeView> createState() => _JacketSizeViewState();
}

class _JacketSizeViewState extends State<JacketSizeView> {
  int currentStepIndex = 0;
  String selectedSize = 'M';

  final List titles = ["الجاكيت", "القميص", "البنطلون", "المراجعة"];
  final sizes = ['S', 'M', 'L', 'XL', 'XXL'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBarWidget(icon: 'arrow-left.svg', title: 'قياسات البدلة'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
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

            SizedBox(height: 16),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),

              child: Row(
                children: [
                  AppImage(image: 'stars_gold_color.svg'),

                  Text(
                    'الخطوة ١ من ٤',
                    style: TextStyle(
                      color: Color(0xffC9A961),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 4),

            Align(
              alignment: AlignmentGeometry.centerRight,

              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'الجاكيت',
                  style: TextStyle(
                    color: Color(0xff0A0A0A),

                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                  textDirection: TextDirection.rtl,
                ),
              ),
            ),
            SizedBox(height: 4),

            Align(
              alignment: AlignmentGeometry.centerRight,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'قياسات الجاكيت العلوية',
                  style: TextStyle(
                    color: Color(0xff62748E),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),

                  textDirection: TextDirection.rtl,
                ),
              ),
            ),

            SizedBox(height: 24),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.all(16),
              width: 370,
              height: 132,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: const Color(0xffE5E7EB)),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x14000000),
                    blurRadius: 16,
                    offset: Offset(0, 4),
                  ),
                ],
              ),

              child: Row(
                children: [
                  Container(
                    width: 96,
                    height: 96,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      gradient: LinearGradient(
                        colors: [Color(0x101E3A8A), Color(0x15C9A961)],
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: AppImage(
                        image: 'shirt.png',
                        width: 64,
                        height: 96,
                      ),
                    ),
                  ),
                  SizedBox(width: 16),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,

                        children: [
                          AppImage(image: 'ruler.svg', width: 14, height: 14),

                          SizedBox(width: 8),

                          Text(
                            'دليل القياس',
                            style: TextStyle(
                              color: Color(0xffC9A961),
                              fontFamily: 'IBMPlexSansArabic',
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 4),

                      Text(
                        'قِس بدقة فوق ملابسك العادية وأبقِ شريط القياس\n مستوياً وغير مشدود.',
                        style: TextStyle(
                          color: Color(0xff45556C),
                          fontFamily: 'IBMPlexSansArabic',
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 16),

            Container(
              width: 370,
              height: 107,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: const Color(0xffE5E7EB)),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x14000000),
                    blurRadius: 16,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'اختر مقاساً جاهزاً',
                        style: TextStyle(
                          color: Color(0xff62748E),
                          fontFamily: 'IBMPlexSansArabic',
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),

                      Spacer(),

                      Container(
                        width: 36,
                        height: 19,
                        decoration: BoxDecoration(
                          color: Color(0xffC9A961).withOpacity(0.125),
                          borderRadius: BorderRadius.circular(42770700),
                        ),
                        child: Center(
                          child: Text(
                            'سريع',
                            style: TextStyle(
                              color: Color(0xffC9A961),
                              fontFamily: 'IBMPlexSansArabic',
                              fontWeight: FontWeight.w600,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 8),

                  Row(
                    children: List.generate(
                      sizes.length,
                      (index) => Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: AppContainerSize(
                            title: sizes[index],
                            isSelected: selectedSize == sizes[index],
                            onTap: () {
                              setState(() {
                                selectedSize = sizes[index];
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 16),

            AppContainerSizeSelectionCounter(
              title1: 'محيط الصدر',
              title2: 'حول أوسع جزء من الصدر',
              title3: 'عرض الكتفين',
              title4: 'من كتف إلى كتف',
              title5: 'طول الكم',
              title6: 'من الكتف إلى المعصم',
              title7: 'طول الجاكيت',
              title8: 'من الرقبة إلى الحافة السفلية',
              text1: '94',
              text2: '44',
              text3: '62',
              text4: '70',
            ),

            SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: AppButton(
          title: 'التالي',
          icon: 'arrow-left_white_color.svg',
          textDirection: TextDirection.ltr,
          onPressed: () {
            if (currentStepIndex < titles.length - 1) {
              goTo(page: ShirtSizeView());
            }
          },
        ),
      ),
    );
  }
}
