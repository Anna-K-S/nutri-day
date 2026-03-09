// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'off_product_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OffProductDto {
  @JsonKey(fromJson: _codeFromJson)
  String get code;
  @JsonKey(name: 'product_name')
  String get productName;
  @JsonKey(name: 'brands', fromJson: _primaryBrandFromJson)
  String? get brand;
  @JsonKey(name: 'image_front_small_url')
  String? get imageFrontSmallUrl;
  @JsonKey(name: 'image_front_url')
  String? get imageFrontUrl;
  OffNutrimentsDto? get nutriments;

  /// Create a copy of OffProductDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OffProductDtoCopyWith<OffProductDto> get copyWith =>
      _$OffProductDtoCopyWithImpl<OffProductDto>(
          this as OffProductDto, _$identity);

  /// Serializes this OffProductDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OffProductDto &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.imageFrontSmallUrl, imageFrontSmallUrl) ||
                other.imageFrontSmallUrl == imageFrontSmallUrl) &&
            (identical(other.imageFrontUrl, imageFrontUrl) ||
                other.imageFrontUrl == imageFrontUrl) &&
            (identical(other.nutriments, nutriments) ||
                other.nutriments == nutriments));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, productName, brand,
      imageFrontSmallUrl, imageFrontUrl, nutriments);

  @override
  String toString() {
    return 'OffProductDto(code: $code, productName: $productName, brand: $brand, imageFrontSmallUrl: $imageFrontSmallUrl, imageFrontUrl: $imageFrontUrl, nutriments: $nutriments)';
  }
}

/// @nodoc
abstract mixin class $OffProductDtoCopyWith<$Res> {
  factory $OffProductDtoCopyWith(
          OffProductDto value, $Res Function(OffProductDto) _then) =
      _$OffProductDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(fromJson: _codeFromJson) String code,
      @JsonKey(name: 'product_name') String productName,
      @JsonKey(name: 'brands', fromJson: _primaryBrandFromJson) String? brand,
      @JsonKey(name: 'image_front_small_url') String? imageFrontSmallUrl,
      @JsonKey(name: 'image_front_url') String? imageFrontUrl,
      OffNutrimentsDto? nutriments});

  $OffNutrimentsDtoCopyWith<$Res>? get nutriments;
}

