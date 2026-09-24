import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed_app/core/components/custom_container_review.dart';
import '../../core/components/app_bar_widget.dart';
import '../../core/components/app_button.dart';
import '../../core/components/app_container_size.dart';
import '../../core/components/app_image.dart';
import '../../core/components/custom_container_clothes.dart';

class ReviewView extends StatefulWidget {
  const ReviewView({super.key});

  @override
  State<ReviewView> createState() => _ReviewViewState();
}

class _ReviewViewState extends State<ReviewView> {
  int currentStepIndex = 3;
  String selectedSize = '28';
  final titles = ["الجاكيت", "القميص", "البنطلون", "المراجعة"];
  final sizes = ['28', '30', '32', '34', '36'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBarWidget(icon: 'arrow-left.svg', title: 'قياسات البدلة'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 24.h),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
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

            SizedBox(height: 16.h),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),

              child: Row(
                children: [
                  AppImage(image: 'stars_gold_color.svg'),

                  Text(
                    'الخطوة ٤ من ٤',
                    style: TextStyle(
                      color: Color(0xffC9A961),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 4.h),

            Align(
              alignment: AlignmentGeometry.centerRight,

              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'المراجعة',
                  style: TextStyle(
                    color: Color(0xff0A0A0A),

                    fontSize: 22.sp,
                    fontWeight: FontWeight.w700,
                  ),
                  textDirection: TextDirection.rtl,
                ),
              ),
            ),

            SizedBox(height: 4.h),

            Align(
              alignment: AlignmentGeometry.centerRight,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'تأكيد القياسات',
                  style: TextStyle(
                    color: Color(0xff62748E),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),

                  textDirection: TextDirection.rtl,
                ),
              ),
            ),

            SizedBox(height: 24.h),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.all(16),
              width: 370.w,
              height: 132.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24).r,
                border: Border.all(color: Color(0xffE5E7EB)),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x14000000),
                    blurRadius: 16.r,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Align(
                      alignment: AlignmentGeometry.centerRight,
                      child: Text(
                        'ملخص',
                        style: TextStyle(
                          color: Color(0xff62748E),
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          fontFamily: 'IBMPlexSansArabic',
                        ),
                      ),
                    ),

                    SizedBox(height: 15.h),

                    Row(
                      children: [
                        Container(
                          width: 48.w,
                          height: 48.h,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xffC9A961), Color(0xff473100)],
                            ),
                            borderRadius: BorderRadius.circular(14).r,
                          ),
                          child: Center(
                            child: AppImage(
                              image: 'white_stars.svg',
                              width: 20.w,
                              height: 20.h,
                            ),
                          ),
                        ),

                        SizedBox(width: 12.w),

                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'بدلة مفصّلة حسب القياس\n',

                                style: TextStyle(
                                  color: Color(0xff0A0A0A),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.sp,
                                  fontFamily: 'IBMPlexSansArabic',
                                ),
                              ),

                              TextSpan(
                                text: 'جميع القياسات بوحدة سم',

                                style: TextStyle(
                                  color: Color(0xff62748E),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
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

            SizedBox(height: 16.h),

            Container(
              width: 370.w,
              height: 107.h,
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24).r,
                border: Border.all(color: Color(0xffE5E7EB)),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x14000000),
                    blurRadius: 16.r,
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
                          fontSize: 12.sp,
                        ),
                      ),

                      Spacer(),

                      Container(
                        width: 36.w,
                        height: 19.h,
                        decoration: BoxDecoration(
                          color: Color(0xffC9A961).withOpacity(0.125),
                          borderRadius: BorderRadius.circular(42770700).r,
                        ),
                        child: Center(
                          child: Text(
                            'سريع',
                            style: TextStyle(
                              color: Color(0xffC9A961),
                              fontFamily: 'IBMPlexSansArabic',
                              fontWeight: FontWeight.w600,
                              fontSize: 10.sp,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 8.h),

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

            SizedBox(height: 16.h),

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

            SizedBox(height: 16.h),

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

            SizedBox(height: 16.h),

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

            SizedBox(height: 24.h),

            Container(
              padding: EdgeInsets.all(12),
              width: 370.w,
              height: 44.h,
              decoration: BoxDecoration(
                color: Color(0xffFFFBEB),
                borderRadius: BorderRadius.circular(16).r,
              ),
              child: Row(
                children: [
                  SizedBox(height: 12.h),

                  AppImage(
                    image: 'information_icon.svg',
                    width: 16.w,
                    height: 16.h,
                  ),

                  SizedBox(width: 4.w),

                  Text(
                    'سيتواصل معك خياطنا لتأكيد القياسات قبل البدء في التفصيل',
                    style: TextStyle(
                      color: Color(0xff7B3306),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'IBMPlexSansArabic',
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 16.h),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 56.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16).r,
                      border: Border.all(color: Colors.black),
                    ),
                    child: Center(
                      child: Text(
                        'السابق',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(width: 10.w),

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
      backgroundColor: Color(0xffFFFFFF),
      elevation: 0,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      content: Container(
        height: 48.h,
        decoration: BoxDecoration(
          color: Color(0xff38B67A).withValues(alpha: .80),
          borderRadius: BorderRadius.circular(12).r,
        ),
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          children: [
            AppImage(image: 'circle_correct.svg', width: 20.w, height: 20.h),
            SizedBox(width: 8.w),
            Expanded(
              child: Text(
                "تم حفظ القياسات",
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp,
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

  Future.delayed(Duration(seconds: 2), () {
    messenger.hideCurrentMaterialBanner();
  });
}
