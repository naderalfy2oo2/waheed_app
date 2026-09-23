import 'package:flutter/material.dart';
import 'package:waheed_app/core/components/app_bar_widget.dart';
import 'package:waheed_app/core/components/app_image.dart';
import 'package:waheed_app/core/components/bottom_sheet.dart';
import 'package:waheed_app/services/helper_methods.dart';
import 'package:waheed_app/views/pages/delivery_flow/order_successfully_confirmed.dart';
import '../../../core/components/address_ bottom_ sheet.dart';

class RevisionOrderPage extends StatefulWidget {
  const RevisionOrderPage({super.key});

  @override
  State<RevisionOrderPage> createState() => _RevisionOrderPageState();
}

class _RevisionOrderPageState extends State<RevisionOrderPage> {
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
                SizedBox(height: 21),

                Row(
                  children: [
                    AppImage(image: 'truck_blue.svg', width: 20, height: 20),

                    SizedBox(width: 8),

                    Text(
                      'طريقة الاستلام',
                      style: TextStyle(
                        color: Color(0xff314158),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'IBMPlexSansArabic',
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 16),

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
                        width: 177,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: const Color(0xffFFFFFF),

                          border: Border.all(
                            color: selectedMethod == 0
                                ? const Color(0xff314158)
                                : Colors.transparent,
                            width: 1.5,
                          ),

                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x10000000),
                              blurRadius: 2,
                              offset: Offset(0, 2),
                              spreadRadius: 0,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Align(
                              alignment: AlignmentGeometry.topLeft,
                              child: Container(
                                width: 37,
                                height: 19,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(99),
                                  color: Color(0xffF8F4EB),
                                ),
                                child: Center(
                                  child: Text(
                                    'مجاناً',
                                    style: TextStyle(
                                      color: Color(0xffC9A961),
                                      fontSize: 10,
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
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color(0xffF1F5F9),
                                ),
                                child: Center(
                                  child: AppImage(
                                    image: 'shop.svg',
                                    width: 24,
                                    height: 24,
                                    color: Color(0xff314158),
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(height: 12),

                            Align(
                              alignment: AlignmentGeometry.centerRight,
                              child: Text(
                                'استلام من الفرع',

                                style: TextStyle(
                                  color: Color(0xff0A0A0A),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'IBMPlexSansArabic',
                                ),
                              ),
                            ),

                            SizedBox(height: 3),

                            Align(
                              alignment: AlignmentGeometry.centerRight,
                              child: Text(
                                'جاهز خلال ٣ أيام',

                                style: TextStyle(
                                  color: Color(0xff62748E),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'IBMPlexSansArabic',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(width: 16),

                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedMethod = 1;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(8),
                        width: 177,
                        height: 150,
                        decoration: BoxDecoration(
                          color: const Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(16),

                          border: Border.all(
                            color: selectedMethod == 1
                                ? const Color(0xff314158)
                                : Colors.transparent,
                            width: 1.5,
                          ),

                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x10000000),
                              blurRadius: 2,
                              offset: Offset(0, 2),
                              spreadRadius: 0,
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 16),

                            Align(
                              alignment: AlignmentGeometry.topRight,
                              child: Container(
                                padding: EdgeInsets.all(8),
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),

                                  gradient: const LinearGradient(
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
                                  width: 30,
                                  height: 30,
                                  color: Color(0xffFFFFFF),
                                ),
                              ),
                            ),

                            SizedBox(height: 12),

                            Align(
                              alignment: AlignmentGeometry.centerRight,
                              child: Text(
                                'توصيل للمنزل',

                                style: TextStyle(
                                  color: Color(0xff0A0A0A),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'IBMPlexSansArabic',
                                ),
                              ),
                            ),

                            SizedBox(height: 3),

                            Align(
                              alignment: AlignmentGeometry.centerRight,
                              child: Text(
                                '٣–٧ أيام',

                                style: TextStyle(
                                  color: Color(0xff62748E),
                                  fontSize: 14,
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

                SizedBox(height: 16),

                Row(
                  children: [
                    AppImage(
                      image: 'location.svg',
                      width: 20,
                      height: 20,
                      color: Color(0xff000000),
                    ),

                    SizedBox(width: 8),

                    Text(
                      'عنوان التوصيل',
                      style: TextStyle(
                        color: Color(0xff314158),
                        fontFamily: 'IBMPlexSansArabic',

                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    Spacer(),

                    TextButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          builder: (context) {
                            return AdressBottomSheet();
                          },
                        );
                      },
                      child: Text(
                        'تغيير',
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontFamily: 'IBMPlexSansArabic',

                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 16),

                Container(
                  width: 370,
                  height: 100,
                  padding: EdgeInsets.all(10),

                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Color(0xffEAEAEA)),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xff0000000).withValues(alpha: 0.06),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Center(
                          child: AppImage(
                            image: 'home_black.svg',
                            width: 20,
                            height: 20,
                          ),
                        ),
                      ),

                      SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'المنزل',
                                  style: TextStyle(
                                    color: Color(0xff0A0A0A),
                                    fontSize: 18,
                                    fontFamily: 'IBMPlexSansArabic',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),

                                SizedBox(width: 12),

                                Container(
                                  width: 51,
                                  height: 22,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(999),
                                    color: Color(
                                      0xff6A7282,
                                    ).withValues(alpha: 0.20),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'افتراضي',
                                      style: TextStyle(
                                        color: Color(0xff000000),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        fontFamily: 'IBMPlexSansArabic',
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 8),

                            Text(
                              'أحمد صبري • +15 55 123 4567',
                              style: TextStyle(
                                color: Color(0xff45556C),
                                fontSize: 14,
                                fontFamily: 'IBMPlexSansArabic',
                                fontWeight: FontWeight.w400,
                              ),
                            ),

                            SizedBox(height: 4),

                            Text(
                              'المنصورة، حي الزعفران',
                              style: TextStyle(
                                color: Color(0xff62748E),
                                fontSize: 14,
                                fontFamily: 'IBMPlexSansArabic',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 16),

                Container(
                  padding: EdgeInsets.all(4),
                  width: 370,
                  height: 63,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),

                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Row(
                    children: [
                      SizedBox(height: 20),

                      AppImage(
                        image: 'box.svg',
                        width: 20,
                        height: 20,
                        color: Color(0xff292D32),
                      ),

                      SizedBox(width: 4),

                      Text(
                        'ملخص الطلب',
                        style: TextStyle(
                          color: Color(0xff0A0A0A),
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'IBMPlexSansArabic',
                        ),
                      ),

                      Spacer(),
                      AppImage(image: 'arrow-down.svg', width: 16, height: 16),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        bottomNavigationBar: BottomSheetWidget(
          title: 'تأكيد الطلب',
          icon: 'circle_correct.svg',
          onPressed: () {
            goTo(page: OrderSuccessfullyConfirmedPage());
          },
        ),
      ),
    );
  }
}
