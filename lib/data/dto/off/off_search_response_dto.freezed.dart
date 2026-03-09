// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'off_search_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OffSearchResponseDto {
  int get count;
  int get page;
  @JsonKey(name: 'page_size')
  int get pageSize;
  List<OffProductDto> get products;

  /// Create a copy of OffSearchResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OffSearchResponseDtoCopyWith<OffSearchResponseDto> get copyWith =>
      _$OffSearchResponseDtoCopyWithImpl<OffSearchResponseDto>(
          this as OffSearchResponseDto, _$identity);

  /// Serializes this OffSearchResponseDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OffSearchResponseDto &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            const DeepCollectionEquality().equals(other.products, products));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, count, page, pageSize,
      const DeepCollectionEquality().hash(products));

  @override
  String toString() {
    return 'OffSearchResponseDto(count: $count, page: $page, pageSize: $pageSize, products: $products)';
  }
}

/// @nodoc
abstract mixin class $OffSearchResponseDtoCopyWith<$Res> {
  factory $OffSearchResponseDtoCopyWith(OffSearchResponseDto value,
          $Res Function(OffSearchResponseDto) _then) =
      _$OffSearchResponseDtoCopyWithImpl;
  @useResult
  $Res call(
      {int count,
      int page,
      @JsonKey(name: 'page_size') int pageSize,
      List<OffProductDto> products});
}

/// @nodoc
class _$OffSearchResponseDtoCopyWithImpl<$Res>
    implements $OffSearchResponseDtoCopyWith<$Res> {
  _$OffSearchResponseDtoCopyWithImpl(this._self, this._then);

  final OffSearchResponseDto _self;
  final $Res Function(OffSearchResponseDto) _then;

  /// Create a copy of OffSearchResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? page = null,
    Object? pageSize = null,
    Object? products = null,
  }) {
    return _then(_self.copyWith(
      count: null == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _self.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _self.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<OffProductDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _OffSearchResponseDto implements OffSearchResponseDto {
  const _OffSearchResponseDto(
      {this.count = 0,
      this.page = 1,
      @JsonKey(name: 'page_size') this.pageSize = 24,
      final List<OffProductDto> products = const []})
      : _products = products;
  factory _OffSearchResponseDto.fromJson(Map<String, dynamic> json) =>
      _$OffSearchResponseDtoFromJson(json);

  @override
  @JsonKey()
  final int count;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey(name: 'page_size')
  final int pageSize;
  final List<OffProductDto> _products;
  @override
  @JsonKey()
  List<OffProductDto> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  /// Create a copy of OffSearchResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OffSearchResponseDtoCopyWith<_OffSearchResponseDto> get copyWith =>
      __$OffSearchResponseDtoCopyWithImpl<_OffSearchResponseDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OffSearchResponseDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OffSearchResponseDto &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, count, page, pageSize,
      const DeepCollectionEquality().hash(_products));

  @override
  String toString() {
    return 'OffSearchResponseDto(count: $count, page: $page, pageSize: $pageSize, products: $products)';
  }
}

/// @nodoc
abstract mixin class _$OffSearchResponseDtoCopyWith<$Res>
    implements $OffSearchResponseDtoCopyWith<$Res> {
  factory _$OffSearchResponseDtoCopyWith(_OffSearchResponseDto value,
          $Res Function(_OffSearchResponseDto) _then) =
      __$OffSearchResponseDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int count,
      int page,
      @JsonKey(name: 'page_size') int pageSize,
      List<OffProductDto> products});
}

/// @nodoc
class __$OffSearchResponseDtoCopyWithImpl<$Res>
    implements _$OffSearchResponseDtoCopyWith<$Res> {
  __$OffSearchResponseDtoCopyWithImpl(this._self, this._then);

  final _OffSearchResponseDto _self;
  final $Res Function(_OffSearchResponseDto) _then;

  /// Create a copy of OffSearchResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? count = null,
    Object? page = null,
    Object? pageSize = null,
    Object? products = null,
  }) {
    return _then(_OffSearchResponseDto(
      count: null == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _self.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _self._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<OffProductDto>,
    ));
  }
}

// dart format on
