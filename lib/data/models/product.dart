import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nutrition_diary/data/models/nutriments.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
abstract class Product with _$Product {
  const factory Product({
    @JsonKey(name: 'product_name') @Default('') String productName,
    @JsonKey(name: 'brands', fromJson: _primaryBrandFromJson) String? brands,
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'image_front_small_url') String? imageFrontSmallUrl,
    @JsonKey(name: 'image_front_url') String? imageFrontUrl,
    @JsonKey(fromJson: _codeFromJson) @Default('-') String code,
    Nutriments? nutriments,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

String _codeFromJson(Object? value) {
  final code = value?.toString().trim() ?? '';
  return code.isEmpty ? '-' : code;
}

String? _primaryBrandFromJson(Object? value) {
  final raw = value?.toString().trim() ?? '';
  if (raw.isEmpty) return null;
  final first = raw.split(',').first.trim();
  return first.isEmpty ? null : first;
}
