// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutriments.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Nutriments _$NutrimentsFromJson(Map<String, dynamic> json) => _Nutriments(
      energyKcal100g: json['energy-kcal_100g'] == null
          ? 0
          : _doubleFromJson(json['energy-kcal_100g']),
      proteins100g: json['proteins_100g'] == null
          ? 0
          : _doubleFromJson(json['proteins_100g']),
      fat100g: json['fat_100g'] == null ? 0 : _doubleFromJson(json['fat_100g']),
      carbohydrates100g: json['carbohydrates_100g'] == null
          ? 0
          : _doubleFromJson(json['carbohydrates_100g']),
    );

Map<String, dynamic> _$NutrimentsToJson(_Nutriments instance) =>
    <String, dynamic>{
      'energy-kcal_100g': instance.energyKcal100g,
      'proteins_100g': instance.proteins100g,
      'fat_100g': instance.fat100g,
      'carbohydrates_100g': instance.carbohydrates100g,
    };
