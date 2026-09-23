import 'package:flutter/material.dart';
import 'package:waheed_app/core/components/app_image.dart';
import 'package:waheed_app/core/components/item_gridView_home.dart';
import 'package:waheed_app/model/product_ model.dart';
import 'package:waheed_app/services/dio_helper.dart';
import 'package:waheed_app/services/helper_methods.dart';
import 'package:waheed_app/views/pages/home/home.dart';

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
        backgroundColor: const Color(0xffEAEAEA),

        appBar: AppBar(
          backgroundColor: const Color(0xffFFFFFF),

          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: GestureDetector(
              onTap: () {
                goTo(page: HomePage());
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

          title: const Text(
            'المفضلة',
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
          child: Column(
            children: [
              const SizedBox(height: 32),

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

              const SizedBox(height: 135),
            ],
          ),
        ),
      ),
    );
  }
}
