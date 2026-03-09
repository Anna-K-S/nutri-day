import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nutrition_diary/data/dto/off/off_product_dto.dart';

part 'off_search_response_dto.freezed.dart';
part 'off_search_response_dto.g.dart';

@freezed
abstract class OffSearchResponseDto with _$OffSearchResponseDto {
  const factory OffSearchResponseDto({
    @Default(0) int count,
    @Default(1) int page,
    @JsonKey(name: 'page_size') @Default(24) int pageSize,
    @Default([]) List<OffProductDto> products,
  }) = _OffSearchResponseDto;

  factory OffSearchResponseDto.fromJson(Map<String, dynamic> json) =>
      _$OffSearchResponseDtoFromJson(json);
}
