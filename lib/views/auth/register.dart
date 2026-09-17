import 'package:flutter/material.dart';
import 'package:waheed_app/core/components/app_button.dart';
import 'package:waheed_app/core/components/app_image.dart';
import 'package:waheed_app/core/components/app_input.dart';
import 'package:waheed_app/services/dio_helper.dart';
import 'package:waheed_app/services/input_validator.dart';
import 'package:waheed_app/views/view.dart';
import '../../services/helper_methods.dart';
import '../pages/home/home.dart';
import 'create_an_account.dart';
import 'step1_forget_password.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  Future<bool> SendData() async {
    final email = emailController.text.trim();
    final password = passwordController.text.trim();
    print(email);
    print(password);

    final resp = await DioHelper.SendData(
      path: 'api/Account/login',
      data: {"email": email, "password": password},
    );

    if (resp.isSucess) {
      print(resp.data);
      DioHelper.token = resp.data!["token"];
      print("${DioHelper.token}");

      showMsg('Login Sucess');
      return true;
    } else {
      showMsg(resp.msg ?? "", isError: true);
      return false;
    }
  }

  bool isPasswordVisible = false;

  bool isLoginClicked = false;
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
          extendBodyBehindAppBar: true,

          body: Stack(
            children: [
              Positioned.fill(
                child: AppImage(
                  image: 'start_now.jpg',
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              Positioned.fill(
                child: Container(color: Color(0xff000000).withOpacity(0.70)),
              ),

              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  height: 512,

                  padding: EdgeInsets.all(16),

                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32),
                    ),
                  ),

                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: 24),

                        Text(
                          'تسجيل الدخول',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xff000000),

                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'IBMPlexSansArabic',
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'ليس لديك حساب ؟',

                              style: TextStyle(
                                color: Color(0xff000000),

                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                fontFamily: 'IBMPlexSansArabic',
                              ),
                            ),

                            TextButton(
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                minimumSize: Size.zero,
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              ),
                              onPressed: () {
                                goTo(page: CreateAnAccount());
                              },
                              child: Text(
                                ' إنشاء حساب جديد',
                                style: TextStyle(
                                  color: Color(0xff314158),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'IBMPlexSansArabic',
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 16),

                        Align(
                          alignment: AlignmentGeometry.topRight,
                          child: Text(
                            'البريد الإلكتروني',
                            style: TextStyle(
                              color: Color(0xff000000),

                              fontSize: 12,

                              fontWeight: FontWeight.w400,
                              fontFamily: 'IBMPlexSansArabic',
                            ),
                          ),
                        ),

                        SizedBox(height: 8),

                        AppInput(
                          validator: InputValidator.emailValidator,
                          controller: emailController,
                          fillColor: Color(0xffFFFFFF),
                          labelText: 'Name@example.com',

                          preifixIcon: AppImage(
                            image: 'sms.svg',
                            width: 20,
                            height: 20,
                          ),
                        ),

                        SizedBox(height: 8),

                        Align(
                          alignment: AlignmentGeometry.topRight,
                          child: Text(
                            'كلمة المرور',
                            style: TextStyle(
                              color: Color(0xff000000),

                              fontSize: 12,

                              fontWeight: FontWeight.w400,
                              fontFamily: 'IBMPlexSansArabic',
                            ),
                          ),
                        ),

                        SizedBox(height: 8),

                        AppInput(
                          validator: InputValidator.passwordValidator,
                          controller: passwordController,
                          obscureText: !isPasswordVisible,
                          fillColor: Color(0xffFFFFFF),
                          labelText: 'كلمة المرور',

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
                              width: 20,
                              height: 20,
                            ),
                          ),
                        ),

                        SizedBox(height: 3),

                        Align(
                          alignment: AlignmentGeometry.centerLeft,
                          child: TextButton(
                            onPressed: () {
                              goTo(page: Step1ForgetPassword());
                            },
                            child: Text(
                              'هل نسيت كلمة المرور ؟',
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'IBMPlexSansArabic',
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: 24),

                        Center(
                          child: AppButton(
                            isLoading: false,

                            onPressed: () async {
                              isLoginClicked = true;
                              if (!formKey.currentState!.validate()) {
                                return;
                              }
                              final success = await SendData();
                              if (await SendData()) {
                                goTo(page: HomeView());
                              }
                            },
                            title: 'تسجيل الدخول',
                          ),
                        ),

                        SizedBox(height: 16),

                        Row(
                          children: [
                            Container(
                              width: 137,
                              height: 1,
                              decoration: BoxDecoration(
                                color: Color(0xffEAEAEA),
                              ),
                            ),

                            SizedBox(width: 12),

                            Text(
                              'أو تـــــــابــع بواسطة',
                              style: TextStyle(
                                color: Color(0xff939393),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'IBMPlexSansArabic',
                              ),
                            ),

                            SizedBox(width: 12),

                            Container(
                              width: 137,
                              height: 1,
                              decoration: BoxDecoration(
                                color: Color(0xffEAEAEA),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 16),

                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                width: 179,
                                height: 48,
                                decoration: BoxDecoration(
                                  color: Color(0xffFFFFFF),
                                  borderRadius: BorderRadius.circular(14),
                                  border: Border.all(color: Color(0xffEAEAEA)),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    AppImage(
                                      image: 'apple.svg',
                                      width: 20,
                                      height: 20,
                                    ),
                                    SizedBox(width: 4),

                                    Text(
                                      'Apple',
                                      style: TextStyle(
                                        color: Color(0xff000000),

                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'IBMPlexSansArabic',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            SizedBox(width: 12),

                            Expanded(
                              child: Container(
                                width: 179,
                                height: 48,
                                decoration: BoxDecoration(
                                  color: Color(0xffFFFFFF),
                                  borderRadius: BorderRadius.circular(14),
                                  border: Border.all(color: Color(0xffEAEAEA)),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    AppImage(
                                      image: 'google.svg',
                                      width: 20,
                                      height: 20,
                                    ),
                                    SizedBox(width: 4),

                                    Text(
                                      'Google',
                                      style: TextStyle(
                                        color: Color(0xff000000),

                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'IBMPlexSansArabic',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 7),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
