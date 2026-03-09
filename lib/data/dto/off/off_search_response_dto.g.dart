// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'off_search_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OffSearchResponseDto _$OffSearchResponseDtoFromJson(
        Map<String, dynamic> json) =>
    _OffSearchResponseDto(
      count: (json['count'] as num?)?.toInt() ?? 0,
      page: (json['page'] as num?)?.toInt() ?? 1,
      pageSize: (json['page_size'] as num?)?.toInt() ?? 24,
      products: (json['products'] as List<dynamic>?)
              ?.map((e) => OffProductDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$OffSearchResponseDtoToJson(
        _OffSearchResponseDto instance) =>
    <String, dynamic>{
      'count': instance.count,
      'page': instance.page,
      'page_size': instance.pageSize,
      'products': instance.products,
    };
