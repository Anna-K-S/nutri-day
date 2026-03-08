import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nutrition_diary/models/off/nutriments.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
abstract class Product with _$Product {
  const factory Product({
    required String code,
    required String productName,
    Nutriments? nutriments,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
