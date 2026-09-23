import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../core/components/app_bar_widget.dart';
import '../../../core/components/app_button.dart';
import '../../../core/components/app_image.dart';
import 'confirm_choose_date.dart';

class ChooseDatePage extends StatefulWidget {
  const ChooseDatePage({super.key});

  @override
  State<ChooseDatePage> createState() => _ChooseDatePageState();
}

class _ChooseDatePageState extends State<ChooseDatePage> {
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
                SizedBox(height: 21),

                Row(
                  children: [
                    AppImage(image: 'date.svg', width: 16, height: 16),

                    SizedBox(width: 8),

                    Text(
                      'اختر التاريخ',
                      style: TextStyle(
                        color: Color(0xff314158),
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'IBMPlexSansArabic',
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 12),

                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(16),
                  width: 420,
                  height: 170,

                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(16),

                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x1A000000),
                        offset: Offset(0, 1),
                        blurRadius: 2,
                        spreadRadius: -1,
                      ),

                      BoxShadow(
                        color: Color(0x1A000000),
                        offset: Offset(0, 1),
                        blurRadius: 3,
                        spreadRadius: 0,
                      ),
                    ],
                  ),

                  child: Column(
                    children: [
                      SizedBox(height: 16),

                      Align(
                        alignment: AlignmentGeometry.topRight,
                        child: Text(
                          'مايو ٢٠٢٦',
                          style: TextStyle(
                            color: Color(0xff62748E),

                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'IBMPlexSansArabic',
                          ),
                        ),
                      ),

                      SizedBox(height: 12),
                      SizedBox(
                        height: 90,
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
                              textColor = const Color(0xffFFFFFF);
                            } else if (isNeighbor) {
                              textColor = const Color(0xff0F172A);
                            } else {
                              textColor = const Color(0xffCBD5E1);
                            }

                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedIndex = index;
                                });
                              },
                              child: Container(
                                width: 65,
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 4,
                                ),
                                decoration: BoxDecoration(
                                  color: isSelected
                                      ? const Color(0xFF314158)
                                      : const Color(0xffF8FAFC),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      DateFormat.E('ar').format(date),
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: textColor,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      date.day.toString(),
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: textColor,
                                      ),
                                    ),
                                    const SizedBox(height: 2),
                                    Text(
                                      DateFormat.MMM('ar').format(date),
                                      style: TextStyle(
                                        fontSize: 11,
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

                SizedBox(height: 16),

                Row(
                  children: [
                    AppImage(image: 'time.svg', width: 16, height: 16),

                    SizedBox(width: 8),

                    Text(
                      'اختر الوقت',
                      style: TextStyle(
                        color: Color(0xff314158),
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'IBMPlexSansArabic',
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 12),

                Container(
                  padding: EdgeInsets.all(24),
                  width: double.infinity,
                  height: 235,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(16),

                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x1A000000),
                        offset: Offset(0, 1),
                        blurRadius: 2,
                        spreadRadius: -1,
                      ),

                      BoxShadow(
                        color: Color(0x1A000000),
                        offset: Offset(0, 1),
                        blurRadius: 3,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 12),

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
                            containerColor = const Color(0xFF314158);
                            borderColor = const Color(0xFF314158);
                            textColor = const Color(0xFFFFFFFF);
                          } else if (!enabled) {
                            containerColor = const Color(0xFFF8FAFC);
                            borderColor = const Color(0xFFE2E8F0);
                            textColor = const Color(0xFFCBD5E1);
                          } else {
                            containerColor = const Color(0xFFFFFFFF);
                            borderColor = const Color(0xFFE2E8F0);
                            textColor = const Color(0xFF0F172A);
                          }

                          return GestureDetector(
                            onTap: enabled
                                ? () => setState(() => SelectedIndex = index)
                                : null,
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: containerColor,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: borderColor,
                                  width: 1,
                                ),
                              ),
                              child: Text(
                                slot['time'] as String,
                                style: TextStyle(
                                  fontSize: 14,
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

                SizedBox(height: 16),

                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    padding: EdgeInsets.all(16),
                    width: 385,
                    height: 74,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Color(0xffFFFFFF),
                      border: Border.all(
                        color: Color(0xff1E3A8A).withOpacity(0.082),
                      ),

                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x1A000000),
                          offset: Offset(0, 1),
                          blurRadius: 2,
                          spreadRadius: -1,
                        ),

                        BoxShadow(
                          color: Color(0x1A000000),
                          offset: Offset(0, 1),
                          blurRadius: 3,
                          spreadRadius: 0,
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

                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color(0xffF1F5F9),
                                ),
                                child: Center(
                                  child: AppImage(
                                    image: 'home_black.svg',
                                    width: 24,
                                    height: 24,
                                    color: Color(0xff314158),
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(width: 12),

                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'الفرع الرئيسي – ميت غمر\n',

                                    style: TextStyle(
                                      color: Color(0xff0A0A0A),

                                      fontSize: 16,
                                      fontFamily: 'IBMPlexSansArabic',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),

                                  TextSpan(
                                    text:
                                        'ميت غمر، شارع المعاهده بجوار كلية التربية النوعية',

                                    style: TextStyle(
                                      color: Color(0xff62748E),

                                      fontSize: 12,
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

                SizedBox(height: 157),
              ],
            ),
          ),
        ),

        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: SelectedIndex != null
                ? () {
                    final selectedDate = dates[selectedIndex];
                    final selectedTime = time[SelectedIndex!]['time'];

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ConfirmChooseDatePage(
                          date: selectedDate,
                          time: selectedTime,
                        ),
                      ),
                    );
                  }
                : null,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(16),
                width: 370,
                height: 56,
                decoration: BoxDecoration(
                  color: Color(0xff000000).withOpacity(0.40),

                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x1A000000),
                      offset: Offset(0, 4),
                      blurRadius: 6,
                      spreadRadius: -4,
                    ),

                    BoxShadow(
                      color: Color(0x1A000000),
                      offset: Offset(0, 10),
                      blurRadius: 15,
                      spreadRadius: -3,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: Text(
                    'اختر وقتاً للمتابعة',
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 16,
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
