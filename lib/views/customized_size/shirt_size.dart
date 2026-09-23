import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed_app/core/components/app_bar_widget.dart';
import 'package:waheed_app/core/components/app_button.dart';
import 'package:waheed_app/core/components/app_container_size.dart';
import 'package:waheed_app/core/components/app_image.dart';
import 'package:waheed_app/core/components/custom_container_clothes.dart';
import 'package:waheed_app/services/helper_methods.dart';
import '../../core/components/app_container_size _selection _counter.dart';
import 'pant_size.dart';

class ShirtSizeView extends StatefulWidget {
  const ShirtSizeView({super.key});

  @override
  State<ShirtSizeView> createState() => _ShirtSizeViewState();
}

class _ShirtSizeViewState extends State<ShirtSizeView> {
  int currentStepIndex = 1;
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
                    'الخطوة ٢ من ٤',
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
                  'القميص',
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
                  'قياسات الرقبة والأكمام',
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

              child: Row(
                children: [
                  Container(
                    width: 96.w,
                    height: 96.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14).r,
                      gradient: LinearGradient(
                        colors: [Color(0x101E3A8A), Color(0x15C9A961)],
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(14).r,
                      child: AppImage(
                        image: 'shirt.png',
                        width: 64.w,
                        height: 96.h,
                      ),
                    ),
                  ),
                  SizedBox(width: 16.w),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,

                        children: [
                          AppImage(
                            image: 'ruler.svg',
                            width: 14.w,
                            height: 14.h,
                          ),

                          SizedBox(width: 8.w),

                          Text(
                            'دليل القياس',
                            style: TextStyle(
                              color: Color(0xffC9A961),
                              fontFamily: 'IBMPlexSansArabic',
                              fontWeight: FontWeight.w600,
                              fontSize: 12.sp,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 4.h),

                      Text(
                        'قِس بدقة فوق ملابسك العادية وأبقِ شريط القياس\n مستوياً وغير مشدود.',
                        style: TextStyle(
                          color: Color(0xff45556C),
                          fontFamily: 'IBMPlexSansArabic',
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                        ),
                      ),
                    ],
                  ),
                ],
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
                          padding: EdgeInsets.symmetric(horizontal: 4),
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

            AppContainerSizeSelectionCounter(
              title1: 'محيط الرقبة',
              title2: 'عند الياقة',
              title3: 'محيط الصدر',
              title4: 'حول أوسع جزء من الصدر',
              title5: 'طول الكم',
              title6: 'من الكتف إلى المعصم',

              text1: '39',
              text2: '94',
              text3: '62',
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
              SizedBox(
                width: 142.w,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 56.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16).r,
                      border: Border.all(
                        color: Color(0xff000000),
                        style: BorderStyle.solid,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffFFFFFF),
                          offset: Offset(0, 2),
                          blurRadius: 8.r,
                          spreadRadius: 0.r,
                        ),
                      ],
                    ),

                    child: Center(
                      child: Text(
                        'السابق',
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                          fontFamily: 'IBMPlexSansArabic',
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(width: 10.w),

              Expanded(
                child: AppButton(
                  title: 'التالي',
                  icon: 'arrow-left_white_color.svg',
                  textDirection: TextDirection.ltr,
                  onPressed: () {
                    goTo(page: PantsSizeView());
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
