import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed_app/core/components/app_image.dart';
import 'app_Identity_verification.dart';

class DeleteAccountBottomSheet extends StatefulWidget {
  const DeleteAccountBottomSheet({super.key});

  @override
  State<DeleteAccountBottomSheet> createState() =>
      _DeleteAccountBottomSheetState();
}

class _DeleteAccountBottomSheetState extends State<DeleteAccountBottomSheet> {
  bool isChecked = false;
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
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(20).r,
            ),
          ),

          SizedBox(height: 20.h),

          CircleAvatar(
            radius: 35.r,
            backgroundColor: Color(0xffFFECEC),
            child: AppImage(
              image: 'delete_container.svg',
              width: 33.w,
              height: 29.h,
            ),
          ),

          SizedBox(height: 20.h),

          Text(
            "تأكيد حذف الحساب",
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.w600,
              fontFamily: 'IBMPlexSansArabic',
              color: Color(0xff000000),
            ),
          ),

          SizedBox(height: 4.h),

          Text(
            "سيتم حذف حسابك وجميع بياناتك بشكل نهائي ولا\n يمكن استعادتها.",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff444748),
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              fontFamily: 'IBMPlexSansArabic',
            ),
          ),

          SizedBox(height: 16.h),

          Container(
            padding: EdgeInsets.all(16),
            width: 370.w,
            height: 50.h,

            decoration: BoxDecoration(
              color: Color(0xffF3F3F4),
              borderRadius: BorderRadius.circular(12).r,
            ),

            child: Row(
              children: [
                SizedBox(height: 18.h),

                Checkbox(
                  checkColor: Color(0xffFFFFFF),
                  activeColor: Color(0xff292D32),

                  value: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value ?? false;
                    });
                  },
                ),

                SizedBox(width: 2.w),

                Text(
                  "لقد فهمت أن هذا الإجراء نهائي.",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'IBMPlexSansArabic',
                    color: Color(0xff000000),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 16.h),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: isChecked
                    ? Color(0xffFF4B4B)
                    : Color(0xffFF4B4B).withValues(alpha: .30),

                minimumSize: Size.fromHeight(55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16).r,
                ),
              ),
              onPressed: isChecked
                  ? () {
                      showModalBottomSheet(
                        context: context,
                        backgroundColor: Colors.transparent,
                        isScrollControlled: true,
                        builder: (_) => AppIdentityVerification(),
                      );
                    }
                  : null,
              child: Text(
                "حذف الحساب",
                style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'IBMPlexSansArabic',
                ),
              ),
            ),
          ),

          SizedBox(height: 8.h),

          SizedBox(
            width: double.infinity,

            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffFFFFFF),
                minimumSize: Size.fromHeight(55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16).r,

                  side: BorderSide(
                    color: Color(0xff000000),
                    style: BorderStyle.solid,
                  ),
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "إلغاء",
                style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'IBMPlexSansArabic',
                ),
              ),
            ),
          ),

          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}
