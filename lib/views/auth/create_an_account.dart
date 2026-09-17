import 'package:flutter/material.dart';
import 'package:waheed_app/core/components/app_button.dart';
import 'package:waheed_app/core/components/app_image.dart';
import 'package:waheed_app/core/components/app_input.dart';
import 'package:waheed_app/services/input_validator.dart';
import '../../services/dio_helper.dart';
import '../../services/helper_methods.dart';
import 'complete_account.dart';
import 'confirm_an_account.dart';

class CreateAnAccount extends StatefulWidget {
  const CreateAnAccount({super.key});

  @override
  State<CreateAnAccount> createState() => _CreateAnAccountState();
}

class _CreateAnAccountState extends State<CreateAnAccount> {
  bool isPasswordVisible = false;
  bool isobscureTextVisible = false;
  bool isLoginClicked = false;
  final emailcontroller = TextEditingController();
  final phoneNumbercontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final confirmPasswordcontroller = TextEditingController();
  final fullNamecontroller = TextEditingController();
  final formKey = GlobalKey<FormState>();

  Future<bool> SendData() async {
    final email = emailcontroller.text.trim();
    final password = passwordcontroller.text.trim();
    final confirmPassword = confirmPasswordcontroller.text.trim();
    final fullName = fullNamecontroller.text.trim();
    final phoneNumber = phoneNumbercontroller.text.trim();
    print(email);
    print(password);

    print(confirmPassword);
    print(fullName);
    print(phoneNumber);

    final resp = await DioHelper.SendData(
      path: 'api/Account/register',
      data: {
        "email": email,
        "password": password,
        "confirmPassword": confirmPassword,
        "fullName": fullName,
        "phoneNumber": phoneNumber,
      },
    );

    if (resp.isSucess) {
      print(resp.data);
      DioHelper.token = resp.data!["token"];
      print("${DioHelper.token}");

      showMsg('Register Sucess');
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
          extendBodyBehindAppBar: true,
          body: Stack(
            children: [
              Positioned.fill(
                child: AppImage(
                  image: 'start_now.jpg',
                  width: 402,
                  height: 947,
                  fit: BoxFit.cover,
                ),
              ),

              Positioned.fill(
                child: Container(color: Color(0xff000000).withOpacity(0.70)),
              ),

              Align(
                alignment: AlignmentGeometry.bottomCenter,
                child: Container(
                  width: double.infinity,
                  height: 620,
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
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'إنشاء حساب\n',
                                style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 24,

                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'IBMPlexSansArabic',
                                ),
                              ),

                              TextSpan(
                                text: 'لديك حساب بالفعل؟ تسجيل الدخول',
                                style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'IBMPlexSansArabic',
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),

                        SizedBox(height: 16),

                        Align(
                          alignment: AlignmentGeometry.topRight,
                          child: Text(
                            'الاسم بالكامل',
                            style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'IBMPlexSansArabic',
                            ),
                          ),
                        ),

                        SizedBox(height: 8),

                        AppInput(
                          validator: InputValidator.fullNameValidator,
                          controller: fullNamecontroller,
                          labelText: 'اكتب اسمك الكامل',
                          preifixIcon: AppImage(
                            image: 'profile.svg',
                            width: 20,
                            height: 20,
                          ),
                          fillColor: Color(0xffFFFFFF),
                        ),

                        SizedBox(height: 8),

                        Align(
                          alignment: AlignmentGeometry.centerRight,
                          child: Text(
                            'رقم الهاتف',
                            style: TextStyle(
                              color: Color(0xff000000),

                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'IBMPlexSansArabic',
                            ),
                          ),
                        ),

                        SizedBox(height: 8),

                        Directionality(
                          textDirection: TextDirection.ltr,
                          child: AppInput(
                            validator: InputValidator.phoneValidator,
                            controller: phoneNumbercontroller,
                            labelText: '102233558',

                            suffixText: '+20',

                            suffixIcon: AppImage(
                              image: 'call.svg',
                              width: 20,
                              height: 20,
                              color: Color(0xff939393),
                            ),
                            fillColor: Color(0xffFFFFFF),
                          ),
                        ),

                        SizedBox(height: 8),

                        Align(
                          alignment: AlignmentGeometry.centerRight,
                          child: Text(
                            'البريد الإلكتروني',
                            style: TextStyle(
                              color: Color(0xff000000),

                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'IBMPlexSansArabic',
                            ),
                          ),
                        ),

                        SizedBox(height: 8),

                        AppInput(
                          validator: InputValidator.emailValidator,
                          controller: emailcontroller,
                          labelText: 'Name@example.com',
                          preifixIcon: AppImage(
                            image: 'sms.svg',
                            width: 20,
                            height: 20,
                            color: Color(0xff939393),
                          ),
                          fillColor: Color(0xffFFFFFF),
                        ),
                        SizedBox(height: 8),

                        Align(
                          alignment: AlignmentGeometry.centerRight,
                          child: Text(
                            'كلمة المرور',
                            style: TextStyle(
                              color: Color(0xff000000),

                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'IBMPlexSansArabic',
                            ),
                          ),
                        ),
                        SizedBox(height: 8),

                        AppInput(
                          validator: InputValidator.passwordValidator,
                          controller: passwordcontroller,
                          obscureText: !isPasswordVisible,
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
                              width: 20,
                              height: 20,
                            ),
                          ),
                          fillColor: Color(0xffFFFFFF),
                        ),

                        SizedBox(height: 8),

                        Align(
                          alignment: AlignmentGeometry.centerRight,
                          child: Text(
                            'تأكيد كلمة المرور',
                            style: TextStyle(
                              color: Color(0xff000000),

                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'IBMPlexSansArabic',
                            ),
                          ),
                        ),
                        SizedBox(height: 8),

                        AppInput(
                          validator: InputValidator.confirmpasswordValidator,
                          controller: confirmPasswordcontroller,
                          obscureText: !isobscureTextVisible,
                          labelText: '@1234567@',
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
                              width: 20,
                              height: 20,
                            ),
                          ),
                          fillColor: Color(0xffFFFFFF),
                        ),

                        SizedBox(height: 24),

                        SizedBox(
                          width: 370,
                          height: 56,
                          child: AppButton(
                            isLoading: false,

                            onPressed: () async {
                              setState(() {
                                isLoginClicked = true;
                              });
                              if (!formKey.currentState!.validate()) {
                                return;
                              }
                              final success = await SendData();
                              if (!mounted) return;

                              if (success) {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CompleteAccount(),
                                  ),
                                );
                              }
                            },
                            title: 'إنشاء حساب',
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

                        SizedBox(height: 6),
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
