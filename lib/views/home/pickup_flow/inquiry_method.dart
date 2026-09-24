import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed_app/services/helper_methods.dart';
import '../../../core/components/app_bar_widget.dart';
import '../../../core/components/app_image.dart';
import '../../../core/components/bottom_sheet.dart';
import '../../../core/components/custom_payment_choice.dart';
import '../../../core/components/custom_revision_container_order.dart';
import '../../../core/components/payment _bottom_ sheet.dart';
import 'choose_date.dart';

class InquiryMethodPage extends StatefulWidget {
  const InquiryMethodPage({super.key});

  @override
  State<InquiryMethodPage> createState() => _InquiryMethodPageState();
}

class _InquiryMethodPageState extends State<InquiryMethodPage> {
  int selectedMethod = 0;
  int selectedPayment = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffFAFAFA),
        appBar: AppBarWidget(title: 'إتمام الطلب', icon: 'arrow-left.svg'),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 21.h),

                Row(
                  children: [
                    AppImage(
                      image: 'truck_blue.svg',
                      width: 20.w,
                      height: 20.h,
                    ),

                    SizedBox(width: 8),

                    Text(
                      'طريقة الاستلام',
                      style: TextStyle(
                        color: Color(0xff314158),
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'IBMPlexSansArabic',
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 16.h),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedMethod = 0;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(8),
                        width: 177.w,
                        height: 150.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16).r,
                          color: Color(0xffFFFFFF),

                          border: Border.all(
                            color: selectedMethod == 0
                                ? Color(0xff314158)
                                : Colors.transparent,
                            width: 1.5.w,
                          ),

                          boxShadow: [
                            BoxShadow(
                              color: Color(0x10000000),
                              blurRadius: 2.r,
                              offset: Offset(0, 2),
                              spreadRadius: 0.r,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Align(
                              alignment: AlignmentGeometry.topLeft,
                              child: Container(
                                width: 37.w,
                                height: 19.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(99).r,
                                  color: Color(0xffF8F4EB),
                                ),
                                child: Center(
                                  child: Text(
                                    'مجاناً',
                                    style: TextStyle(
                                      color: Color(0xffC9A961),
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'IBMPlexSansArabic',
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            Align(
                              alignment: AlignmentGeometry.topRight,
                              child: Container(
                                padding: EdgeInsets.all(8),
                                width: 40.w,
                                height: 40.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12).r,

                                  gradient: LinearGradient(
                                    begin: Alignment(-0.85, -0.53),
                                    end: Alignment(0.85, 0.53),
                                    colors: [
                                      Color(0xFF314158),
                                      Color(0xFF6A8CBE),
                                    ],
                                    stops: [0.2577, 0.9329],
                                  ),
                                ),
                                child: AppImage(
                                  image: 'shop.svg',
                                  width: 30.w,
                                  height: 30.h,
                                  color: Color(0xffFFFFFF),
                                ),
                              ),
                            ),

                            SizedBox(height: 12.h),

                            Align(
                              alignment: AlignmentGeometry.centerRight,
                              child: Text(
                                'استلام من الفرع',

                                style: TextStyle(
                                  color: Color(0xff0A0A0A),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'IBMPlexSansArabic',
                                ),
                              ),
                            ),

                            SizedBox(height: 3.h),

                            Align(
                              alignment: AlignmentGeometry.centerRight,
                              child: Text(
                                'جاهز خلال ٣ أيام',

                                style: TextStyle(
                                  color: Color(0xff62748E),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'IBMPlexSansArabic',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(width: 16.w),

                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedMethod = 1;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(8),
                        width: 177.w,
                        height: 150.h,
                        decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(16).r,

                          border: Border.all(
                            color: selectedMethod == 1
                                ? Color(0xff314158)
                                : Colors.transparent,
                            width: 1.5.w,
                          ),

                          boxShadow: [
                            BoxShadow(
                              color: Color(0x10000000),
                              blurRadius: 2.r,
                              offset: Offset(0, 2),
                              spreadRadius: 0.r,
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 16.h),
                            Align(
                              alignment: AlignmentGeometry.centerRight,
                              child: Container(
                                padding: EdgeInsets.all(8),

                                width: 40.w,
                                height: 40.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12).r,
                                  color: Color(0xffF1F5F9),
                                ),
                                child: Center(
                                  child: AppImage(
                                    image: 'truck_blue.svg',
                                    width: 24.w,
                                    height: 24.h,
                                    color: Color(0xff314158),
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(height: 12.h),

                            SizedBox(height: 3.h),

                            Align(
                              alignment: AlignmentGeometry.centerRight,
                              child: Text(
                                'توصيل للمنزل',

                                style: TextStyle(
                                  color: Color(0xff0A0A0A),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'IBMPlexSansArabic',
                                ),
                              ),
                            ),

                            SizedBox(height: 3.h),

                            Align(
                              alignment: AlignmentGeometry.centerRight,
                              child: Text(
                                '٣–٧ أيام',

                                style: TextStyle(
                                  color: Color(0xff62748E),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'IBMPlexSansArabic',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 16.h),

                Row(
                  children: [
                    AppImage(
                      image: 'location.svg',
                      width: 20.w,
                      height: 20.h,
                      color: Color(0xff000000),
                    ),

                    SizedBox(width: 8.w),

                    Text(
                      'تفاصيل الاستلام',
                      style: TextStyle(
                        color: Color(0xff314158),
                        fontFamily: 'IBMPlexSansArabic',

                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 8.h),

                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    padding: EdgeInsets.all(16),
                    width: 385.w,
                    height: 74.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16).r,
                      color: Color(0xffFFFFFF),
                      border: Border.all(
                        color: Color(0xff1E3A8A).withOpacity(0.082),
                      ),

                      boxShadow: [
                        BoxShadow(
                          color: Color(0x1A000000),
                          offset: Offset(0, 1),
                          blurRadius: 2.r,
                          spreadRadius: -1.r,
                        ),

                        BoxShadow(
                          color: Color(0x1A000000),
                          offset: Offset(0, 1),
                          blurRadius: 3.r,
                          spreadRadius: 0.r,
                        ),
                      ],
                    ),

                    child: Column(
                      children: [
                        Row(
                          children: [
                            Align(
                              alignment: AlignmentGeometry.centerRight,
                              child: Container(
                                padding: EdgeInsets.all(8),

                                width: 40.w,
                                height: 40.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12).r,
                                  color: Color(0xffF1F5F9),
                                ),
                                child: Center(
                                  child: AppImage(
                                    image: 'home_black.svg',
                                    width: 24.w,
                                    height: 24.h,
                                    color: Color(0xff314158),
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(width: 12.w),

                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'الفرع الرئيسي – ميت غمر\n',

                                    style: TextStyle(
                                      color: Color(0xff0A0A0A),

                                      fontSize: 16.sp,
                                      fontFamily: 'IBMPlexSansArabic',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),

                                  TextSpan(
                                    text:
                                        'ميت غمر، شارع المعاهده بجوار كلية التربية النوعية',

                                    style: TextStyle(
                                      color: Color(0xff62748E),

                                      fontSize: 12.sp,
                                      fontFamily: 'IBMPlexSansArabic',
                                      fontWeight: FontWeight.w500,
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

                SizedBox(height: 24.h),

                Row(
                  children: [
                    AppImage(
                      image: 'card.svg',
                      width: 20.w,
                      height: 20.h,
                      color: Color(0xff292D32),
                    ),

                    SizedBox(width: 8.w),

                    Text(
                      'طريقة الدفع',
                      style: TextStyle(
                        color: Color(0xff314158),
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'IBMPlexSansArabic',
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 12.h),

                PaymentOption(
                  index: 0,
                  selectedPayment: selectedPayment,
                  title: 'الدفع عند الاستلام',
                  subtitle: 'ادفع نقداً عند وصول الطلب',
                  icon: 'wallet.svg',
                  onSelected: (index) {
                    setState(() {
                      selectedPayment = index;
                    });
                  },
                ),

                SizedBox(height: 8.h),

                PaymentOption(
                  index: 1,
                  selectedPayment: selectedPayment,
                  title: 'بطاقة ائتمانية / ميزة',
                  subtitle: 'فيزا، ماستركارد، ميزة',
                  icon: 'visa.svg',
                  onSelected: (index) {
                    setState(() {
                      selectedPayment = index;
                    });
                  },
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      builder: (context) {
                        return PaymentBottomSheet();
                      },
                    );
                  },
                ),

                SizedBox(height: 16.h),

                CustomRevisionContainerOrder(),
              ],
            ),
          ),
        ),

        bottomNavigationBar: BottomSheetWidget(
          title: 'اختر الموعد',
          onPressed: () {
            goTo(page: ChooseDatePage());
          },
        ),
      ),
    );
  }
}
