// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'off_product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OffProductDto _$OffProductDtoFromJson(Map<String, dynamic> json) =>
    _OffProductDto(
      code: json['code'] == null ? '' : _codeFromJson(json['code']),
      productName: json['product_name'] as String? ?? '',
      brand: _primaryBrandFromJson(json['brands']),
      imageFrontSmallUrl: json['image_front_small_url'] as String?,
      imageFrontUrl: json['image_front_url'] as String?,
      nutriments: json['nutriments'] == null
          ? null
          : OffNutrimentsDto.fromJson(
              json['nutriments'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OffProductDtoToJson(_OffProductDto instance) =>
    <String, dynamic>{
      'code': instance.code,
      'product_name': instance.productName,
      'brands': instance.brand,
      'image_front_small_url': instance.imageFrontSmallUrl,
      'image_front_url': instance.imageFrontUrl,
      'nutriments': instance.nutriments,
    };
