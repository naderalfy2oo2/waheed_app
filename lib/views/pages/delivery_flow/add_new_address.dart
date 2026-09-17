import 'package:flutter/material.dart';
import 'package:waheed_app/core/components/app_bar_widget.dart';
import 'package:waheed_app/core/components/app_button.dart';
import 'package:waheed_app/core/components/app_image.dart';
import '../../../core/components/address_ bottom_ sheet.dart';

class AddNewAddress extends StatelessWidget {
  const AddNewAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        appBar: AppBarWidget(title: 'إضافة عنوان جديد', icon: 'arrow-left.svg'),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 32),

                Align(
                  alignment: AlignmentGeometry.topRight,
                  child: Text(
                    'الاسم الكامل',
                    style: TextStyle(
                      color: Color(0xff314158),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'IBMPlexSansArabic',
                    ),
                  ),
                ),
                SizedBox(height: 12),

                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'أدخل اسمك الكامل',
                    hintStyle: TextStyle(
                      color: Color(0xff0A0A0A).withValues(alpha: 0.5),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),

                    prefixIcon: AppImage(
                      image: 'profile.svg',
                      width: 20,
                      height: 20,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(color: Color(0xffEAEAEA)),
                    ),
                  ),
                ),

                SizedBox(height: 16),

                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: AlignmentGeometry.centerRight,
                          child: Text(
                            'المدينة',
                            style: TextStyle(
                              color: Color(0xff314158),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'IBMPlexSansArabic',
                            ),
                          ),
                        ),

                        SizedBox(height: 12),

                        SizedBox(
                          width: 178,
                          height: 48,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'أدخل المدينة',
                              hintStyle: TextStyle(
                                color: Color(0xff0A0A0A).withValues(alpha: 0.5),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),

                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide(
                                  color: Color(0xffEAEAEA),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 16),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: AlignmentGeometry.centerRight,
                          child: Text(
                            'المنطقة / الحي',
                            style: TextStyle(
                              color: Color(0xff314158),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'IBMPlexSansArabic',
                            ),
                          ),
                        ),

                        SizedBox(height: 12),

                        SizedBox(
                          width: 178,
                          height: 48,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'أدخل المنطقة او الحي',
                              hintStyle: TextStyle(
                                color: Color(0xff0A0A0A).withValues(alpha: 0.5),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),

                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide(
                                  color: Color(0xffEAEAEA),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: 16),

                Align(
                  alignment: AlignmentGeometry.topRight,
                  child: Text(
                    'رقم الهاتف',
                    style: TextStyle(
                      color: Color(0xff314158),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'IBMPlexSansArabic',
                    ),
                  ),
                ),
                SizedBox(height: 12),

                TextFormField(
                  decoration: InputDecoration(
                    hintText: '+15 5X XXX XXXX',
                    hintStyle: TextStyle(
                      color: Color(0xff0A0A0A).withValues(alpha: 0.5),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),

                    prefixIcon: AppImage(
                      image: 'call.svg',
                      width: 20,
                      height: 20,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(color: Color(0xffEAEAEA)),
                    ),
                  ),
                ),

                SizedBox(height: 16),

                Align(
                  alignment: AlignmentGeometry.topRight,
                  child: Text(
                    'العنوان بالتفصيل',
                    style: TextStyle(
                      color: Color(0xff314158),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'IBMPlexSansArabic',
                    ),
                  ),
                ),
                SizedBox(height: 12),

                SizedBox(
                  width: double.infinity,
                  height: 80,
                  child: TextFormField(
                    maxLines: 1,
                    textAlignVertical: TextAlignVertical.center,

                    decoration: InputDecoration(
                      hintText: 'الشارع، رقم المبنى، علامة مميزة',
                      hintStyle: TextStyle(
                        color: Color(0xff0A0A0A).withValues(alpha: 0.5),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),

                      prefixIcon: AppImage(
                        image: 'location.svg',
                        width: 20,
                        height: 20,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(color: Color(0xffEAEAEA)),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 212),

                AppButton(
                  title: 'حفظ العنوان',
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      builder: (context) {
                        return AdressBottomSheet();
                      },
                    );
                  },
                ),

                SizedBox(height: 12),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
