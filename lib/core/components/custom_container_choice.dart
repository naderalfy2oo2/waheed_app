import 'package:flutter/material.dart';

class CustomContainerChoice extends StatefulWidget {
  const CustomContainerChoice({super.key});

  @override
  State<CustomContainerChoice> createState() => _CustomContainerChoiceState();
}

class _CustomContainerChoiceState extends State<CustomContainerChoice> {
  int selectedDelivery = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _containerOption(
          index: 0,
          title: 'التوصيل العادي',
          subtitle: '٣–٥ أيام عمل',
          price: '٦٠ ج.م',
        ),

        SizedBox(height: 10),

        _containerOption(
          index: 1,
          title: 'التوصيل السريع',
          subtitle: 'خلال ٢٤ ساعة',
          price: '١٢٠ ج.م',
          isFast: true,
        ),
      ],
    );
  }

  Widget _containerOption({
    required int index,
    required String title,
    required String subtitle,
    required String price,
    bool isFast = false,
  }) {
    final bool isSelected = selectedDelivery == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedDelivery = index;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),

        width: double.infinity,
        height: 77,

        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),

          border: Border.all(
            color: isSelected ? Colors.black : Color(0xffD9D9D9),
            width: isSelected ? 1.5 : 1,
          ),
        ),

        child: Row(
          children: [
            Container(
              width: 20,
              height: 20,

              decoration: BoxDecoration(
                shape: BoxShape.circle,

                border: Border.all(
                  color: isSelected ? Colors.black : Color(0xffD0D5DD),
                  width: 1.5,
                ),
              ),

              child: isSelected
                  ? Center(
                      child: Container(
                        width: 10,
                        height: 10,

                        decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                        ),
                      ),
                    )
                  : null,
            ),

            SizedBox(width: 10),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'IBMPlexSansArabic',
                          color: Color(0xff0A0A0A),
                        ),
                      ),

                      if (isFast) ...[
                        SizedBox(width: 6),

                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 6,
                            vertical: 2,
                          ),

                          decoration: BoxDecoration(
                            color: Color(0xffC9A961),
                            borderRadius: BorderRadius.circular(26843500),
                          ),

                          child: Center(
                            child: Text(
                              'موصى به',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffFFFFFF),
                                fontFamily: 'IBMPlexSansArabic',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),

                  SizedBox(height: 2),

                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff62748E),
                      fontFamily: 'IBMPlexSansArabic',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),

            Text(
              price,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xff000000),
                fontFamily: 'IBMPlexSansArabic',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
