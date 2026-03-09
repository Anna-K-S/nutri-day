import 'package:freezed_annotation/freezed_annotation.dart';

part 'nutriments.freezed.dart';
part 'nutriments.g.dart';

@freezed
abstract class Nutriments with _$Nutriments {
  const factory Nutriments({
    @JsonKey(
      name: 'energy-kcal_100g',
      fromJson: _doubleFromJson,
    )
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
  }) = _Nutriments;

  factory Nutriments.fromJson(Map<String, dynamic> json) =>
      _$NutrimentsFromJson(json);
}

double _doubleFromJson(Object? value) => (value as num?)?.toDouble() ?? 0;
