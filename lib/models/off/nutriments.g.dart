// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutriments.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Nutriments _$NutrimentsFromJson(Map<String, dynamic> json) => _Nutriments(
      energyKcal100g: (json['energyKcal100g'] as num).toDouble(),
      proteins100g: (json['proteins100g'] as num).toDouble(),
      fat100g: (json['fat100g'] as num).toDouble(),
      carbohydrates100g: (json['carbohydrates100g'] as num).toDouble(),
    );

Map<String, dynamic> _$NutrimentsToJson(_Nutriments instance) =>
    <String, dynamic>{
      'energyKcal100g': instance.energyKcal100g,
      'proteins100g': instance.proteins100g,
      'fat100g': instance.fat100g,
      'carbohydrates100g': instance.carbohydrates100g,
    };
