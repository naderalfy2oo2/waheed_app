// import 'package:flutter/material.dart';
// import 'package:waheed_app/core/components/app_image.dart';

// import 'add_ card_ bottom_ sheet.dart';

// class CustomPaymentChoice extends StatefulWidget {
//   const CustomPaymentChoice({super.key});

//   @override
//   State<CustomPaymentChoice> createState() => _CustomPaymentChoiceState();
// }

// class _CustomPaymentChoiceState extends State<CustomPaymentChoice> {
//   int selectedPayment = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         _paymentOption(
//           index: 0,
//           title: 'الدفع عند الاستلام',
//           subtitle: 'ادفع نقداً عند وصول الطلب',
//           icon: 'wallet.svg',
//         ),

//         const SizedBox(height: 10),

//         _paymentOption(
//           index: 1,
//           title: 'بطاقة ائتمانية / ميزة',
//           subtitle: 'فيزا، ماستركارد، ميزة',
//           icon: 'visa.svg',
//           onTap: () {
//             showModalBottomSheet(
//               context: context,
//               isScrollControlled: true,
//               backgroundColor: Colors.transparent,
//               builder: (context) {
//                 return const AddCardBottomSheet();
//               },
//             );
//           },
//         ),

//         _paymentOption(
//           index: 2,
//           title: 'ماستر كارد',
//           subtitle: ' ينتهي بـ 4242',
//           icon: 'master_card.svg',
//         ),

//         _paymentOption(
//           index: 3,
//           title: 'فيزا',
//           subtitle: ' ينتهي بـ 6589',
//           icon: 'visa_electron.svg',
//         ),
//       ],
//     );
//   }

//   Widget _paymentOption({
//     required int index,
//     required String title,
//     required String subtitle,
//     required String icon,
//     VoidCallback? onTap,
//   }) {
//     final bool isSelected = selectedPayment == index;

//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           selectedPayment = index;
//         });
//         onTap?.call();
//       },
//       child: AnimatedContainer(
//         duration: const Duration(milliseconds: 200),

//         width: double.infinity,
//         height: 77,

//         padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),

//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(24),

//           border: Border.all(
//             color: isSelected ? Colors.black : const Color(0xffE5E7EB),
//             width: isSelected ? 1.5 : 1,
//           ),
//         ),

//         child: Row(
//           children: [
//             Container(
//               width: 40,
//               height: 40,

//               decoration: BoxDecoration(
//                 color: isSelected ? Color(0xff252525) : Color(0xffF2F4F7),
//                 borderRadius: BorderRadius.circular(8),
//               ),

//               child: AppImage(image: icon ?? "", width: 20, height: 20),
//             ),

//             SizedBox(width: 12),

//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     title,
//                     style: TextStyle(
//                       color: Color(0xff0A0A0A),
//                       fontSize: 16,
//                       fontWeight: FontWeight.w600,
//                       fontFamily: 'IBMPlexSansArabic',
//                     ),
//                   ),

//                   SizedBox(height: 2),

//                   Text(
//                     subtitle,
//                     style: TextStyle(
//                       color: Color(0xff62748E),
//                       fontSize: 12,
//                       fontWeight: FontWeight.w500,
//                       fontFamily: 'IBMPlexSansArabic',
//                     ),
//                   ),
//                 ],
//               ),
//             ),

//             Checkbox(
//               value: isSelected,

//               onChanged: (bool? value) {
//                 setState(() {
//                   selectedPayment = index;
//                 });
//                 onTap?.call();
//               },

//               shape: CircleBorder(),

//               activeColor: Colors.black,
//               checkColor: Colors.white,

//               side: BorderSide(color: Color(0xffCBD5E1), width: 1.5),

//               visualDensity: VisualDensity.compact,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

import 'app_image.dart';

class PaymentOption extends StatelessWidget {
  final int index;
  final int selectedPayment;
  final String title;
  final String subtitle;
  final String icon;
  final VoidCallback? onTap;
  final Function(int) onSelected;
  const PaymentOption({
    super.key,
    required this.index,
    required this.selectedPayment,
    required this.title,
    required this.subtitle,
    required this.icon,
    this.onTap,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    final bool isSelected = selectedPayment == index;

    return GestureDetector(
      onTap: () {
        onSelected(index);
        onTap?.call();
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: double.infinity,
        height: 77,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
            color: isSelected ? Colors.black : const Color(0xffE5E7EB),
            width: isSelected ? 1.5 : 1,
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: isSelected
                    ? const Color(0xff252525)
                    : const Color(0xffF2F4F7),
                borderRadius: BorderRadius.circular(8),
              ),
              child: AppImage(image: icon, width: 20, height: 20),
            ),

            const SizedBox(width: 12),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Color(0xff0A0A0A),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'IBMPlexSansArabic',
                    ),
                  ),

                  const SizedBox(height: 2),

                  Text(
                    subtitle,
                    style: const TextStyle(
                      color: Color(0xff62748E),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'IBMPlexSansArabic',
                    ),
                  ),
                ],
              ),
            ),

            Checkbox(
              value: isSelected,
              onChanged: (value) {
                onSelected(index);
                onTap?.call();
              },
              shape: const CircleBorder(),
              activeColor: Colors.black,
              checkColor: Colors.white,
              side: const BorderSide(color: Color(0xffCBD5E1), width: 1.5),
              visualDensity: VisualDensity.compact,
            ),
          ],
        ),
      ),
    );
  }
}
