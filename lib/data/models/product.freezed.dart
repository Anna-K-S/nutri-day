// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Product {
  @JsonKey(name: 'product_name')
  String get productName;
  @JsonKey(name: 'brands', fromJson: _primaryBrandFromJson)
  String? get brands;
  @JsonKey(name: 'image_url')
  String? get imageUrl;
  @JsonKey(name: 'image_front_small_url')
  String? get imageFrontSmallUrl;
  @JsonKey(name: 'image_front_url')
  String? get imageFrontUrl;
  @JsonKey(fromJson: _codeFromJson)
  String get code;
  Nutriments? get nutriments;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProductCopyWith<Product> get copyWith =>
      _$ProductCopyWithImpl<Product>(this as Product, _$identity);

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Product &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.brands, brands) || other.brands == brands) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.imageFrontSmallUrl, imageFrontSmallUrl) ||
                other.imageFrontSmallUrl == imageFrontSmallUrl) &&
            (identical(other.imageFrontUrl, imageFrontUrl) ||
                other.imageFrontUrl == imageFrontUrl) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.nutriments, nutriments) ||
                other.nutriments == nutriments));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, productName, brands, imageUrl,
      imageFrontSmallUrl, imageFrontUrl, code, nutriments);

  @override
  String toString() {
    return 'Product(productName: $productName, brands: $brands, imageUrl: $imageUrl, imageFrontSmallUrl: $imageFrontSmallUrl, imageFrontUrl: $imageFrontUrl, code: $code, nutriments: $nutriments)';
  }
}

/// @nodoc
abstract mixin class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) _then) =
      _$ProductCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'product_name') String productName,
      @JsonKey(name: 'brands', fromJson: _primaryBrandFromJson) String? brands,
      @JsonKey(name: 'image_url') String? imageUrl,
      @JsonKey(name: 'image_front_small_url') String? imageFrontSmallUrl,
      @JsonKey(name: 'image_front_url') String? imageFrontUrl,
      @JsonKey(fromJson: _codeFromJson) String code,
      Nutriments? nutriments});

  $NutrimentsCopyWith<$Res>? get nutriments;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res> implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._self, this._then);

  final Product _self;
  final $Res Function(Product) _then;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productName = null,
    Object? brands = freezed,
    Object? imageUrl = freezed,
    Object? imageFrontSmallUrl = freezed,
    Object? imageFrontUrl = freezed,
    Object? code = null,
    Object? nutriments = freezed,
  }) {
    return _then(_self.copyWith(
      productName: null == productName
          ? _self.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      brands: freezed == brands
          ? _self.brands
          : brands // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      imageFrontSmallUrl: freezed == imageFrontSmallUrl
          ? _self.imageFrontSmallUrl
          : imageFrontSmallUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      imageFrontUrl: freezed == imageFrontUrl
          ? _self.imageFrontUrl
          : imageFrontUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      nutriments: freezed == nutriments
          ? _self.nutriments
          : nutriments // ignore: cast_nullable_to_non_nullable
              as Nutriments?,
    ));
  }

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NutrimentsCopyWith<$Res>? get nutriments {
    if (_self.nutriments == null) {
      return null;
    }

    return $NutrimentsCopyWith<$Res>(_self.nutriments!, (value) {
      return _then(_self.copyWith(nutriments: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _Product implements Product {
  const _Product(
      {@JsonKey(name: 'product_name') this.productName = '',
      @JsonKey(name: 'brands', fromJson: _primaryBrandFromJson) this.brands,
      @JsonKey(name: 'image_url') this.imageUrl,
      @JsonKey(name: 'image_front_small_url') this.imageFrontSmallUrl,
      @JsonKey(name: 'image_front_url') this.imageFrontUrl,
      @JsonKey(fromJson: _codeFromJson) this.code = '-',
      this.nutriments});
  factory _Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  @override
  @JsonKey(name: 'product_name')
  final String productName;
  @override
  @JsonKey(name: 'brands', fromJson: _primaryBrandFromJson)
  final String? brands;
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  @override
  @JsonKey(name: 'image_front_small_url')
  final String? imageFrontSmallUrl;
  @override
  @JsonKey(name: 'image_front_url')
  final String? imageFrontUrl;
  @override
  @JsonKey(fromJson: _codeFromJson)
  final String code;
  @override
  final Nutriments? nutriments;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProductCopyWith<_Product> get copyWith =>
      __$ProductCopyWithImpl<_Product>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProductToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Product &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.brands, brands) || other.brands == brands) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.imageFrontSmallUrl, imageFrontSmallUrl) ||
                other.imageFrontSmallUrl == imageFrontSmallUrl) &&
            (identical(other.imageFrontUrl, imageFrontUrl) ||
                other.imageFrontUrl == imageFrontUrl) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.nutriments, nutriments) ||
                other.nutriments == nutriments));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, productName, brands, imageUrl,
      imageFrontSmallUrl, imageFrontUrl, code, nutriments);

  @override
  String toString() {
    return 'Product(productName: $productName, brands: $brands, imageUrl: $imageUrl, imageFrontSmallUrl: $imageFrontSmallUrl, imageFrontUrl: $imageFrontUrl, code: $code, nutriments: $nutriments)';
  }
}

/// @nodoc
abstract mixin class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) _then) =
      __$ProductCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'product_name') String productName,
      @JsonKey(name: 'brands', fromJson: _primaryBrandFromJson) String? brands,
      @JsonKey(name: 'image_url') String? imageUrl,
      @JsonKey(name: 'image_front_small_url') String? imageFrontSmallUrl,
      @JsonKey(name: 'image_front_url') String? imageFrontUrl,
      @JsonKey(fromJson: _codeFromJson) String code,
      Nutriments? nutriments});

  @override
  $NutrimentsCopyWith<$Res>? get nutriments;
}

/// @nodoc
class __$ProductCopyWithImpl<$Res> implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(this._self, this._then);

  final _Product _self;
  final $Res Function(_Product) _then;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? productName = null,
    Object? brands = freezed,
    Object? imageUrl = freezed,
    Object? imageFrontSmallUrl = freezed,
    Object? imageFrontUrl = freezed,
    Object? code = null,
    Object? nutriments = freezed,
  }) {
    return _then(_Product(
      productName: null == productName
          ? _self.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      brands: freezed == brands
          ? _self.brands
          : brands // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      imageFrontSmallUrl: freezed == imageFrontSmallUrl
          ? _self.imageFrontSmallUrl
          : imageFrontSmallUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      imageFrontUrl: freezed == imageFrontUrl
          ? _self.imageFrontUrl
          : imageFrontUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      nutriments: freezed == nutriments
          ? _self.nutriments
          : nutriments // ignore: cast_nullable_to_non_nullable
              as Nutriments?,
    ));
  }

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NutrimentsCopyWith<$Res>? get nutriments {
    if (_self.nutriments == null) {
      return null;
    }

    return $NutrimentsCopyWith<$Res>(_self.nutriments!, (value) {
      return _then(_self.copyWith(nutriments: value));
    });
  }
}

// dart format on
