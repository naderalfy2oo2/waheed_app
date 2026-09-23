import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:waheed_app/services/helper_methods.dart';

import '../../../core/components/app_bar_widget.dart';
import '../../../core/components/app_image.dart';
import 'confirm_order.dart';

class ConfirmChooseDatePage extends StatefulWidget {
  const ConfirmChooseDatePage({super.key, required date, required time});

  @override
  State<ConfirmChooseDatePage> createState() => _ConfirmChooseDatePageState();
}

class _ConfirmChooseDatePageState extends State<ConfirmChooseDatePage> {
  late List dates;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();

    dates = List.generate(
      14,
      (index) => DateTime.now().add(Duration(days: index)),
    );
  }

  final List time = [
    {'time': '١٢:٠٠ م', 'enabled': true},
    {'time': '١١:٠٠ ص', 'enabled': true},
    {'time': '١٠:٣٠ ص', 'enabled': false},
    {'time': '٠٤:٣٠ م', 'enabled': true},
    {'time': '٠٣:٠٠ م', 'enabled': true},
    {'time': '٠١:٣٠ م', 'enabled': true},
    {'time': '٠٩:٠٠ م', 'enabled': false},
    {'time': '٠٧:٣٠ م', 'enabled': true},
    {'time': '٠٦:٠٠ م', 'enabled': true},
  ];

  int? SelectedIndex;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffFAFAFA),
        appBar: AppBarWidget(title: 'اختر الموعد', icon: 'arrow-left.svg'),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 21.h),

                Row(
                  children: [
                    AppImage(image: 'date.svg', width: 16.w, height: 16.h),

                    SizedBox(width: 8.w),

                    Text(
                      'اختر التاريخ',
                      style: TextStyle(
                        color: Color(0xff314158),
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'IBMPlexSansArabic',
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 12.h),

                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(16),
                  width: 420.w,
                  height: 170.h,

                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(16).r,

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
                      SizedBox(height: 16.h),

                      Align(
                        alignment: AlignmentGeometry.topRight,
                        child: Text(
                          'مايو ٢٠٢٦',
                          style: TextStyle(
                            color: Color(0xff62748E),

                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'IBMPlexSansArabic',
                          ),
                        ),
                      ),

                      SizedBox(height: 12.h),
                      SizedBox(
                        height: 90.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          itemCount: dates.length,
                          itemBuilder: (context, index) {
                            final date = dates[index];
                            final isSelected = index == selectedIndex;
                            final isNeighbor =
                                index == selectedIndex - 1 ||
                                index == selectedIndex + 1;

                            Color textColor;
                            if (isSelected) {
                              textColor = Color(0xffFFFFFF);
                            } else if (isNeighbor) {
                              textColor = Color(0xff0F172A);
                            } else {
                              textColor = Color(0xffCBD5E1);
                            }

                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedIndex = index;
                                });
                              },
                              child: Container(
                                width: 65.w,
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 4,
                                ),
                                decoration: BoxDecoration(
                                  color: isSelected
                                      ? Color(0xFF314158)
                                      : Color(0xffF8FAFC),
                                  borderRadius: BorderRadius.circular(16).r,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      DateFormat.E('ar').format(date),
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        color: textColor,
                                      ),
                                    ),
                                    SizedBox(height: 4.h),
                                    Text(
                                      date.day.toString(),
                                      style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.bold,
                                        color: textColor,
                                      ),
                                    ),
                                    SizedBox(height: 2.h),
                                    Text(
                                      DateFormat.MMM('ar').format(date),
                                      style: TextStyle(
                                        fontSize: 11.sp,
                                        color: textColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 16.h),

                Row(
                  children: [
                    AppImage(image: 'time.svg', width: 16.w, height: 16.h),

                    SizedBox(width: 8.w),

                    Text(
                      'اختر الوقت',
                      style: TextStyle(
                        color: Color(0xff314158),
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'IBMPlexSansArabic',
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 12.h),

                Container(
                  padding: EdgeInsets.all(24),
                  width: double.infinity.w,
                  height: 235.h,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(16).r,

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
                      SizedBox(height: 12.h),

                      GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: time.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,
                              childAspectRatio: 2.4,
                            ),
                        itemBuilder: (context, index) {
                          final slot = time[index];
                          final bool enabled = slot['enabled'] as bool;
                          final bool isSelected = SelectedIndex == index;

                          Color containerColor;
                          Color borderColor;
                          Color textColor;

                          if (isSelected) {
                            containerColor = Color(0xFF314158);
                            borderColor = Color(0xFF314158);
                            textColor = Color(0xFFFFFFFF);
                          } else if (!enabled) {
                            containerColor = Color(0xFFF8FAFC);
                            borderColor = Color(0xFFE2E8F0);
                            textColor = Color(0xFFCBD5E1);
                          } else {
                            containerColor = Color(0xFFFFFFFF);
                            borderColor = Color(0xFFE2E8F0);
                            textColor = Color(0xFF0F172A);
                          }

                          return GestureDetector(
                            onTap: enabled
                                ? () => setState(() => SelectedIndex = index)
                                : null,
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: containerColor,
                                borderRadius: BorderRadius.circular(10).r,
                                border: Border.all(
                                  color: borderColor,
                                  width: 1.w,
                                ),
                              ),
                              child: Text(
                                slot['time'] as String,
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: isSelected
                                      ? FontWeight.w600
                                      : FontWeight.normal,
                                  color: textColor,
                                  decoration: !enabled
                                      ? TextDecoration.lineThrough
                                      : TextDecoration.none,
                                  decorationColor: textColor,
                                  fontFamily: 'IBMPlexSansArabic',
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 16.h),

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

                SizedBox(height: 157.h),
              ],
            ),
          ),
        ),

        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              goTo(page: ConfirmOrderPage());
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(16),
                width: 370.w,
                height: 56.h,
                decoration: BoxDecoration(
                  color: Color(0xff000000),

                  boxShadow: [
                    BoxShadow(
                      color: Color(0x1A000000),
                      offset: Offset(0, 4),
                      blurRadius: 6.r,
                      spreadRadius: -4.r,
                    ),

                    BoxShadow(
                      color: Color(0x1A000000),
                      offset: Offset(0, 10),
                      blurRadius: 15.r,
                      spreadRadius: -3.r,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(16).r,
                ),
                child: Center(
                  child: Text(
                    'تأكيد الموعد',
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'IBMPlexSansArabic',
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
