import 'package:flutter/material.dart';
import 'package:waheed_app/core/components/app_range_slider.dart';

import '../../core/components/app_button.dart';
import '../../core/components/app_image.dart';

class FilterSheet extends StatefulWidget {
  const FilterSheet({super.key});

  @override
  State<FilterSheet> createState() => _FilterSheetState();
}

class _FilterSheetState extends State<FilterSheet> {
  int SelectedIndex = 0;
  final List<String> Categories = ['الكل', 'الأحذية', 'الاكسسوارات', 'القمصان'];
  RangeValues _currentRange = const RangeValues(0, 1800);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
      child: SizedBox(
        width: double.maxFinite,
        child: Container(
          padding: EdgeInsets.all(16),
          width: 402,
          height: 501,

          decoration: BoxDecoration(
            color: Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(32),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: _Item(),
                ),

                SizedBox(height: 16),

                Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: Text(
                    'الأقسام',
                    style: TextStyle(
                      color: Color(0xff314158),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'IBMPlexSansArabic',
                    ),
                  ),
                ),

                SizedBox(height: 12),

                Wrap(
                  spacing: 6,
                  runSpacing: 12,
                  textDirection: TextDirection.rtl,

                  children: List.generate(Categories.length, (index) {
                    final bool isSelected = SelectedIndex == index;
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          SelectedIndex = index;
                        });
                      },
                      child: Container(
                        width: 110,
                        height: 41,

                        decoration: BoxDecoration(
                          color: isSelected
                              ? Color(0xff000000)
                              : Color(0xffEAEAEA),
                          borderRadius: BorderRadius.circular(16),

                          boxShadow: isSelected
                              ? [BoxShadow(color: Colors.transparent)]
                              : [],
                        ),
                        child: Center(
                          child: Text(
                            Categories[index],
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'IBMPlexSansArabic',
                              fontWeight: FontWeight.w900,
                              color: isSelected ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),

                SizedBox(height: 16),

                Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: Text(
                    'نطاق السعر',
                    style: TextStyle(
                      color: Color(0xff314158),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'IBMPlexSansArabic',
                    ),
                  ),
                ),

                SizedBox(height: 12),

                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Color(0xffDCDCDC),
                    inactiveTrackColor: Color(0xff000000),

                    thumbColor: Color(0xffFFFFFF),
                    overlayColor: Colors.black.withOpacity(.1),

                    rangeThumbShape: const RoundRangeSliderThumbShape(
                      enabledThumbRadius: 10,
                    ),
                  ),
                  child: RangeSlider(
                    values: _currentRange,
                    min: 0,
                    max: 5000,
                    onChanged: (values) {
                      setState(() {
                        _currentRange = values;
                      });
                    },
                  ),
                ),

                const SizedBox(height: 20),

                Directionality(
                  textDirection: TextDirection.ltr,
                  child: Row(
                    children: [
                      AppRangeSlider(
                        title: 'الأعلى',
                        price: _currentRange.end.round(),
                      ),

                      SizedBox(width: 20),
                      Container(
                        width: 100,
                        height: 2,
                        decoration: BoxDecoration(color: Color(0xffE2E8F0)),
                      ),

                      SizedBox(width: 25),

                      AppRangeSlider(
                        title: 'الأدنى',
                        price: _currentRange.start.round(),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 32),

                AppButton(title: 'عرض النتائج (24)'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//???

class _Item extends StatelessWidget {
  const _Item({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {},
          child: AppImage(image: 'close.svg', width: 24, height: 24),
        ),

        SizedBox(width: 100),

        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'تصفية المنتجات\n',
                style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'IBMPlexSansArabic',
                ),
              ),

              TextSpan(
                text: '     2 فلتر مفعّل',
                style: TextStyle(
                  color: Color(0xff686868),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'IBMPlexSansArabic',
                ),
              ),
            ],
          ),
        ),
        Spacer(),

        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppImage(image: 're_loading.svg'),

            SizedBox(width: 4),

            Text(
              'إعادة التعيين',
              style: TextStyle(
                color: Color(0xff686868),
                fontFamily: 'IBMPlexSansArabic',
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
