import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed_app/core/components/custom_container_choice.dart';
import 'package:waheed_app/core/components/custom_payment_choice.dart';
import 'package:waheed_app/services/helper_methods.dart';
import 'package:waheed_app/views/pages/delivery_flow/add_new_address.dart';
import 'package:waheed_app/views/pages/delivery_flow/revision_order.dart';
import '../../../core/components/add_ card_ bottom_ sheet.dart';
import '../../../core/components/address_ bottom_ sheet.dart';
import '../../../core/components/app_bar_widget.dart';
import '../../../core/components/app_image.dart';
import '../../../core/components/bottom_sheet.dart';
import '../../../core/components/custom_revision_container_order.dart';
import '../../../core/components/payment _bottom_ sheet.dart';

class CompleteOrderPage extends StatefulWidget {
  const CompleteOrderPage({super.key});

  @override
  State<CompleteOrderPage> createState() => _CompleteOrderPageState();
}

class _CompleteOrderPageState extends State<CompleteOrderPage> {
  int selectedPayment = 0;
  int selectedMethod = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        appBar: AppBarWidget(title: 'مراجعة الطلب', icon: 'arrow-left.svg'),
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

                    SizedBox(width: 8.w),

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
                              alignment: AlignmentGeometry.centerRight,
                              child: Container(
                                padding: EdgeInsets.all(8),
                                margin: EdgeInsets.all(8),
                                width: 40.w,
                                height: 40.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12).r,
                                  color: Color(0xffF1F5F9),
                                ),
                                child: Center(
                                  child: AppImage(
                                    image: 'shop.svg',
                                    width: 24.w,
                                    height: 24.h,
                                    color: Color(0xff314158),
                                  ),
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
                                  fontSize: 14.h,
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
                            width: 1.5.h,
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
                                  image: 'truck_blue.svg',
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
                      'عنوان التوصيل',
                      style: TextStyle(
                        color: Color(0xff314158),
                        fontFamily: 'IBMPlexSansArabic',

                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 16.h),

                DottedBorder(
                  child: GestureDetector(
                    onTap: () {
                      goTo(page: AddNewAddressPage());
                    },
                    child: Container(
                      width: 370.w,
                      height: 48.h,
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(12).r,
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 13.h),

                          AppImage(
                            image: 'add.svg',
                            width: 14.w,
                            height: 14.h,
                            color: Color(0xff314158),
                          ),

                          SizedBox(width: 4.w),

                          Text(
                            'إضافة عنوان جديد',
                            style: TextStyle(
                              color: Color(0xff314158),

                              fontSize: 14.sp,

                              fontWeight: FontWeight.w400,
                              fontFamily: 'IBMPlexSansArabic',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 16.h),

                Row(
                  children: [
                    AppImage(
                      image: 'truck_fas_whitet.svg',
                      width: 20.w,
                      height: 20.h,
                      color: Color(0xff292D32),
                    ),

                    SizedBox(width: 8.w),

                    Text(
                      'طريقة التوصيل',
                      style: TextStyle(
                        color: Color(0xff314158),
                        fontFamily: 'IBMPlexSansArabic',

                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 16.h),

                CustomContainerChoice(),

                SizedBox(height: 16.h),

                Row(
                  children: [
                    AppImage(image: 'card.svg', width: 20.w, height: 20.h),

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

                SizedBox(height: 16.h),

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

                SizedBox(height: 10.h),

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
                        return const PaymentBottomSheet();
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
          title: 'إتمام الطلب',
          onPressed: () {
            goTo(page: RevisionOrderPage());
          },
        ),
      ),
    );
  }
}
