class ProductModelId {
  final int id;
  final String nameAr;
  final String nameEn;
  final String descriptionAr;
  final String descriptionEn;
  final double price;
  final double discountPrice;
  final double averageRating;
  final int reviewCount;
  final int stockQuantity;
  final bool isCustomizable;
  final bool isRental;
  final String categoryName;
  final String mainImageUrl;
  final List<ProductImageModel> images;
  final List<dynamic> colors;

  ProductModelId({
    required this.id,
    required this.nameAr,
    required this.nameEn,
    required this.descriptionAr,
    required this.descriptionEn,
    required this.price,
    required this.discountPrice,
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

  factory ProductModelId.fromJson(Map<String, dynamic> json) {
    return ProductModelId(
      id: json['id'] ?? 0,
      nameAr: json['nameAr'] ?? '',
      nameEn: json['nameEn'] ?? '',
      descriptionAr: json['descriptionAr'] ?? '',
      descriptionEn: json['descriptionEn'] ?? '',
      price: (json['price'] ?? 0).toDouble(),
      discountPrice: (json['discountPrice'] ?? 0).toDouble(),
      averageRating: (json['averageRating'] ?? 0).toDouble(),
      reviewCount: json['reviewCount'] ?? 0,
      stockQuantity: json['stockQuantity'] ?? 0,
      isCustomizable: json['isCustomizable'] ?? false,
      isRental: json['isRental'] ?? false,
      categoryName: json['categoryName'] ?? '',
      mainImageUrl: json['mainImageUrl'] ?? '',
      images: (json['images'] as List? ?? [])
          .map(
            (image) =>
                ProductImageModel.fromJson(Map<String, dynamic>.from(image)),
          )
          .toList(),
      colors: json['colors'] ?? [],
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
