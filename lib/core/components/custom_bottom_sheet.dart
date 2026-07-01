import 'package:flutter/material.dart';
import 'package:waheed_app/core/components/app_button.dart';
import 'package:waheed_app/core/components/app_image.dart';
import 'package:waheed_app/home/customized_size/jacket_size.dart';

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({super.key});

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        top: false,
        child: Container(
          width: double.infinity,

          padding: EdgeInsets.all(16),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 16),

                Row(
                  children: [
                    Container(
                      width: 106,
                      height: 42,
                      decoration: BoxDecoration(
                        color: Color(0xffF8FAFC),

                        borderRadius: BorderRadius.circular(99),
                        border: Border.all(color: Color(0xffEAEAEA)),
                      ),

                      child: Directionality(
                        textDirection: TextDirection.ltr,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    counter++;
                                  });
                                },
                                child: Container(
                                  width: 32,
                                  height: 32,
                                  decoration: const BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.circle,
                                  ),
                                  child: AppImage(
                                    image: 'iconsax-add.svg',
                                    width: 24,
                                    height: 24,
                                  ),
                                ),
                              ),

                              Text(
                                "$counter",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),

                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (counter > 1) {
                                      counter--;
                                    }
                                  });
                                },
                                child: Container(
                                  width: 32,
                                  height: 32,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffFFFFFF),
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: const Color(0xffECECEC),
                                    ),
                                  ),
                                  child: AppImage(
                                    image: 'iconsax-minus.svg',
                                    width: 24,
                                    height: 24,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Spacer(),

                    Column(
                      children: [
                        SizedBox(height: 16),

                        Text(
                          'إجمالي السعر',
                          style: TextStyle(
                            color: Color(0xff62748E),

                            fontFamily: 'IBMPlexSansArabic',
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),

                        SizedBox(height: 12),

                        Row(
                          children: [
                            Text(
                              '2,200 ج',

                              style: TextStyle(
                                color: Color(0xff62748E),

                                fontFamily: 'IBMPlexSansArabic',
                                fontWeight: FontWeight.w400,
                                fontSize: 14,

                                decoration: TextDecoration.lineThrough,
                              ),
                            ),

                            SizedBox(width: 9),

                            Text(
                              '1,800 ج',

                              style: TextStyle(
                                color: Color(0xff000000),

                                fontFamily: 'IBMPlexSansArabic',
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: 16),

                Divider(thickness: 1, color: Color(0xffEAEAEA)),

                AppButton(
                  title: 'المتابعة لتحديد القياسات',
                  icon: 'iconsax-tick-circle.svg',
                  onPressed: () {
                    print("Pressed");
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => JacketSize()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
