import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import '../../core/components/app_image.dart';
import '../../core/components/change_indicator.dart';
import '../../services/dio_helper.dart';
import '../../services/helper_methods.dart';
import 'step1_forget_password.dart';
import 'step3_forget_password.dart';

class Step2ForgetPassword extends StatefulWidget {
  final String email;

  const Step2ForgetPassword({super.key, required this.email});

  @override
  State<Step2ForgetPassword> createState() => _Step2ForgetPasswordState();
}

class _Step2ForgetPasswordState extends State<Step2ForgetPassword> {
  bool isTimerFinished = false;
  final otpcontroller = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isLoginClicked = false;

  Future<bool> SendData() async {
    final otp = otpcontroller.text.trim();

    print(otp);

    final resp = await DioHelper.SendData(
      path: 'api/Account/verify-otp',
      data: {"email": widget.email, "otpCode": otp},
    );

    if (resp.isSucess) {
      print(resp.data);
      DioHelper.token = resp.data!["token"];
      print("${DioHelper.token}");

      showMsg('The code was successfully verified.');
      return true;
    } else {
      showMsg(resp.msg ?? "", isError: true);
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      onChanged: () {
        if (isLoginClicked) {
          formKey.currentState!.validate();
        }
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xffFFFFFF),

          appBar: AppBar(
            backgroundColor: Color(0xffFFFFFF),
            leading: GestureDetector(
              onTap: () {
                goTo(page: Step1ForgetPassword());
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(12),

                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(99),
                    border: Border.all(color: Color(0xffECECEC)),
                  ),

                  child: Center(
                    child: AppImage(
                      image: 'arrow-left.svg',
                      width: 24,
                      height: 24,
                    ),
                  ),
                ),
              ),
            ),
            title: Text(
              'نسيت كلمة المرور',
              style: TextStyle(
                color: Color(0xff000000),

                fontSize: 18,
                fontWeight: FontWeight.w500,
                fontFamily: 'IBMPlexSansArabic',
              ),
            ),
            centerTitle: true,
          ),

          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 32),

                  Center(
                    child: Text(
                      'خطوة 2/ 3',
                      style: TextStyle(
                        color: Color(0xff314158),

                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'IBMPlexSansArabic',
                      ),
                    ),
                  ),

                  SizedBox(height: 12),

                  ChangeIndicator(currentIndex: 2),

                  SizedBox(height: 24),

                  Container(
                    padding: EdgeInsets.all(24),
                    width: 370,
                    height: 335,
                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(color: Color(0xffEAEAEA)),

                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff0000000).withOpacity(0.06),
                          offset: Offset(0, 2),
                          blurRadius: 2,
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 24),
                        Align(
                          alignment: AlignmentGeometry.topRight,
                          child: Text(
                            'رمز التحقق',
                            style: TextStyle(
                              color: Color(0xff000000),

                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'IBMPlexSansArabic',
                            ),
                          ),
                        ),

                        SizedBox(height: 8),

                        Align(
                          alignment: AlignmentGeometry.topRight,

                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'تم إرسال الرمز إلي',

                                  style: TextStyle(
                                    color: Color(0xff000000),

                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'IBMPlexSansArabic',
                                  ),
                                ),

                                TextSpan(
                                  text: widget.email,
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

                        SizedBox(height: 24),

                        Directionality(
                          textDirection: TextDirection.ltr,
                          child: Pinput(
                            length: 6,
                            controller: otpcontroller,

                            defaultPinTheme: PinTheme(
                              width: 44,
                              height: 48,
                              textStyle: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xffFFFFFF),
                                border: Border.all(
                                  color: const Color(0xff000000),
                                ),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: isTimerFinished
                                    ? []
                                    : [
                                        BoxShadow(
                                          color: const Color(
                                            0xff314158,
                                          ).withOpacity(0.40),
                                          blurRadius: 0,
                                          offset: const Offset(0, 0),
                                          spreadRadius: 2,
                                        ),
                                      ],
                              ),
                            ),

                            focusedPinTheme: PinTheme(
                              width: 50,
                              height: 55,
                              textStyle: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: const Color(0xff1E3A8A),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),

                            onCompleted: (pin) {
                              debugPrint('OTP = $pin');
                            },
                          ),
                        ),

                        SizedBox(height: 40),

                        SizedBox(
                          width: 370,
                          height: 56,
                          child: GestureDetector(
                            onTap: () async {
                              if (otpcontroller.text.length != 6) {
                                showMsg(
                                  'من فضلك أدخل رمز التحقق كاملاً',
                                  isError: true,
                                );
                                return;
                              }
                              final success = await SendData();
                              if (!mounted) return;

                              if (success) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Step3ForgetPassword(
                                      email: widget.email,
                                      otp: otpcontroller.text.trim(),
                                    ),
                                  ),
                                );
                              }
                            },
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
                                  'تحقق ومتابعه',
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
