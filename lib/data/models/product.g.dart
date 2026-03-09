// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Product _$ProductFromJson(Map<String, dynamic> json) => _Product(
      code: json['code'] as String,
      productName: json['productName'] as String,
      nutriments: json['nutriments'] == null
          ? null
          : Nutriments.fromJson(json['nutriments'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductToJson(_Product instance) => <String, dynamic>{
      'code': instance.code,
      'productName': instance.productName,
      'nutriments': instance.nutriments,
    };
