// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Product _$ProductFromJson(Map<String, dynamic> json) => _Product(
      productName: json['product_name'] as String? ?? '',
      brands: _primaryBrandFromJson(json['brands']),
      imageUrl: json['image_url'] as String?,
      imageFrontSmallUrl: json['image_front_small_url'] as String?,
      imageFrontUrl: json['image_front_url'] as String?,
      code: json['code'] == null ? '-' : _codeFromJson(json['code']),
      nutriments: json['nutriments'] == null
          ? null
          : Nutriments.fromJson(json['nutriments'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductToJson(_Product instance) => <String, dynamic>{
      'product_name': instance.productName,
      'brands': instance.brands,
      'image_url': instance.imageUrl,
      'image_front_small_url': instance.imageFrontSmallUrl,
      'image_front_url': instance.imageFrontUrl,
      'code': instance.code,
      'nutriments': instance.nutriments,
    };
