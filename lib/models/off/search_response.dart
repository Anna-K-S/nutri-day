import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nutrition_diary/models/off/product.dart';

part 'search_response.freezed.dart';
part 'search_response.g.dart';

@freezed
abstract class SearchResponse with _$SearchResponse {
  const factory SearchResponse({
    @Default(0) int count,
    @Default(1) int page,
    @JsonKey(name: 'page_size') @Default(24) int pageSize,
    @Default([]) List<Product> products,
  }) = _SearchResponse;

  factory SearchResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseFromJson(json);
}
