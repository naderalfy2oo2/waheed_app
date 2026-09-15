class ProductsResponseModel {
  final int pageIndex;
  final int pageSize;
  final int totalCount;
  final int totalPages;
  final bool hasPreviousPage;
  final bool hasNextPage;
  final List<ProductModel> data;

  ProductsResponseModel({
    required this.pageIndex,
    required this.pageSize,
    required this.totalCount,
    required this.totalPages,
    required this.hasPreviousPage,
    required this.hasNextPage,
    required this.data,
  });

  factory ProductsResponseModel.fromJson(Map<String, dynamic> json) {
    return ProductsResponseModel(
      pageIndex: json['pageIndex'] ?? 0,
      pageSize: json['pageSize'] ?? 0,
      totalCount: json['totalCount'] ?? 0,
      totalPages: json['totalPages'] ?? 0,
      hasPreviousPage: json['hasPreviousPage'] ?? false,
      hasNextPage: json['hasNextPage'] ?? false,

      data: json['data'] != null
          ? List<ProductModel>.from(
              json['data'].map((item) => ProductModel.fromJson(item)),
            )
          : [],
    );
  }
}

class ProductModel {
  final int id;
  final String nameAr;
  final String nameEn;
  final String descriptionAr;
  final String descriptionEn;
  final double price;
  final double? discountPrice;
  final double averageRating;
  final int reviewCount;
  final int stockQuantity;
  final bool isCustomizable;
  final bool isRental;
  final String categoryName;
  final String mainImageUrl;
  final List<ProductImageModel> images;
  final List<ProductColorModel> colors;

  ProductModel({
    required this.id,
    required this.nameAr,
    required this.nameEn,
    required this.descriptionAr,
    required this.descriptionEn,
    required this.price,
    this.discountPrice,
    required this.averageRating,
    required this.reviewCount,
    required this.stockQuantity,
    required this.isCustomizable,
    required this.isRental,
    required this.categoryName,
    required this.mainImageUrl,
    required this.images,
    required this.colors,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'] ?? 0,
      nameAr: json['nameAr'] ?? '',
      nameEn: json['nameEn'] ?? '',
      descriptionAr: json['descriptionAr'] ?? '',
      descriptionEn: json['descriptionEn'] ?? '',

      price: (json['price'] ?? 0).toDouble(),

      discountPrice: json['discountPrice'] != null
          ? (json['discountPrice'] as num).toDouble()
          : null,

      averageRating: (json['averageRating'] ?? 0).toDouble(),

      reviewCount: json['reviewCount'] ?? 0,
      stockQuantity: json['stockQuantity'] ?? 0,

      isCustomizable: json['isCustomizable'] ?? false,
      isRental: json['isRental'] ?? false,

      categoryName: json['categoryName'] ?? '',
      mainImageUrl: json['mainImageUrl'] ?? '',

      images: json['images'] != null
          ? List<ProductImageModel>.from(
              json['images'].map((item) => ProductImageModel.fromJson(item)),
            )
          : [],

      colors: json['colors'] != null
          ? List<ProductColorModel>.from(
              json['colors'].map((item) => ProductColorModel.fromJson(item)),
            )
          : [],
    );
  }
}

class ProductImageModel {
  final int id;
  final String imageUrl;
  final bool isMain;

  ProductImageModel({
    required this.id,
    required this.imageUrl,
    required this.isMain,
  });

  factory ProductImageModel.fromJson(Map<String, dynamic> json) {
    return ProductImageModel(
      id: json['id'] ?? 0,
      imageUrl: json['imageUrl'] ?? '',
      isMain: json['isMain'] ?? false,
    );
  }
}

class ProductColorModel {
  final int id;
  final String colorNameAr;
  final String colorNameEn;
  final String colorHex;

  ProductColorModel({
    required this.id,
    required this.colorNameAr,
    required this.colorNameEn,
    required this.colorHex,
  });

  factory ProductColorModel.fromJson(Map<String, dynamic> json) {
    return ProductColorModel(
      id: json['id'] ?? 0,
      colorNameAr: json['colorNameAr'] ?? '',
      colorNameEn: json['colorNameEn'] ?? '',
      colorHex: json['colorHex'] ?? '',
    );
  }
}
