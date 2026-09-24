import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed_app/views/auth/register.dart';
import 'package:waheed_app/core/components/app_button.dart';
import 'package:waheed_app/services/input_validator.dart';
import '../../core/components/app_image.dart';
import '../../core/components/app_input.dart';
import '../../core/components/change_indicator.dart';
import '../../services/dio_helper.dart';
import '../../services/helper_methods.dart';

class Step3ForgetPasswordView extends StatefulWidget {
  final String email;
  final String otp;

  const Step3ForgetPasswordView({
    super.key,
    required this.email,
    required this.otp,
  });

  @override
  State<Step3ForgetPasswordView> createState() =>
      _Step3ForgetPasswordViewState();
}

class _Step3ForgetPasswordViewState extends State<Step3ForgetPasswordView> {
  bool isTimerFinished = false;
  bool isPasswordVisible = false;
  bool isobscureTextVisible = false;

  final formKey = GlobalKey<FormState>();
  bool isLoginClicked = false;

  final passwordcontroller = TextEditingController();
  final confirmpasswordcontroller = TextEditingController();

  Future<bool> SendData() async {
    final password = passwordcontroller.text.trim();
    final confirmpassword = confirmpasswordcontroller.text.trim();

    print(password);
    print(confirmpassword);

    final resp = await DioHelper.SendData(
      path: 'api/Account/reset-password',
      data: {
        "email": widget.email,
        "otpCode": widget.otp,
        "newPassword": password,
        "confirmNewPassword": confirmpassword,
      },
    );

    if (resp.isSucess) {
      print(resp.data);
      DioHelper.token = resp.data!["token"];
      print("${DioHelper.token}");

      showMsg('The password has been successfully changed.');
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
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
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
                      'خطوة 3/ 3',
                      style: TextStyle(
                        color: Color(0xff314158),

                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'IBMPlexSansArabic',
                      ),
                    ),
                  ),

                  SizedBox(height: 12.h),

                  ChangeIndicator(currentIndex: 3),

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
                            'كلمة المرور',
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
                          validator: InputValidator.passwordValidator,
                          controller: passwordcontroller,
                          obscureText: !isPasswordVisible,
                          fillColor: Color(0xffFFFFFF),
                          labelText: '••••••••',

                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                isPasswordVisible = !isPasswordVisible;
                              });
                            },
                            child: AppImage(
                              image: isPasswordVisible
                                  ? 'visibility_icon_on.svg'
                                  : 'visibility_icon_off.svg',
                              width: 20.w,
                              height: 20.h,
                            ),
                          ),
                        ),

                        SizedBox(height: 16.h),

                        Align(
                          alignment: AlignmentGeometry.topRight,
                          child: Text(
                            'تأكيد كلمة المرور',
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
                          validator: InputValidator.confirmpasswordValidator,
                          controller: confirmpasswordcontroller,
                          obscureText: !isobscureTextVisible,
                          fillColor: Color(0xffFFFFFF),
                          labelText: '••••••••',

                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                isobscureTextVisible = !isobscureTextVisible;
                              });
                            },
                            child: AppImage(
                              image: isobscureTextVisible
                                  ? 'visibility_icon_on.svg'
                                  : 'visibility_icon_off.svg',
                              width: 20.w,
                              height: 20.h,
                            ),
                          ),
                        ),

                        SizedBox(height: 40.h),

                        SizedBox(
                          width: 322.w,
                          height: 56.h,
                          child: AppButton(
                            title: 'تأكيد كلمة المرور الجديدة',
                            onPressed: () async {
                              isLoginClicked = true;
                              if (!formKey.currentState!.validate()) {
                                return;
                              }
                              final success = await SendData();
                              if (!mounted) return;

                              if (success) {
                                goTo(page: RegisterView());
                              }
                            },
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
