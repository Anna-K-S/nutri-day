import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nutrition_diary/data/dto/off/off_nutriments_dto.dart';

part 'off_product_dto.freezed.dart';
part 'off_product_dto.g.dart';

@freezed
abstract class OffProductDto with _$OffProductDto {
  const factory OffProductDto({
    @JsonKey(fromJson: _codeFromJson) @Default('') String code,
    @JsonKey(name: 'product_name') @Default('') String productName,
    @JsonKey(name: 'brands', fromJson: _primaryBrandFromJson) String? brand,
    @JsonKey(name: 'image_front_small_url') String? imageFrontSmallUrl,
    @JsonKey(name: 'image_front_url') String? imageFrontUrl,
    OffNutrimentsDto? nutriments,
  }) = _OffProductDto;

  factory OffProductDto.fromJson(Map<String, dynamic> json) =>
      _$OffProductDtoFromJson(json);
}

String _codeFromJson(Object? value) => value?.toString() ?? '';

String? _primaryBrandFromJson(Object? value) {
  final raw = value?.toString().trim() ?? '';
  if (raw.isEmpty) return null;
  final first = raw.split(',').first.trim();
  return first.isEmpty ? null : first;
}