/// @nodoc
class _$OffProductDtoCopyWithImpl<$Res>
    implements $OffProductDtoCopyWith<$Res> {
  _$OffProductDtoCopyWithImpl(this._self, this._then);

  final OffProductDto _self;
  final $Res Function(OffProductDto) _then;

  /// Create a copy of OffProductDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? productName = null,
    Object? brand = freezed,
    Object? imageFrontSmallUrl = freezed,
    Object? imageFrontUrl = freezed,
    Object? nutriments = freezed,
  }) {
    return _then(_self.copyWith(
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _self.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      brand: freezed == brand
          ? _self.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      imageFrontSmallUrl: freezed == imageFrontSmallUrl
          ? _self.imageFrontSmallUrl
          : imageFrontSmallUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      imageFrontUrl: freezed == imageFrontUrl
          ? _self.imageFrontUrl
          : imageFrontUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      nutriments: freezed == nutriments
          ? _self.nutriments
          : nutriments // ignore: cast_nullable_to_non_nullable
              as OffNutrimentsDto?,
    ));
  }

  /// Create a copy of OffProductDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OffNutrimentsDtoCopyWith<$Res>? get nutriments {
    if (_self.nutriments == null) {
      return null;
    }

    return $OffNutrimentsDtoCopyWith<$Res>(_self.nutriments!, (value) {
      return _then(_self.copyWith(nutriments: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _OffProductDto implements OffProductDto {
  const _OffProductDto(
      {@JsonKey(fromJson: _codeFromJson) this.code = '',
      @JsonKey(name: 'product_name') this.productName = '',
      @JsonKey(name: 'brands', fromJson: _primaryBrandFromJson) this.brand,
      @JsonKey(name: 'image_front_small_url') this.imageFrontSmallUrl,
      @JsonKey(name: 'image_front_url') this.imageFrontUrl,
      this.nutriments});
  factory _OffProductDto.fromJson(Map<String, dynamic> json) =>
      _$OffProductDtoFromJson(json);

  @override
  @JsonKey(fromJson: _codeFromJson)
  final String code;
  @override
  @JsonKey(name: 'product_name')
  final String productName;
  @override
  @JsonKey(name: 'brands', fromJson: _primaryBrandFromJson)
  final String? brand;
  @override
  @JsonKey(name: 'image_front_small_url')
  final String? imageFrontSmallUrl;
  @override
  @JsonKey(name: 'image_front_url')
  final String? imageFrontUrl;
  @override
  final OffNutrimentsDto? nutriments;

  /// Create a copy of OffProductDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OffProductDtoCopyWith<_OffProductDto> get copyWith =>
      __$OffProductDtoCopyWithImpl<_OffProductDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OffProductDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OffProductDto &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.imageFrontSmallUrl, imageFrontSmallUrl) ||
                other.imageFrontSmallUrl == imageFrontSmallUrl) &&
            (identical(other.imageFrontUrl, imageFrontUrl) ||
                other.imageFrontUrl == imageFrontUrl) &&
            (identical(other.nutriments, nutriments) ||
                other.nutriments == nutriments));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, productName, brand,
      imageFrontSmallUrl, imageFrontUrl, nutriments);

  @override
  String toString() {
    return 'OffProductDto(code: $code, productName: $productName, brand: $brand, imageFrontSmallUrl: $imageFrontSmallUrl, imageFrontUrl: $imageFrontUrl, nutriments: $nutriments)';
  }
}

/// @nodoc
abstract mixin class _$OffProductDtoCopyWith<$Res>
    implements $OffProductDtoCopyWith<$Res> {
  factory _$OffProductDtoCopyWith(
          _OffProductDto value, $Res Function(_OffProductDto) _then) =
      __$OffProductDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: _codeFromJson) String code,
      @JsonKey(name: 'product_name') String productName,
      @JsonKey(name: 'brands', fromJson: _primaryBrandFromJson) String? brand,
      @JsonKey(name: 'image_front_small_url') String? imageFrontSmallUrl,
      @JsonKey(name: 'image_front_url') String? imageFrontUrl,
      OffNutrimentsDto? nutriments});

  @override
  $OffNutrimentsDtoCopyWith<$Res>? get nutriments;
}

/// @nodoc
class __$OffProductDtoCopyWithImpl<$Res>
    implements _$OffProductDtoCopyWith<$Res> {
  __$OffProductDtoCopyWithImpl(this._self, this._then);

  final _OffProductDto _self;
  final $Res Function(_OffProductDto) _then;

  /// Create a copy of OffProductDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? code = null,
    Object? productName = null,
    Object? brand = freezed,
    Object? imageFrontSmallUrl = freezed,
    Object? imageFrontUrl = freezed,
    Object? nutriments = freezed,
  }) {
    return _then(_OffProductDto(
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _self.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      brand: freezed == brand
          ? _self.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      imageFrontSmallUrl: freezed == imageFrontSmallUrl
          ? _self.imageFrontSmallUrl
          : imageFrontSmallUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      imageFrontUrl: freezed == imageFrontUrl
          ? _self.imageFrontUrl
          : imageFrontUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      nutriments: freezed == nutriments
          ? _self.nutriments
          : nutriments // ignore: cast_nullable_to_non_nullable
              as OffNutrimentsDto?,
    ));
  }

  /// Create a copy of OffProductDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OffNutrimentsDtoCopyWith<$Res>? get nutriments {
    if (_self.nutriments == null) {
      return null;
    }

    return $OffNutrimentsDtoCopyWith<$Res>(_self.nutriments!, (value) {
      return _then(_self.copyWith(nutriments: value));
    });
  }
}

// dart format on
