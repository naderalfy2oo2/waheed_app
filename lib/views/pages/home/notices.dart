import 'package:flutter/material.dart';
import 'package:waheed_app/core/components/custom_container_notices.dart';

import '../../../core/components/app_image.dart';

class Notices extends StatelessWidget {
  const Notices({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffEAEAEA),
        appBar: AppBar(
          backgroundColor: Color(0xffFFFFFF),
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(99),
                  border: Border.all(color: const Color(0xffE5E7EB)),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x14000000),
                      blurRadius: 16,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: AppImage(image: 'arrow-left.svg', width: 24, height: 24),
              ),
            ),
          ),
          title: Text(
            'الإشعارات',
            style: TextStyle(
              color: Color(0xff000000),
              fontSize: 18,
              fontWeight: FontWeight.w500,
              fontFamily: 'IBMPlexSansArabic',
            ),
          ),
          centerTitle: true,
        ),

        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,

            children: [
              SizedBox(height: 24),

              Padding(
                padding: const EdgeInsetsDirectional.only(start: 16),
                child: Text(
                  'الــيوم',
                  style: TextStyle(
                    color: Color(0xffBFBFBF),
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'IBMPlexSansArabic',
                  ),
                ),
              ),

              SizedBox(height: 12),
              CustomContainerNotices(
                title1: 'موعد إعادة البدلة',
                title2: 'يرجى إعادة البدلة خلال يومين لتجنب أي رسوم إضافية.',
                title3: 'اليوم',
                showIconContainer: false,
              ),

              SizedBox(height: 8),

              CustomContainerNotices(
                title1: 'اقترب موعد استلام البدلة',
                title2: 'يمكنك استلام البدلة غدًا من فرع ميت غمر.',
                title3: 'قبل 10 دقائق',
                showIconContainer: true,
                ContainerColor: const Color(0xffEEF3F9),
                icon: 'clender_icon.svg',
              ),

              SizedBox(height: 16),

              Padding(
                padding: const EdgeInsetsDirectional.only(start: 16),
                child: Text(
                  'سابقاً',
                  style: TextStyle(
                    color: Color(0xffBFBFBF),
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'IBMPlexSansArabic',
                  ),
                ),
              ),

              SizedBox(height: 12),

              CustomContainerNotices(
                title1: 'تم تأكيد طلبك',
                title2: 'تم تأكيد طلب شراء البدلة وسيتم تجهيزها قريبًا.',
                title3: 'قبل 10 دقائق',
                showIconContainer: true,
                ContainerColor: const Color(0xffFBF5EC),
                icon: 'talabat_icon.svg',
              ),

              SizedBox(height: 12),

              CustomContainerNotices(
                title1: 'اقترب موعد استلام البدلة',
                title2: 'يمكنك استلام البدلة غدًا من فرع ميت غمر.',
                title3: 'قبل 10 دقائق',
                showIconContainer: true,
                ContainerColor: const Color(0xffEEF3F9),
                icon: 'clender_icon.svg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
