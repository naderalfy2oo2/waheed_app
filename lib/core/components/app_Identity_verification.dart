import 'package:flutter/material.dart';
import 'package:waheed_app/core/components/app_button.dart';

import 'app_image.dart';

class AppIdentityVerification extends StatefulWidget {
  const AppIdentityVerification({super.key});

  @override
  State<AppIdentityVerification> createState() =>
      _AppIdentityVerificationState();
}

class _AppIdentityVerificationState extends State<AppIdentityVerification> {
  bool isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 50,
            height: 5,
            decoration: BoxDecoration(
              color: Color(0xffF3F3F4),
              borderRadius: BorderRadius.circular(20),
            ),
          ),

          SizedBox(height: 20),

          CircleAvatar(
            radius: 35,
            backgroundColor: Color(0xffF3F3F4),
            child: AppImage(image: 'lock_container.svg', width: 29, height: 33),
          ),

          SizedBox(height: 20),

          Text(
            "تأكيد الهوية",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              fontFamily: 'IBMPlexSansArabic',
              color: Color(0xff000000),
            ),
          ),

          SizedBox(height: 4),

          Text(
            "لحماية حسابك، يرجى تأكيد هويتك قبل\n المتابعة.",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff444748),
              fontSize: 16,
              fontWeight: FontWeight.w400,
              fontFamily: 'IBMPlexSansArabic',
            ),
          ),

          SizedBox(height: 16),

          Align(
            alignment: AlignmentGeometry.topRight,
            child: Text(
              "كلمة المرور",

              style: TextStyle(
                color: Color(0xff000000),
                fontSize: 16,
                fontWeight: FontWeight.w700,
                fontFamily: 'IBMPlexSansArabic',
              ),
            ),
          ),

          SizedBox(height: 8),
          TextFormField(
            obscureText: !isPasswordVisible,
            decoration: InputDecoration(
              fillColor: Color(0xffFFFFFF),
              labelText: 'ادخل كلمة المرور',
              labelStyle: TextStyle(
                color: Color(0xff939393),
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: 'IBMPlexSansArabic',
              ),

              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isPasswordVisible = !isPasswordVisible;
                  });
                },
                icon: AppImage(
                  image: isPasswordVisible
                      ? 'visibility_icon_on.svg'
                      : 'visibility_icon_off.svg',
                  width: 20,
                  height: 20,
                ),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffEAEAEA)),

                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),

          SizedBox(height: 12),

          Align(
            alignment: AlignmentGeometry.centerLeft,
            child: TextButton(
              onPressed: () {},
              child: Text(
                'هل نسيت كلمة المرور ؟',
                style: TextStyle(
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  fontFamily: 'IBMPlexSansArabic',
                ),
              ),
            ),
          ),

          SizedBox(height: 24),

          AppButton(
            title: 'تحقق',
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return Dialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: SizedBox(
                      width: 354,
                      height: 392,
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(24),

                          boxShadow: [
                            BoxShadow(
                              color: const Color(
                                0xff0000000,
                              ).withValues(alpha: 6),
                              offset: const Offset(0, 8),
                              blurRadius: 32,
                              spreadRadius: 0,
                            ),
                          ],
                        ),

                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(height: 32),

                            SizedBox(
                              width: 128,
                              height: 128,
                              child: CircleAvatar(
                                backgroundColor: Color(0xffFFFFFF),
                                child: AppImage(
                                  image: 'correct.svg',
                                  width: 40,
                                  height: 29,
                                ),
                              ),
                            ),

                            SizedBox(height: 16),

                            Text(
                              'تم حذف الحساب بنجاح',
                              style: TextStyle(
                                fontSize: 24,
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w600,
                                fontFamily: 'IBMPlexSansArabic',
                              ),
                            ),

                            SizedBox(height: 12),

                            Text(
                              'تم حذف حسابك وبياناتك بنجاح. نأمل أن نراك مرة\n                              أخرى قريبًا.',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff444748),
                                fontWeight: FontWeight.w400,
                                fontFamily: 'IBMPlexSansArabic',
                              ),
                            ),

                            SizedBox(height: 32),

                            AppButton(
                              title: 'العودة للصفحة الرئيسية',
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
