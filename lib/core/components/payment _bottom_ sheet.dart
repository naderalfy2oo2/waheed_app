import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:waheed_app/core/components/app_button.dart';
import 'package:waheed_app/services/helper_methods.dart';
import 'add_ card_ bottom_ sheet.dart';
import 'app_image.dart';
import 'custom_payment_choice.dart';

class PaymentBottomSheet extends StatefulWidget {
  const PaymentBottomSheet({super.key});

  @override
  State<PaymentBottomSheet> createState() => _PaymentBottomSheetState();
}

class _PaymentBottomSheetState extends State<PaymentBottomSheet> {
  int selectedPayment = 2;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      width: 402,
      height: 496,
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(32),
          topLeft: Radius.circular(32),
        ),
        border: Border.all(color: Color(0xffEAEAEA)),
      ),
      child: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 38),

              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: AppImage(image: 'close.svg', width: 24, height: 24),
                  ),

                  SizedBox(width: 99),

                  Text(
                    'طريقة الدفع',
                    style: TextStyle(
                      color: Color(0xff000000),

                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'IBMPlexSansArabic',
                    ),
                  ),
                ],
              ),

              SizedBox(height: 26),

              Text(
                'الكروت المحفوظة',
                style: TextStyle(
                  color: Color(0xff000000),

                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'IBMPlexSansArabic',
                ),
              ),
              SizedBox(height: 4),

              Text(
                'اختر طريقة الدفع لهذا الطلب',
                style: TextStyle(
                  color: Color(0xff5E5E5E),

                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'IBMPlexSansArabic',
                ),
              ),

              SizedBox(height: 16),
              PaymentOption(
                index: 2,
                selectedPayment: selectedPayment,
                title: 'ماستر كارد',
                subtitle: 'ينتهي بـ 4242',
                icon: 'master_card.svg',
                onSelected: (index) {
                  setState(() {
                    selectedPayment = index;
                  });
                },
              ),

              const SizedBox(height: 10),

              PaymentOption(
                index: 3,
                selectedPayment: selectedPayment,
                title: 'فيزا',
                subtitle: 'ينتهي بـ 6589',
                icon: 'visa_electron.svg',
                onSelected: (index) {
                  setState(() {
                    selectedPayment = index;
                  });
                },
              ),

              SizedBox(height: 24),

              DottedBorder(
                child: GestureDetector(
                  onTap: () {
                    goTo(page: AddCardBottomSheet());
                  },
                  child: Container(
                    width: 370,
                    height: 48,
                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(12),
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 13),

                        AppImage(
                          image: 'add.svg',
                          width: 14,
                          height: 14,
                          color: Color(0xff314158),
                        ),

                        SizedBox(width: 4),

                        Text(
                          'إضافة عنوان جديد',
                          style: TextStyle(
                            color: Color(0xff314158),

                            fontSize: 14,

                            fontWeight: FontWeight.w400,
                            fontFamily: 'IBMPlexSansArabic',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 45),

              Center(
                child: AppButton(title: 'حفظ', onPressed: () {}),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
