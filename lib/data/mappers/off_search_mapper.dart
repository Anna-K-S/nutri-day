import 'package:nutrition_diary/data/dto/off/off_nutriments_dto.dart';
import 'package:nutrition_diary/data/dto/off/off_product_dto.dart';
import 'package:nutrition_diary/data/dto/off/off_search_response_dto.dart';
import 'package:nutrition_diary/data/models/nutriments.dart';
import 'package:nutrition_diary/data/models/product.dart';
import 'package:nutrition_diary/data/models/search_response.dart';

extension OffSearchResponseMapper on OffSearchResponseDto {
  SearchResponse toModel() {
    return SearchResponse(
      count: count,
      page: page,
      pageSize: pageSize,
      products: products.map((product) => product.toModel()).toList(),
    );
  }
}

extension OffProductMapper on OffProductDto {
  Product toModel() {
    return Product(
      code: code,
      productName: productName,
      brand: brand,
      imageUrl: imageFrontSmallUrl ?? imageFrontUrl,
      nutriments: nutriments?.toModel(),
    );
  }
}

extension OffNutrimentsMapper on OffNutrimentsDto {
  Nutriments toModel() {
    return Nutriments(
      energyKcal100g: energyKcal100g,
      proteins100g: proteins100g,
      fat100g: fat100g,
      carbohydrates100g: carbohydrates100g,
    );
  }
}
