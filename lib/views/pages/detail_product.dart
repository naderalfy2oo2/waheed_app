import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed_app/core/components/app_container_product.dart';
import '../../core/components/app_container_color.dart';
import '../../core/components/app_container_description.dart';
import '../../core/components/app_image.dart';
import '../../core/components/custom_bottom_sheet.dart';
import '../../core/components/item_listview_builder.dart';
import '../../model/product_model_id.dart';
import '../../services/dio_helper.dart';

class DetailProductPage extends StatefulWidget {
  final int id;
  const DetailProductPage({super.key, required this.id});

  @override
  State<DetailProductPage> createState() => _DetailProductPageState();
}

class _DetailProductPageState extends State<DetailProductPage> {
  Color selectedColor = Color(0xff3F4651);

  ProductModelId? product;
  bool loading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  Future<void> getData() async {
    final res = await DioHelper.getData(path: "api/Products/${widget.id}");
    print(res.isSucess);
    print(res.msg);

    print("${widget.id}");
    print("${res.isSucess}");
    print(" ${res.data}");
    print(" ${res.data.runtimeType}");

    if (res.isSucess && res.data is Map) {
      product = ProductModelId.fromJson(Map<String, dynamic>.from(res.data!));
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
        backgroundColor: Color(0xffEAEAEA),

        appBar: AppBar(
          backgroundColor: Color(0xffFFFFFF),
          title: Text(
            'تفاصيل المنتج',
            style: TextStyle(
              color: Color(0xff000000),
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
              fontFamily: 'IBMPlexSansArabic',
            ),
          ),

          centerTitle: true,

          leading: Padding(
            padding: const EdgeInsets.all(12),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 48.w,
                height: 48.h,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),

                  border: Border.all(
                    color: Color(0xffECECEC),

                    style: BorderStyle.solid,
                  ),
                  shape: BoxShape.circle,
                ),
                child: AppImage(
                  image: 'arrow-left.svg',
                  width: 24.w,
                  height: 24.h,
                ),
              ),
            ),
          ),

          actions: [
            SizedBox(
              width: 48.w,
              height: 48.h,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: 48.w,
                      height: 48.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(99).r,
                        border: Border.all(
                          style: BorderStyle.solid,
                          color: Color(0xffECECEC),
                        ),
                      ),

                      child: Center(
                        child: AppImage(
                          image: 'cart.svg',
                          width: 24.w,
                          height: 24.h,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentGeometry.topLeft,
                      child: Container(
                        width: 16.w,
                        height: 16.h,
                        decoration: BoxDecoration(
                          color: Color(0xff000000),

                          borderRadius: BorderRadius.circular(99).r,
                        ),
                        child: Text(
                          textAlign: TextAlign.center,
                          '2',
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'IBMPlexSansArabic',
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),

        body: loading
            ? Center(child: CircularProgressIndicator())
            : product == null
            ? Center(
                child: Text(
                  'it happend error during operation',
                  style: TextStyle(
                    fontFamily: 'IBMPlexSansArabic',
                    fontSize: 16.sp,
                  ),
                ),
              )
            : SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Column(
                        children: [
                          SizedBox(height: 24.h),
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(16).r,
                                child: AppImage(
                                  image: product!.mainImageUrl,
                                  width: double.infinity.w,
                                  height: 374.h,
                                  fit: BoxFit.cover,
                                ),
                              ),

                              Positioned(
                                top: 8,
                                right: 8,
                                child: Container(
                                  width: 138.w,
                                  height: 30.h,
                                  decoration: BoxDecoration(
                                    color: Color(0xffC9A961).withOpacity(.8),
                                    borderRadius: BorderRadius.circular(99).r,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      AppImage(
                                        image: 'tick-circle.svg',
                                        width: 16.w,
                                        height: 16.h,
                                      ),
                                      SizedBox(width: 4.w),
                                      Text(
                                        "تفصيل علي المقاس",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 16.h),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: product!.images.take(4).map((image) {
                              return ClipRRect(
                                borderRadius: BorderRadius.circular(8).r,
                                child: AppImage(
                                  image: image.imageUrl,
                                  width: 82.w,
                                  height: 80.h,
                                  fit: BoxFit.cover,
                                ),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 24.h),

                    Container(
                      width: double.infinity.w,
                      constraints: BoxConstraints(
                        minHeight: MediaQuery.of(context).size.height.h,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(24).r,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 16,
                        ),
                        child: Column(
                          children: [
                            Align(
                              alignment: AlignmentGeometry.topRight,
                              child: Text(
                                'بدلة كلاسيكية',
                                style: TextStyle(
                                  color: Color(0xffC9A961),
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'IBMPlexSansArabic',
                                ),
                              ),
                            ),

                            SizedBox(height: 5.h),

                            Align(
                              alignment: AlignmentGeometry.topRight,
                              child: Text(
                                'بدلة رجالية رصاصي فاخرة',
                                style: TextStyle(
                                  color: Color(0xff0F172B),
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'IBMPlexSansArabic',
                                ),
                              ),
                            ),

                            Row(
                              children: [
                                Text(
                                  '(124تقيم)',
                                  style: TextStyle(
                                    color: Color(0xff62748E),
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'IBMPlexSansArabic',
                                  ),
                                ),
                                SizedBox(width: 8.w),

                                Text(
                                  '4.8',
                                  style: TextStyle(
                                    color: Color(0xff0A0A0A),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'IBMPlexSansArabic',
                                  ),
                                ),

                                AppImage(
                                  image: 'star.svg',
                                  width: 14.w,
                                  height: 14.h,
                                ),
                              ],
                            ),

                            SizedBox(height: 16.h),

                            Row(
                              children: [
                                AppContainerProduct(
                                  Icon: 'medal.svg',
                                  title: 'جودة عالية',
                                  color: Color(0xffF8FAFC),
                                ),

                                SizedBox(width: 8.w),

                                AppContainerProduct(
                                  Icon: 'truck-fast.svg',
                                  title: 'توصيل 3–7 أيام',
                                  color: Color(0xffF8FAFC),
                                ),

                                SizedBox(width: 8.w),

                                AppContainerProduct(
                                  Icon: 'shield.svg',
                                  title: 'ضمان التفصيل',
                                  color: Color(0xffF8FAFC),
                                ),
                              ],
                            ),

                            SizedBox(height: 18.h),

                            Row(
                              children: [
                                Text(
                                  'اللون',
                                  style: TextStyle(
                                    color: Color(0xff0A0A0A),

                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'IBMPlexSansArabic',
                                  ),
                                ),

                                Spacer(),

                                Text(
                                  'رصاصي داكن',
                                  style: TextStyle(
                                    color: Color(0xff62748E),

                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'IBMPlexSansArabic',
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 12.h),

                            Row(
                              children: [
                                AppContainerColor(
                                  color: Color(0xff3F4651),
                                  isSelected:
                                      selectedColor == Color(0xff3F4651),
                                  onTap: () {
                                    setState(() {
                                      selectedColor = Color(0xff3F4651);
                                    });
                                  },
                                ),

                                SizedBox(width: 12.w),

                                AppContainerColor(
                                  color: Color(0xff172554),
                                  isSelected:
                                      selectedColor == Color(0xff172554),
                                  onTap: () {
                                    setState(() {
                                      selectedColor = Color(0xff172554);
                                    });
                                  },
                                ),

                                SizedBox(width: 12.w),

                                AppContainerColor(
                                  color: Color(0xff1A1A1A),
                                  isSelected:
                                      selectedColor == Color(0xff1A1A1A),
                                  onTap: () {
                                    setState(() {
                                      selectedColor = Color(0xff1A1A1A);
                                    });
                                  },
                                ),

                                SizedBox(width: 12.w),

                                AppContainerColor(
                                  color: Color(0xffC9B79C),
                                  isSelected:
                                      selectedColor == Color(0xffC9B79C),
                                  onTap: () {
                                    setState(() {
                                      selectedColor = Color(0xffC9B79C);
                                    });
                                  },
                                ),
                              ],
                            ),

                            SizedBox(height: 26.h),

                            Align(
                              alignment: AlignmentGeometry.topRight,
                              child: Text(
                                'الوصف',
                                style: TextStyle(
                                  color: Color(0xff0A0A0A),

                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'IBMPlexSansArabic',
                                ),
                              ),
                            ),

                            SizedBox(height: 12.h),

                            Align(
                              alignment: AlignmentGeometry.topRight,
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text:
                                          'بدلة رجالية كلاسيكية بقصة عصرية أنيقة، مصنوعة من أجود الأقمشة\n',
                                      style: TextStyle(
                                        color: Color(0xff45556C),

                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'IBMPlexSansArabic',
                                      ),
                                    ),

                                    TextSpan(
                                      text:
                                          'وتُفصّل خصيصاً وفقاً لقياساتك التي تدخلها عبر معالج القياسات. مثالية.\n',
                                      style: TextStyle(
                                        color: Color(0xff45556C),
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'IBMPlexSansArabic',
                                      ),
                                    ),

                                    TextSpan(
                                      text: ' للمناسبات الرسمية والاجتماعات.',
                                      style: TextStyle(
                                        color: Color(0xff45556C),

                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'IBMPlexSansArabic',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            SizedBox(height: 12.h),

                            Row(
                              children: [
                                AppContainerDescription(title: 'خياطة يدوية'),
                                SizedBox(width: 12.w),

                                AppContainerDescription(title: 'بطانة حريرية'),

                                SizedBox(width: 12.w),

                                AppContainerDescription(title: 'قصة سليم فيت'),
                              ],
                            ),

                            SizedBox(height: 25.h),

                            Row(
                              children: [
                                AppImage(
                                  image: 'stars.svg',
                                  width: 16.w,
                                  height: 16.h,
                                ),

                                SizedBox(width: 8.w),

                                Text(
                                  'منتجات مشابهة',
                                  style: TextStyle(
                                    color: Color(0xff0A0A0A),

                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'IBMPlexSansArabic',
                                  ),
                                ),

                                Spacer(),

                                TextButton.icon(
                                  onPressed: () {},
                                  label: Row(
                                    children: [
                                      Text(
                                        'عرض الكل',

                                        style: TextStyle(
                                          color: Color(0xff314158),

                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'IBMPlexSansArabic',
                                        ),
                                      ),

                                      AppImage(
                                        image: 'Icon.svg',
                                        width: 12.w,
                                        height: 12.h,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 16.h),

                            SizedBox(
                              height: 330.h,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: product!.images.length,

                                itemBuilder: (context, index) {
                                  final image = product!.images[index];
                                  return Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: SizedBox(
                                      width: 175.w,
                                      child: ItemListviewBuilder(
                                        image: product!.mainImageUrl,

                                        title: product!.descriptionAr,
                                        Subtitle: product!.categoryName,
                                        price: product!.discountPrice
                                            .toString(),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

        bottomNavigationBar: const CustomBottomSheet(),
      ),
    );
  }
}
