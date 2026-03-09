import 'package:freezed_annotation/freezed_annotation.dart';

part 'off_nutriments_dto.freezed.dart';
part 'off_nutriments_dto.g.dart';

@freezed
abstract class OffNutrimentsDto with _$OffNutrimentsDto {
  const factory OffNutrimentsDto({
    @JsonKey(name: 'energy-kcal_100g', fromJson: _doubleFromJson)
    @Default(0)
    double energyKcal100g,
    @JsonKey(name: 'proteins_100g', fromJson: _doubleFromJson)
    @Default(0)
    double proteins100g,
    @JsonKey(name: 'fat_100g', fromJson: _doubleFromJson)
    @Default(0)
    double fat100g,
    @JsonKey(name: 'carbohydrates_100g', fromJson: _doubleFromJson)
    @Default(0)
    double carbohydrates100g,
  }) = _OffNutrimentsDto;

  factory OffNutrimentsDto.fromJson(Map<String, dynamic> json) =>
      _$OffNutrimentsDtoFromJson(json);
}

double _doubleFromJson(Object? value) => (value as num?)?.toDouble() ?? 0;
