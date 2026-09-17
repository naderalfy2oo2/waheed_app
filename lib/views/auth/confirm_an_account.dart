// import 'package:flutter/material.dart';
// import 'package:pinput/pinput.dart';
// import 'package:waheed_app/core/components/app_button.dart';
// import 'package:waheed_app/core/components/app_image.dart';

// import '../core/components/app_timer_periodic.dart';
// import 'complete_account.dart';
// import 'create_an_account.dart';

// class ConfirmAnAccount extends StatefulWidget {
//   const ConfirmAnAccount({super.key});

//   @override
//   State<ConfirmAnAccount> createState() => _ConfirmAnAccountState();
// }

// class _ConfirmAnAccountState extends State<ConfirmAnAccount> {
//   bool isTimerFinished = false;
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Color(0xffFFFFFF),
//         appBar: AppBar(
//           backgroundColor: Color(0xffFFFFFF),
//           leading: GestureDetector(
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => CreateAnAccount()),
//               );
//             },
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Container(
//                 padding: EdgeInsets.all(12),

//                 width: 48,
//                 height: 48,
//                 decoration: BoxDecoration(
//                   color: Color(0xffFFFFFF),
//                   borderRadius: BorderRadius.circular(99),
//                   border: Border.all(color: Color(0xffECECEC)),
//                 ),

//                 child: Center(
//                   child: AppImage(
//                     image: 'arrow-left.svg',
//                     width: 24,
//                     height: 24,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),

//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.start,

//           children: [
//             SizedBox(height: 32),
//             Center(
//               child: Text(
//                 'تأكيد البريد الإلكتروني',
//                 style: TextStyle(
//                   color: Color(0xff000000),

//                   fontSize: 24,
//                   fontWeight: FontWeight.w600,
//                   fontFamily: 'IBMPlexSansArabic',
//                 ),
//               ),
//             ),

//             SizedBox(height: 7),

//             Text.rich(
//               TextSpan(
//                 children: [
//                   TextSpan(
//                     text: 'ادخل رمز التحقق المرسل إلي\n',

//                     style: TextStyle(
//                       color: Color(0xff000000),
//                       fontSize: 14,

//                       fontWeight: FontWeight.w500,
//                       fontFamily: 'IBMPlexSansArabic',
//                     ),
//                   ),

//                   TextSpan(
//                     text: 'ahmed@gmail.com',

//                     style: TextStyle(
//                       color: Color(0xff000000),
//                       fontSize: 14,

//                       fontWeight: FontWeight.w400,
//                       fontFamily: 'IBMPlexSansArabic',
//                     ),
//                   ),
//                 ],
//               ),
//               textAlign: TextAlign.center,
//             ),

//             SizedBox(height: 32),

//             Directionality(
//               textDirection: TextDirection.ltr,
//               child: Pinput(
//                 length: 6,

//                 defaultPinTheme: PinTheme(
//                   width: 44,
//                   height: 48,
//                   textStyle: const TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.w600,
//                   ),
//                   decoration: BoxDecoration(
//                     color: Color(0xffFFFFFF),
//                     border: Border.all(color: const Color(0xff000000)),
//                     borderRadius: BorderRadius.circular(10),
//                     boxShadow: isTimerFinished
//                         ? []
//                         : [
//                             BoxShadow(
//                               color: const Color(0xff314158).withOpacity(0.40),
//                               blurRadius: 0,
//                               offset: const Offset(0, 0),
//                               spreadRadius: 2,
//                             ),
//                           ],
//                   ),
//                 ),

//                 focusedPinTheme: PinTheme(
//                   width: 50,
//                   height: 55,
//                   textStyle: const TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.w600,
//                   ),
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     border: Border.all(
//                       color: const Color(0xff1E3A8A),
//                       width: 2,
//                     ),
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),

//                 onCompleted: (pin) {
//                   debugPrint('OTP = $pin');
//                 },
//               ),
//             ),

//             SizedBox(height: 56),
//             AppTimerPeriodic(
//               onTimerFinished: () {
//                 setState(() {
//                   isTimerFinished = true;
//                 });
//               },

//               onResend: () {
//                 setState(() {
//                   isTimerFinished = false;
//                 });

//                 debugPrint('Resend OTP');
//               },
//             ),

//             SizedBox(height: 57),

//             SizedBox(
//               width: 370,
//               height: 56,
//               child: GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => CompleteAccount()),
//                   );
//                 },
//                 child: Container(
//                   padding: EdgeInsets.all(16),
//                   width: 370,
//                   height: 56,
//                   decoration: BoxDecoration(
//                     color: Color(0xff000000).withOpacity(0.40),

//                     boxShadow: const [
//                       BoxShadow(
//                         color: Color(0x1A000000),
//                         offset: Offset(0, 4),
//                         blurRadius: 6,
//                         spreadRadius: -4,
//                       ),

//                       BoxShadow(
//                         color: Color(0x1A000000),
//                         offset: Offset(0, 10),
//                         blurRadius: 15,
//                         spreadRadius: -3,
//                       ),
//                     ],
//                     borderRadius: BorderRadius.circular(16),
//                   ),
//                   child: Center(
//                     child: Text(
//                       'تحقق',
//                       style: TextStyle(
//                         color: Color(0xffFFFFFF),
//                         fontSize: 16,
//                         fontWeight: FontWeight.w600,
//                         fontFamily: 'IBMPlexSansArabic',
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
