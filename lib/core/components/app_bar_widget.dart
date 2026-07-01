import 'package:flutter/material.dart';
import 'package:waheed_app/core/components/app_image.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final String? icon;
  const AppBarWidget({super.key, this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Color(0xffFFFFFF),
      centerTitle: true,
      title: Text(
        title ?? "",
        style: TextStyle(
          color: Color(0xff000000),

          fontSize: 18,

          fontWeight: FontWeight.w500,
        ),
      ),

      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(99),

              color: Color(0xffFFFFFF),
              border: Border.all(color: Color(0xffECECEC)),
            ),
            child: AppImage(image: icon ?? "", width: 24, height: 24),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
