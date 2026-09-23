import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed_app/core/components/app_image.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final String? icon;
  const AppBarWidget({super.key, this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 85.w,

      automaticallyImplyLeading: false,
      backgroundColor: Color(0xffFFFFFF),
      centerTitle: true,
      title: Text(
        title ?? "",
        style: TextStyle(
          color: Color(0xff000000),

          fontSize: 18.sp,

          fontWeight: FontWeight.w500,
        ),
      ),

      leading: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: InkWell(
          onTap: () => Navigator.pop(context),
          child: Container(
            width: 48.w,
            height: 48.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(99).r,

              color: Color(0xffFFFFFF),
              border: Border.all(color: Color(0xffECECEC)),
            ),
            child: AppImage(image: icon ?? "", width: 24.w, height: 24.h),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
