import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed_app/services/helper_methods.dart';
import 'package:waheed_app/views/auth/register.dart';
import 'package:waheed_app/core/components/app_button.dart';
import 'package:waheed_app/core/components/app_image.dart';
import '../../../core/components/app_deleteAccountBottomSheet.dart';
import '../../../model/user_model.dart';
import '../../../services/dio_helper.dart';
import '../Terms_conditions.dart';
import '../privacy_policy.dart';
import 'favourite.dart';
import 'talabat.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  UserModel? user;
  bool loading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  Future<void> getData() async {
    final res = await DioHelper.getData(path: "api/Users/me");
    print(res.isSucess);
    print(res.msg);

    print("${res.isSucess}");
    print(" ${res.data}");
    print(" ${res.data.runtimeType}");

    if (res.isSucess && res.data is Map) {
      user = UserModel.fromJson(Map<String, dynamic>.from(res.data!));
    }

    if (mounted) {
      setState(() {
        loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xffFFFFFF),
          title: Text(
            'حسابي',
            style: TextStyle(
              color: Color(0xff000000),
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              fontFamily: 'IBMPlexSansArabic',
            ),
          ),
          centerTitle: true,
        ),

        body: loading
            ? Center(child: CircularProgressIndicator())
            : user != null
            ? _UserProfile(user: user!)
            : ProfileGuest(),
      ),
    );
  }
}

class _UserProfile extends StatelessWidget {
  final UserModel user;

