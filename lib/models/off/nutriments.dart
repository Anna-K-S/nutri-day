import 'package:freezed_annotation/freezed_annotation.dart';

part 'nutriments.freezed.dart';
part 'nutriments.g.dart';

@freezed
abstract class Nutriments with _$Nutriments {
  const factory Nutriments({
    required double energyKcal100g,
    required double proteins100g,
    required double fat100g,
    required double carbohydrates100g,
  }) = _Nutriments;

  factory Nutriments.fromJson(Map<String, dynamic> json) =>
      _$NutrimentsFromJson(json);
}
