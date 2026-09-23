import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed_app/core/components/app_input.dart';
import 'package:waheed_app/services/input_validator.dart';
import '../../core/components/app_image.dart';
import '../../core/components/change_indicator.dart';
import '../../services/dio_helper.dart';
import '../../services/helper_methods.dart';
import 'confirm_an_account.dart';
import 'step2_forget_password.dart';

class Step1ForgetPassword extends StatefulWidget {
  const Step1ForgetPassword({super.key});

  @override
  State<Step1ForgetPassword> createState() => _Step1ForgetPasswordState();
}

class _Step1ForgetPasswordState extends State<Step1ForgetPassword> {
  final formKey = GlobalKey<FormState>();
  bool isLoginClicked = false;

  final emailcontroller = TextEditingController();

  Future<bool> SendData() async {
    final email = emailcontroller.text.trim();

    print(email);

    final resp = await DioHelper.SendData(
      path: 'api/Account/forgot-password',
      data: {"email": email},
    );

    if (resp.isSucess) {
      print(resp.data);
      DioHelper.token = resp.data!["token"];
      print("${DioHelper.token}");

      showMsg('A verification code has been sent to your email.');
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
            leading: Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(12),

                width: 48.w,
                height: 48.h,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(99).r,
                  border: Border.all(color: Color(0xffECECEC)),
                ),

                child: Center(
                  child: AppImage(
                    image: 'arrow-left.svg',
                    width: 24.w,
                    height: 24.h,
                  ),
                ),
              ),
            ),
            title: Text(
              'نسيت كلمة المرور',
              style: TextStyle(
                color: Color(0xff000000),

                fontSize: 18.sp,
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
                  SizedBox(height: 32.h),

                  Center(
                    child: Text(
                      'خطوة 1/ 3',
                      style: TextStyle(
                        color: Color(0xff314158),

                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'IBMPlexSansArabic',
                      ),
                    ),
                  ),

                  SizedBox(height: 12.h),
                  ChangeIndicator(currentIndex: 1),

                  SizedBox(height: 24.h),

                  Container(
                    padding: EdgeInsets.all(24),
                    width: double.infinity.w,

                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(24).r,
                      border: Border.all(color: Color(0xffEAEAEA)),

                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff0000000).withOpacity(0.06),
                          offset: Offset(0, 2),
                          blurRadius: 2.r,
                          spreadRadius: 0.r,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 24.h),
                        Align(
                          alignment: AlignmentGeometry.topRight,
                          child: Text(
                            'نسيت كلمة المرور؟',
                            style: TextStyle(
                              color: Color(0xff000000),

                              fontSize: 24.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'IBMPlexSansArabic',
                            ),
                          ),
                        ),

                        SizedBox(height: 8.h),

                        Align(
                          alignment: AlignmentGeometry.topRight,
                          child: Text(
                            'أدخل بريدك الإلكتروني لإرسال رمز تحقق اّمن.',
                            style: TextStyle(
                              color: Color(0xff000000),

                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'IBMPlexSansArabic',
                            ),
                          ),
                        ),

                        SizedBox(height: 24.h),

                        Align(
                          alignment: AlignmentGeometry.topRight,
                          child: Text(
                            'البريد الإلكتروني',
                            style: TextStyle(
                              color: Color(0xff000000),

                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'IBMPlexSansArabic',
                            ),
                          ),
                        ),

                        SizedBox(height: 8.h),

                        AppInput(
                          validator: InputValidator.emailValidator,
                          controller: emailcontroller,
                          labelText: 'Name@example.com',
                          preifixIcon: AppImage(
                            image: 'sms.svg',
                            width: 20.w,
                            height: 20.h,
                          ),
                          fillColor: Color(0xffFFFFFF),
                        ),

                        SizedBox(height: 40.h),

                        SizedBox(
                          width: 370.w,
                          height: 56.h,
                          child: GestureDetector(
                            onTap: () async {
                              isLoginClicked = true;
                              if (!formKey.currentState!.validate()) {
                                return;
                              }
                              final success = await SendData();

                              if (success) {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Step2ForgetPassword(
                                      email: emailcontroller.text.trim(),
                                    ),
                                  ),
                                );
                              }
                            },
                            child: Container(
                              padding: EdgeInsets.all(16),
                              width: 370.w,
                              height: 56.h,
                              decoration: BoxDecoration(
                                color: Color(0xff000000).withOpacity(0.40),

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
                                  'إرسال رابط',
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
