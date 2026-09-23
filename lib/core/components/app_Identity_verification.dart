import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24).r),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 50.w,
            height: 5.h,
            decoration: BoxDecoration(
              color: Color(0xffF3F3F4),
              borderRadius: BorderRadius.circular(20).r,
            ),
          ),

          SizedBox(height: 20.h),

          CircleAvatar(
            radius: 35.r,
            backgroundColor: Color(0xffF3F3F4),
            child: AppImage(
              image: 'lock_container.svg',
              width: 29.w,
              height: 33.h,
            ),
          ),

          SizedBox(height: 20.h),

          Text(
            "تأكيد الهوية",
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.w600,
              fontFamily: 'IBMPlexSansArabic',
              color: Color(0xff000000),
            ),
          ),

          SizedBox(height: 4.h),

          Text(
            "لحماية حسابك، يرجى تأكيد هويتك قبل\n المتابعة.",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff444748),
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              fontFamily: 'IBMPlexSansArabic',
            ),
          ),

          SizedBox(height: 16.h),

          Align(
            alignment: AlignmentGeometry.topRight,
            child: Text(
              "كلمة المرور",

              style: TextStyle(
                color: Color(0xff000000),
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                fontFamily: 'IBMPlexSansArabic',
              ),
            ),
          ),

          SizedBox(height: 8.h),
          TextFormField(
            obscureText: !isPasswordVisible,
            decoration: InputDecoration(
              fillColor: Color(0xffFFFFFF),
              labelText: 'ادخل كلمة المرور',
              labelStyle: TextStyle(
                color: Color(0xff939393),
                fontSize: 14.sp,
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
                  width: 20.w,
                  height: 20.h,
                ),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffEAEAEA)),

                borderRadius: BorderRadius.circular(12).r,
              ),
            ),
          ),

          SizedBox(height: 12.h),

          Align(
            alignment: AlignmentGeometry.centerLeft,
            child: TextButton(
              onPressed: () {},
              child: Text(
                'هل نسيت كلمة المرور ؟',
                style: TextStyle(
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp,
                  fontFamily: 'IBMPlexSansArabic',
                ),
              ),
            ),
          ),

          SizedBox(height: 24.h),

          AppButton(
            title: 'تحقق',
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return Dialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16).r,
                    ),
                    child: SizedBox(
                      width: 354.w,
                      height: 392.h,
                      child: Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(24).r,

                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff0000000).withValues(alpha: 6),
                              offset: Offset(0, 8),
                              blurRadius: 32.r,
                              spreadRadius: 0.r,
                            ),
                          ],
                        ),

                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(height: 32.h),

                            SizedBox(
                              width: 128.w,
                              height: 128.h,
                              child: CircleAvatar(
                                backgroundColor: Color(0xffFFFFFF),
                                child: AppImage(
                                  image: 'correct.svg',
                                  width: 40.w,
                                  height: 29.h,
                                ),
                              ),
                            ),

                            SizedBox(height: 16.h),

                            Text(
                              'تم حذف الحساب بنجاح',
                              style: TextStyle(
                                fontSize: 24.sp,
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w600,
                                fontFamily: 'IBMPlexSansArabic',
                              ),
                            ),

                            SizedBox(height: 12.h),

                            Text(
                              'تم حذف حسابك وبياناتك بنجاح. نأمل أن نراك مرة\n                              أخرى قريبًا.',
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: Color(0xff444748),
                                fontWeight: FontWeight.w400,
                                fontFamily: 'IBMPlexSansArabic',
                              ),
                            ),

                            SizedBox(height: 32.h),

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