  const _UserProfile({required this.user});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffEAEAEA),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 24.5.h),
              Center(
                child: AppImage(
                  image: user.profilePictureUrl.isEmpty
                      ? user.profilePictureUrl
                      : 'profile_icon.svg',
                  width: 80.w,
                  height: 80.h,
                ),
              ),
              SizedBox(height: 8.h),
              Center(
                child: Text(
                  user.fullName,
                  style: TextStyle(
                    color: Color(0xff000000),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'IBMPlexSansArabic',
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              Container(
                padding: EdgeInsets.all(16),
                width: 370.w,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(16).r,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 16.h),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          width: 36.w,
                          height: 36.h,
                          decoration: BoxDecoration(
                            color: Color(0xffEAEAEA),
                            borderRadius: BorderRadius.circular(999).r,
                          ),
                          child: AppImage(
                            image: 'person.svg',
                            width: 20.w,
                            height: 20.h,
                            color: Color(0xff1B1B1B),
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          'تعديل الملف الشخصي',
                          style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'IBMPlexSansArabic',
                          ),
                        ),
                        Spacer(),
                        AppImage(
                          image: 'arrow_left_blue_color.svg',
                          width: 25.w,
                          height: 25.h,
                          color: Color(0xff4F4F4F),
                        ),
                      ],
                    ),
                    Center(
                      child: Divider(thickness: 1, color: Color(0xffEEEEEE)),
                    ),
                    SizedBox(height: 16.h),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          width: 36.w,
                          height: 36.h,
                          decoration: BoxDecoration(
                            color: Color(0xffEAEAEA),
                            borderRadius: BorderRadius.circular(999).r,
                          ),
                          child: AppImage(
                            image: 'earth.svg',
                            width: 20.w,
                            height: 20.h,
                            color: Color(0xff1B1B1B),
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          'اللغة',
                          style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 16.sp,
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
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'IBMPlexSansArabic',
                            ),
                          ),
                        ),
                        AppImage(
                          image: 'arrow_left_blue_color.svg',
                          width: 25.w,
                          height: 25.h,
                          color: Color(0xff4F4F4F),
                        ),
                      ],
                    ),
                    Center(
                      child: Divider(thickness: 1, color: Color(0xffEEEEEE)),
                    ),
                    SizedBox(height: 16.h),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            goTo(page: FavouritePage());
                          },
                          child: Container(
                            padding: EdgeInsets.all(8),
                            width: 36.w,
                            height: 36.h,
                            decoration: BoxDecoration(
                              color: Color(0xffEAEAEA),
                              borderRadius: BorderRadius.circular(999).r,
                            ),
                            child: AppImage(
                              image: 'heart_icon.svg',
                              width: 20.w,
                              height: 20.h,
                            ),
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          'المفضلة',
                          style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'IBMPlexSansArabic',
                          ),
                        ),
                      ],
                    ),
                    Center(
                      child: Divider(thickness: 1, color: Color(0xffEEEEEE)),
                    ),
                    SizedBox(height: 16.h),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            goTo(page: TalabatPage());
                          },
                          child: Container(
                            padding: EdgeInsets.all(8),
                            width: 36.w,
                            height: 36.h,
                            decoration: BoxDecoration(
                              color: Color(0xffEAEAEA),
                              borderRadius: BorderRadius.circular(999).r,
                            ),
                            child: AppImage(
                              image: 'box.svg',
                              width: 20.w,
                              height: 20.h,
                            ),
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          'طلباتي',
                          style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'IBMPlexSansArabic',
                          ),
                        ),
                      ],
                    ),
                    Center(
                      child: Divider(thickness: 1, color: Color(0xffEEEEEE)),
                    ),
                    SizedBox(height: 16.h),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          width: 36.w,
                          height: 36.h,
                          decoration: BoxDecoration(
                            color: Color(0xffEAEAEA),
                            borderRadius: BorderRadius.circular(999).r,
                          ),
                          child: AppImage(
                            image: 'headphone.svg',
                            width: 20.w,
                            height: 20.h,
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          'مركز المساعدة',
                          style: TextStyle(
                            color: Color(0xff000000),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'IBMPlexSansArabic',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              Container(
                padding: EdgeInsets.all(16),
                width: 370.w,
                constraints: BoxConstraints(minHeight: 128.h),
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(16).r,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 16.h),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          width: 36.w,
                          height: 36.h,
                          decoration: BoxDecoration(
                            color: Color(0xffEAEAEA),
                            borderRadius: BorderRadius.circular(999).r,
                          ),
                          child: AppImage(
                            image: 'earth.svg',
                            width: 20.w,
                            height: 20.h,
                          ),
                        ),
                        SizedBox(width: 8.w),
                        TextButton(
                          onPressed: () {
                            goTo(page: TermsConditionsPage());
                          },
                          child: Text(
                            'الشروط والأحكام',
                            style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'IBMPlexSansArabic',
                            ),
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
                          width: 36.w,
                          height: 36.h,
                          decoration: BoxDecoration(
                            color: Color(0xffEAEAEA),
                            borderRadius: BorderRadius.circular(999).r,
                          ),
                          child: AppImage(
                            image: 'earth.svg',
                            width: 20.w,
                            height: 20.h,
                          ),
                        ),
                        SizedBox(width: 8.w),
                        TextButton(
                          onPressed: () {
                            goTo(page: PrivacyPolicyPage());
                          },
                          child: Text(
                            'سياسة الخصوصية',
                            style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'IBMPlexSansArabic',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              Container(
                padding: EdgeInsets.all(16),
                width: 370.w,
                height: 68.h,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(16).r,
                ),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      width: 36.w,
                      height: 36.h,
                      decoration: BoxDecoration(
                        color: Color(0xffFF4B4B).withOpacity(0.20),
                        borderRadius: BorderRadius.circular(999).r,
                      ),
                      child: AppImage(
                        image: 'delete.svg',
                        width: 20.w,
                        height: 20.h,
                        color: Color(0xffFF4B4B),
                      ),
                    ),
                    SizedBox(width: 8.w),
                    TextButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          backgroundColor: Colors.transparent,
                          isScrollControlled: true,
                          builder: (_) => DeleteAccountBottomSheet(),
                        );
                      },
                      child: Text(
                        'حذف الحساب',
                        style: TextStyle(
                          color: Color(0xffFF4B4B),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'IBMPlexSansArabic',
                        ),
                      ),
                    ),
                    Spacer(),
                    AppImage(
                      image: 'arrow_left_blue_color.svg',
                      width: 25.w,
                      height: 25.h,
                      color: Color(0xffFF4B4B),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32.h),
              AppButton(
                title: 'تسجيل الخروج',
                onPressed: () {},
                icon: 'logout.svg',
                color: Color(0xFFFF4B4B).withValues(alpha: 0.26),
                iconOnRight: true,
                textColor: Color(0xFFFF4B4B),
              ),
              SizedBox(height: 86.h),
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
        backgroundColor: Color(0xffEAEAEA),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 16.h),
              Center(
                child: Container(
                  width: 370.w,
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(16).r,
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
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'IBMPlexSansArabic',
                                ),
                              ),

                              TextSpan(
                                text: 'وحيد!',

                                style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'IBMPlexSansArabic',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 2.h),
                      Align(
                        alignment: AlignmentGeometry.topRight,
                        child: Text(
                          'هنسهل عليك شراء وتأجير البدل وملابس المناسبات',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xff595959),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'IBMPlexSansArabic',
                          ),
                        ),
                      ),
                      SizedBox(height: 16.h),
                      InkWell(
                        onTap: () {
                          goTo(page: RegisterView());
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 14),
                          decoration: BoxDecoration(
                            color: Color(0xff000000),
                            borderRadius: BorderRadius.circular(12).r,
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
                                  width: 16.w,
                                  height: 16.h,
                                ),
                              ),
                              SizedBox(width: 8.w),
                              Text(
                                'تسجيل الدخول / إنشاء حساب',
                                style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontSize: 12.sp,
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
              SizedBox(height: 24.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'الإعدادات',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'IBMPlexSansArabic',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8.h),
              Center(
                child: Container(
                  padding: EdgeInsets.all(16),
                  width: 370.w,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(16).r,
                  ),
                  child: Column(
                    children: [
                      _ListItem(
                        title: 'اللغة',
                        iconName: 'earth.svg',
                        subtitle: 'الإنجليزية',
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Divider(thickness: 1, color: Color(0xffEEEEEE)),
                      ),
                      _ListItem(
                        title: 'مركز المساعدة',

                        iconName: 'headphone.svg',
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              Center(
                child: Container(
                  padding: EdgeInsets.all(16),
                  width: 370.w,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.circular(16).r,
                  ),
                  child: Column(
                    children: [
                      _ListItem(
                        title: 'الشروط والأحكام',
                        iconName: 'earth.svg',
                        onTap: () {
                          goTo(page: TermsConditionsPage());
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Divider(thickness: 1, color: Color(0xffEEEEEE)),
                      ),
                      _ListItem(
                        title: 'سياسة الخصوصية',
                        iconName: 'earth.svg',
                        onTap: () {
                          goTo(page: PrivacyPolicyPage());
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget _ListItem({
    required String title,
    required String iconName,
    String? subtitle,
    void Function()? onTap,
  }) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(8),
          width: 36.w,
          height: 36.h,
          decoration: BoxDecoration(
            color: Color(0xffEAEAEA),
            borderRadius: BorderRadius.circular(999).r,
          ),
          child: AppImage(
            image: iconName,
            width: 20.w,
            height: 20.h,
            color: Color(0xff4F4F4F),
          ),
        ),
        SizedBox(width: 8.w),
        Text(
          title,
          style: TextStyle(
            color: Color(0xff000000),
            fontSize: 16.sp,
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
              style: TextStyle(
                color: Color(0xff595959),
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                fontFamily: 'IBMPlexSansArabic',
              ),
            ),
          ),
        GestureDetector(
          onTap: onTap,
          child: AppImage(
            image: 'arrow_left_blue_color.svg',
            width: 16.w,
            height: 16.h,
            color: Color(0xff4F4F4F),
          ),
        ),
      ],
    );
  }
}
