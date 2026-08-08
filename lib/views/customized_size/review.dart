import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:waheed_app/core/components/custom_container_review.dart';

import '../../core/components/app_bar_widget.dart';
import '../../core/components/app_button.dart';
import '../../core/components/app_container_size.dart';
import '../../core/components/app_image.dart';
import '../../core/components/custom_container_clothes.dart';

class Review extends StatefulWidget {
  const Review({super.key});

  @override
  State<Review> createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  int currentStepIndex = 3;
  String selectedSize = '28';
  final List titles = ["الجاكيت", "القميص", "البنطلون", "المراجعة"];
  final sizes = ['28', '30', '32', '34', '36'];
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
                    'الخطوة ٤ من ٤',
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
                  'المراجعة',
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
                  'تأكيد القياسات',
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
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Align(
                      alignment: AlignmentGeometry.centerRight,
                      child: Text(
                        'ملخص',
                        style: TextStyle(
                          color: Color(0xff62748E),
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          fontFamily: 'IBMPlexSansArabic',
                        ),
                      ),
                    ),

                    SizedBox(height: 15),

                    Row(
                      children: [
                        Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xffC9A961), Color(0xff473100)],
                            ),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Center(
                            child: AppImage(
                              image: 'white_stars.svg',
                              width: 20,
                              height: 20,
                            ),
                          ),
                        ),

                        SizedBox(width: 12),

                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'بدلة مفصّلة حسب القياس\n',

                                style: TextStyle(
                                  color: Color(0xff0A0A0A),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  fontFamily: 'IBMPlexSansArabic',
                                ),
                              ),

                              TextSpan(
                                text: 'جميع القياسات بوحدة سم',

                                style: TextStyle(
                                  color: Color(0xff62748E),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  fontFamily: 'IBMPlexSansArabic',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
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

            CustomContainerReview(
              title1: 'الجاكيت',
              title2: 'تعديل',
              icon: 'shirt_icon.svg',
              title3: 'محيط الصدر',
              title4: '94 سم',
              title5: 'عرض الكتفين',
              title6: '44 سم',
              title7: 'طول الكم',
              title8: '62 سم',
              title9: 'طول الجاكيت',
              title10: '70 سم',
            ),

            SizedBox(height: 16),

            CustomContainerReview(
              title1: 'القميص',
              title2: 'تعديل',
              icon: 'person_icon.svg',
              title3: 'محيط الرقبة',
              title4: '39 سم',
              title5: 'محيط الصدر',
              title6: '100 سم',
              title7: 'طول الكم',
              title8: '63 سم',

              showLastItem: false,
              dynamicWidth: 108,
              dynamicHeight: 57,
            ),

            SizedBox(height: 16),

            CustomContainerReview(
              title1: 'البنطلون',
              title2: 'تعديل',
              icon: 'person_icon.svg',
              title3: 'محيط الخصر',
              title4: '39 سم',
              title5: 'محيط الورك',
              title6: '100 سم',
              title7: 'طول البنطلون',
              title8: '63 سم',

              showLastItem: true,
              title9: 'طول البنطلون',
              title10: '63 سم',
            ),

            SizedBox(height: 24),

            Container(
              padding: EdgeInsets.all(12),
              width: 370,
              height: 44,
              decoration: BoxDecoration(
                color: Color(0xffFFFBEB),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  SizedBox(height: 12),

                  AppImage(
                    image: 'information_icon.svg',
                    width: 16,
                    height: 16,
                  ),

                  SizedBox(width: 4),

                  Text(
                    'سيتواصل معك خياطنا لتأكيد القياسات قبل البدء في التفصيل',
                    style: TextStyle(
                      color: Color(0xff7B3306),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'IBMPlexSansArabic',
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 16),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.black),
                    ),
                    child: const Center(
                      child: Text(
                        'السابق',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(width: 10),

              Expanded(
                flex: 2,
                child: AppButton(
                  title: 'المتابعة لإتمام الطلب',
                  icon: 'arrow-left_white_color.svg',
                  textDirection: TextDirection.ltr,
                  onPressed: () {
                    showBanner(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void showBanner(BuildContext context) {
  final messenger = ScaffoldMessenger.of(context);

  messenger.clearMaterialBanners();

  messenger.showMaterialBanner(
    MaterialBanner(
      backgroundColor: const Color(0xffFFFFFF),
      elevation: 0,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      content: Container(
        height: 48,
        decoration: BoxDecoration(
          color: const Color(0xff38B67A).withValues(alpha: .80),
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          children: [
            AppImage(image: 'circle_correct.svg', width: 20, height: 20),
            const SizedBox(width: 8),
            const Expanded(
              child: Text(
                "تم حفظ القياسات",
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  fontFamily: 'IBMPlexSansArabic',
                ),
              ),
            ),
          ],
        ),
      ),
      actions: [SizedBox.shrink()],
    ),
  );

  Future.delayed(const Duration(seconds: 2), () {
    messenger.hideCurrentMaterialBanner();
  });
}
