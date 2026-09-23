import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:waheed_app/services/helper_methods.dart';
import 'package:waheed_app/views/pages/home/favourite.dart';
import 'package:waheed_app/views/pages/home/notices.dart';
import '../../../core/components/custom_row_text_home.dart';
import '../../../core/components/app_image.dart';
import '../../../core/components/app_input.dart';
import '../../../core/components/custom_container_home.dart';
import '../../../core/components/item_gridView_home.dart';
import '../../../model/category_model.dart';
import '../../../model/product_ model.dart';
import '../../../services/dio_helper.dart';
import '../filter_sheet.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int countIndex = 0;

  final List image = [
    'assets/images/home.png',
    'assets/images/home.png',
    'assets/images/home.png',
  ];

  List<CategoryModel> categories = [];

  ProductsResponseModel? productResponse;
  bool loading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
    getDataCategory();
  }

  Future<void> getDataCategory() async {
    final res = await DioHelper.getData(path: "api/Categories");
    print(res.isSucess);
    print(res.msg);

    print("${res.isSucess}");
    print(" ${res.data}");
    print(" ${res.data.runtimeType}");

    if (res.isSucess && res.data is List) {
      categories = (res.data as List)
          .map(
            (item) => CategoryModel.fromJson(Map<String, dynamic>.from(item)),
          )
          .toList();
    }

    if (mounted) {
      setState(() {
        loading = false;
      });
    }
  }

  Future<void> getData() async {
    final res = await DioHelper.getData(path: "api/Products");
    print(res.isSucess);
    print(res.msg);

    print("${res.isSucess}");
    print(" ${res.data}");
    print(" ${res.data.runtimeType}");

    if (res.isSucess && res.data is Map) {
      productResponse = ProductsResponseModel.fromJson(
        Map<String, dynamic>.from(res.data!),
      );
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
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: Row(
            children: [
              SizedBox(
                width: 50.w,
                height: 50.h,
                child: GestureDetector(
                  onTap: () {
                    goTo(page: NoticesPage());
                  },
                  child: Container(
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.all(8),
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(30).r,
                      border: Border.all(
                        style: BorderStyle.solid,
                        color: Color(0xffEAEAEA),
                      ),
                    ),

                    child: AppImage(
                      image: 'notification_sound.svg',
                      width: 150.w,
                      height: 150.h,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 4.w),

              SizedBox(
                width: 50.w,
                height: 50.h,
                child: GestureDetector(
                  onTap: () {
                    goTo(page: FavouritePage());
                  },
                  child: Container(
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.all(8),
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(30).r,
                      border: Border.all(
                        style: BorderStyle.solid,
                        color: Color(0xffECECEC),
                      ),
                    ),

                    child: AppImage(
                      image: 'heart.svg',
                      width: 24.w,
                      height: 24.h,
                    ),
                  ),
                ),
              ),
            ],
          ),

          actions: [
            Text.rich(
              textAlign: TextAlign.left,
              TextSpan(
                children: [
                  TextSpan(
                    text: 'WAHEED HASSAN\n',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),

                  TextSpan(
                    text: 'MEN’S SUITS',

                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
            AppImage(image: 'splash.svg', width: 32.w, height: 32.h),
          ],
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 25.h),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Builder(
                  builder: (context) {
                    return AppInput(
                      filled: true,
                      fillColor: Color(0xffFFFFFF),
                      labelText: 'البحث عن منتج...',
                      preifixIcon: AppImage(image: 'search.svg'),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          showBottomSheet(
                            context: context,
                            builder: (context) => FilterSheetPage(),
                          );
                        },
                        child: AppImage(image: 'tabbar.svg'),
                      ),
                    );
                  },
                ),
              ),

              SizedBox(height: 26.h),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: CarouselSlider.builder(
                  itemCount: image.length,
                  carouselController: CarouselSliderController(),
                  itemBuilder: (context, index, realIndex) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: SizedBox(
                        width: double.infinity.w,
                        height: 220.h,

                        child: AppImage(
                          image: 'home.png',
                          width: double.infinity.w,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },

                  options: CarouselOptions(
                    height: 220.h,
                    viewportFraction: 1,

                    autoPlay: true,
                    enlargeCenterPage: false,

                    onPageChanged: (index, reason) {
                      setState(() {
                        countIndex = index;
                      });
                    },
                  ),
                ),
              ),

              SizedBox(height: 12.h),

              Padding(
                padding: const EdgeInsets.only(top: 1),

                child: AnimatedSmoothIndicator(
                  activeIndex: countIndex,
                  count: image.length,

                  effect: WormEffect(
                    dotWidth: 8.w,
                    dotHeight: 8.h,
                    dotColor: Color(0xffB5B5B5),
                    activeDotColor: Color(0xff000000),
                  ),
                ),
              ),

              SizedBox(height: 16.h),

              CustomRowTextHome(
                title: 'تسوق حسب التصنيف',
                subtitle: 'عرض الكل',
              ),

              SizedBox(height: 15.h),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: loading
                    ? Center(child: CircularProgressIndicator())
                    : GridView.builder(
                        itemCount: categories.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),

                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 8,
                          childAspectRatio: 3.2,
                        ),
                        itemBuilder: (context, index) {
                          final category = categories[index];
                          return CustomContainerHome(
                            image: category.iconUrl,
                            title: category.nameAr,
                          );
                        },
                      ),
              ),

              CustomRowTextHome(title: 'أحدث المنتجات', subtitle: 'عرض المزيد'),

              SizedBox(height: 16.h),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: loading
                    ? Center(child: CircularProgressIndicator())
                    : GridView.builder(
                        itemCount: productResponse?.data.length ?? 0,

                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,

                          mainAxisSpacing: 12,
                          crossAxisSpacing: 12,
                          childAspectRatio: 0.48,
                        ),
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          final product = productResponse!.data[index];
                          return ItemGridviewHome(
                            id: product.id,
                            image: product.mainImageUrl,
                            title: product.nameAr,
                            subTitle: product.descriptionAr,
                            price:
                                product.discountPrice?.toString() ??
                                product.price.toString(),
                            name: product.isRental ? 'شراء' : 'ايجار',
                            showName: true,
                          );
                        },
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
