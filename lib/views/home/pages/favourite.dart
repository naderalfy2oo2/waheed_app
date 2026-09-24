import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed_app/core/components/app_image.dart';
import 'package:waheed_app/core/components/item_gridView_home.dart';
import 'package:waheed_app/model/product_ model.dart';
import 'package:waheed_app/services/dio_helper.dart';
import 'package:waheed_app/services/helper_methods.dart';
import 'package:waheed_app/views/home/pages/home.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({super.key});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  ProductsResponseModel? productResponse;

  bool loading = true;

  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<void> getData() async {
    final res = await DioHelper.getData(path: "api/Products");

    print(res.isSucess);
    print(res.msg);
    print(res.data);
    print(res.data.runtimeType);

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
          backgroundColor: Color(0xffFFFFFF),

          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: GestureDetector(
              onTap: () {
                goTo(page: HomePage());
              },
              child: Container(
                width: 48.w,
                height: 48.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(99).r,
                  border: Border.all(color: Color(0xffE5E7EB)),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x14000000),
                      blurRadius: 16.r,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: AppImage(
                  image: 'arrow-left.svg',
                  width: 24.w,
                  height: 24.h,
                ),
              ),
            ),
          ),

          title: Text(
            'المفضلة',
            style: TextStyle(
              color: Color(0xff000000),
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
              fontFamily: 'IBMPlexSansArabic',
            ),
          ),

          centerTitle: true,
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 32.h),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),

                child: loading
                    ? const Center(child: CircularProgressIndicator())
                    : GridView.builder(
                        itemCount: productResponse?.data.length ?? 0,

                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 12,
                              crossAxisSpacing: 12,
                              childAspectRatio: 0.50,
                            ),

                        physics: const NeverScrollableScrollPhysics(),

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

                            heartIcon: 'black_heart.svg',
                            showName: false,
                          );
                        },
                      ),
              ),

              SizedBox(height: 135.h),
            ],
          ),
        ),
      ),
    );
  }
}
