
import 'package:flutter/material.dart';
import 'package:waheed_app/core/components/app_button.dart';
import 'package:waheed_app/core/components/app_image.dart';

import '../../../core/components/app_deleteAccountBottomSheet.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool isUserView = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFFFFFF),
        title: Text(
          'حسابي',
          style: TextStyle(
            color: Color(0xff000000),
            fontSize: 18,
            fontWeight: FontWeight.w600,
            fontFamily: 'IBMPlexSansArabic',
          ),
        ),
        centerTitle: true,
      ),

      body: isUserView ? _UserProfile() : ProfileGuest(),
    );
  }
}

class _UserProfile extends StatelessWidget {
  _UserProfile();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffEAEAEA),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 24.5),
              Center(
                child: AppImage(
                  image: 'profile_icon.svg',
                  width: 80,
                  height: 80,
                ),
              ),
              SizedBox(height: 8),
              Center(
                child: Text(
                  'أحمد محمد',
                  style: TextStyle(
                    color: Color(0xff000000),
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'IBMPlexSansArabic',
                  ),
                ),
              ),
              SizedBox(height: 16),
              Container(
                padding: EdgeInsets.all(16),
                width: 370,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                            color: Color(0xffEAEAEA),
                            borderRadius: BorderRadius.circular(999),
                          ),
                          child: AppImage(
                            image: 'person.svg',
                            width: 20,
                            height: 20,
                            color: Color(0xff1B1B1B),
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          'تعديل الملف الشخصي',
                          style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'IBMPlexSansArabic',
                          ),
                        ),
                        Spacer(),
                        AppImage(
                          image: 'arrow_left_blue_color.svg',
                          width: 25,
                          height: 25,
                          color: Color(0xff4F4F4F),
                        ),
                      ],
                    ),
                    Center(
                      child: Divider(thickness: 1, color: Color(0xffEEEEEE)),
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                            color: Color(0xffEAEAEA),
                            borderRadius: BorderRadius.circular(999),
                          ),
                          child: AppImage(
                            image: 'earth.svg',
                            width: 20,
                            height: 20,
                            color: Color(0xff1B1B1B),
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          'اللغة',
                          style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'IBMPlexSansArabic',
                          ),
                        ),
                        Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'الإنجليزية',
                            style: TextStyle(
                              color: Color(0xff595959),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'IBMPlexSansArabic',
                            ),
                          ),
                        ),
                        AppImage(
                          image: 'arrow_left_blue_color.svg',
                          width: 25,
                          height: 25,
                          color: Color(0xff4F4F4F),
                        ),
                      ],
                    ),
                    Center(
                      child: Divider(thickness: 1, color: Color(0xffEEEEEE)),
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                            color: Color(0xffEAEAEA),
                            borderRadius: BorderRadius.circular(999),
                          ),
                          child: AppImage(
                            image: 'heart_icon.svg',
                            width: 20,
                            height: 20,
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          'المفضلة',
                          style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'IBMPlexSansArabic',
                          ),
                        ),
                      ],
                    ),
                    Center(
                      child: Divider(thickness: 1, color: Color(0xffEEEEEE)),
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                            color: Color(0xffEAEAEA),
                            borderRadius: BorderRadius.circular(999),
                          ),
                          child: AppImage(
                            image: 'box.svg',
                            width: 20,
                            height: 20,
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          'طلباتي',
                          style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'IBMPlexSansArabic',
                          ),
                        ),
                      ],
                    ),
                    Center(
                      child: Divider(thickness: 1, color: Color(0xffEEEEEE)),
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                            color: Color(0xffEAEAEA),
                            borderRadius: BorderRadius.circular(999),
                          ),
                          child: AppImage(
                            image: 'headphone.svg',
                            width: 20,
                            height: 20,
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          'مركز المساعدة',
                          style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'IBMPlexSansArabic',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Container(
                padding: EdgeInsets.all(16),
                width: 370,
                constraints: BoxConstraints(minHeight: 128),
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                            color: Color(0xffEAEAEA),
                            borderRadius: BorderRadius.circular(999),
                          ),
                          child: AppImage(
                            image: 'earth.svg',
                            width: 20,
                            height: 20,
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          'الشروط والأحكام',
                          style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'IBMPlexSansArabic',
                          ),
                        ),
                      ],
                    ),
                    Center(
                      child: Divider(thickness: 1, color: Color(0xffEEEEEE)),
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                            color: Color(0xffEAEAEA),
                            borderRadius: BorderRadius.circular(999),
                          ),
                          child: AppImage(
                            image: 'earth.svg',
                            width: 20,
                            height: 20,
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          'سياسة الخصوصية',
                          style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'IBMPlexSansArabic',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Container(
                padding: EdgeInsets.all(16),
                width: 370,
                height: 68,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        color: Color(0xffFF4B4B).withOpacity(0.20),
                        borderRadius: BorderRadius.circular(999),
                      ),
                      child: AppImage(
                        image: 'delete.svg',
                        width: 20,
                        height: 20,
                        color: Color(0xffFF4B4B),
                      ),
                    ),
                    SizedBox(width: 8),
                    TextButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          backgroundColor: Colors.transparent,
                          isScrollControlled: true,
                          builder: (_) => const DeleteAccountBottomSheet(),
                        );
                      },
                      child: Text(
                        'حذف الحساب',
                        style: TextStyle(
                          color: Color(0xffFF4B4B),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'IBMPlexSansArabic',
                        ),
                      ),
                    ),
                    Spacer(),
                    AppImage(
                      image: 'arrow_left_blue_color.svg',
                      width: 25,
                      height: 25,
                      color: Color(0xffFF4B4B),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              AppButton(
                title: 'تسجيل الخروج',
                onPressed: () {},
                icon: 'logout.svg',
                color: Color(0xFFFF4B4B).withValues(alpha: 0.26),
                iconOnRight: true,
                textColor: Color(0xFFFF4B4B),
              ),
              SizedBox(height: 86),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileGuest extends StatelessWidget {
  const ProfileGuest({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffEAEAEA),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              Center(
                child: Container(
                  width: 370,
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: const Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: AlignmentGeometry.topRight,
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'أهلاً بيك في ',
                                style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'IBMPlexSansArabic',
                                ),
                              ),

                              TextSpan(
                                text: 'وحيد!',

                                style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'IBMPlexSansArabic',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 2),
                      Align(
                        alignment: AlignmentGeometry.topRight,
                        child: Text(
                          'هنسهل عليك شراء وتأجير البدل وملابس المناسبات',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xff595959),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'IBMPlexSansArabic',
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 14),
                          decoration: BoxDecoration(
                            color: Color(0xff000000),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  color: Color(0xffFFFFFF),
                                  shape: BoxShape.circle,
                                ),
                                child: AppImage(
                                  image: 'profile_circle.svg',
                                  color: Color(0xff314158),
                                  width: 16,
                                  height: 16,
                                ),
                              ),
                              SizedBox(width: 8),
                              Text(
                                'تسجيل الدخول / إنشاء حساب',
                                style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontSize: 12,
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
                ),
              ),
              SizedBox(height: 24),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'الإعدادات',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'IBMPlexSansArabic',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8),
              Center(
                child: Container(
                  padding: EdgeInsets.all(16),
                  width: 370,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      _buildListItem(
                        title: 'اللغة',
                        iconName: 'earth.svg',
                        subtitle: 'الإنجليزية',
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Divider(thickness: 1, color: Color(0xffEEEEEE)),
                      ),
                      _buildListItem(
                        title: 'مركز المساعدة',

                        iconName: 'headphone.svg',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              Center(
                child: Container(
                  padding: EdgeInsets.all(16),
                  width: 370,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      _buildListItem(
                        title: 'الشروط والأحكام',
                        iconName: 'earth.svg',
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Divider(thickness: 1, color: Color(0xffEEEEEE)),
                      ),
                      _buildListItem(
                        title: 'سياسة الخصوصية',
                        iconName: 'earth.svg',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildListItem({
    required String title,
    required String iconName,
    String? subtitle,
  }) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(8),
          width: 36,
          height: 36,
          decoration: BoxDecoration(
            color: Color(0xffEAEAEA),
            borderRadius: BorderRadius.circular(999),
          ),
          child: AppImage(
            image: iconName,
            width: 20,
            height: 20,
            color: const Color(0xff4F4F4F),
          ),
        ),
        const SizedBox(width: 8),
        Text(
          title,
          style: TextStyle(
            color: Color(0xff000000),
            fontSize: 16,
            fontWeight: FontWeight.w400,
            fontFamily: 'IBMPlexSansArabic',
          ),
        ),
        const Spacer(),
        if (subtitle != null)
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              subtitle,
              style: const TextStyle(
                color: Color(0xff595959),
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: 'IBMPlexSansArabic',
              ),
            ),
          ),
        const AppImage(
          image: 'arrow_left_blue_color.svg',
          width: 16,
          height: 16,
          color: Color(0xff4F4F4F),
        ),
      ],
    );
  }
}
