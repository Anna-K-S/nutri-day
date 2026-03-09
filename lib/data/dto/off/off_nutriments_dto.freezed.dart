// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'off_nutriments_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OffNutrimentsDto {
  @JsonKey(name: 'energy-kcal_100g', fromJson: _doubleFromJson)
  double get energyKcal100g;
  @JsonKey(name: 'proteins_100g', fromJson: _doubleFromJson)
  double get proteins100g;
  @JsonKey(name: 'fat_100g', fromJson: _doubleFromJson)
  double get fat100g;
  @JsonKey(name: 'carbohydrates_100g', fromJson: _doubleFromJson)
  double get carbohydrates100g;

  /// Create a copy of OffNutrimentsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OffNutrimentsDtoCopyWith<OffNutrimentsDto> get copyWith =>
      _$OffNutrimentsDtoCopyWithImpl<OffNutrimentsDto>(
          this as OffNutrimentsDto, _$identity);

  /// Serializes this OffNutrimentsDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OffNutrimentsDto &&
            (identical(other.energyKcal100g, energyKcal100g) ||
                other.energyKcal100g == energyKcal100g) &&
            (identical(other.proteins100g, proteins100g) ||
                other.proteins100g == proteins100g) &&
            (identical(other.fat100g, fat100g) || other.fat100g == fat100g) &&
            (identical(other.carbohydrates100g, carbohydrates100g) ||
                other.carbohydrates100g == carbohydrates100g));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, energyKcal100g, proteins100g, fat100g, carbohydrates100g);

  @override
  String toString() {
    return 'OffNutrimentsDto(energyKcal100g: $energyKcal100g, proteins100g: $proteins100g, fat100g: $fat100g, carbohydrates100g: $carbohydrates100g)';
  }
}

/// @nodoc
abstract mixin class $OffNutrimentsDtoCopyWith<$Res> {
  factory $OffNutrimentsDtoCopyWith(
          OffNutrimentsDto value, $Res Function(OffNutrimentsDto) _then) =
      _$OffNutrimentsDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'energy-kcal_100g', fromJson: _doubleFromJson)
      double energyKcal100g,
      @JsonKey(name: 'proteins_100g', fromJson: _doubleFromJson)
      double proteins100g,
      @JsonKey(name: 'fat_100g', fromJson: _doubleFromJson) double fat100g,
      @JsonKey(name: 'carbohydrates_100g', fromJson: _doubleFromJson)
      double carbohydrates100g});
}

/// @nodoc
class _$OffNutrimentsDtoCopyWithImpl<$Res>
    implements $OffNutrimentsDtoCopyWith<$Res> {
  _$OffNutrimentsDtoCopyWithImpl(this._self, this._then);

  final OffNutrimentsDto _self;
  final $Res Function(OffNutrimentsDto) _then;

  /// Create a copy of OffNutrimentsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? energyKcal100g = null,
    Object? proteins100g = null,
    Object? fat100g = null,
    Object? carbohydrates100g = null,
  }) {
    return _then(_self.copyWith(
      energyKcal100g: null == energyKcal100g
          ? _self.energyKcal100g
          : energyKcal100g // ignore: cast_nullable_to_non_nullable
              as double,
      proteins100g: null == proteins100g
          ? _self.proteins100g
          : proteins100g // ignore: cast_nullable_to_non_nullable
              as double,
      fat100g: null == fat100g
          ? _self.fat100g
          : fat100g // ignore: cast_nullable_to_non_nullable
              as double,
      carbohydrates100g: null == carbohydrates100g
          ? _self.carbohydrates100g
          : carbohydrates100g // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _OffNutrimentsDto implements OffNutrimentsDto {
  const _OffNutrimentsDto(
      {@JsonKey(name: 'energy-kcal_100g', fromJson: _doubleFromJson)
      this.energyKcal100g = 0,
      @JsonKey(name: 'proteins_100g', fromJson: _doubleFromJson)
      this.proteins100g = 0,
      @JsonKey(name: 'fat_100g', fromJson: _doubleFromJson) this.fat100g = 0,
      @JsonKey(name: 'carbohydrates_100g', fromJson: _doubleFromJson)
      this.carbohydrates100g = 0});
  factory _OffNutrimentsDto.fromJson(Map<String, dynamic> json) =>
      _$OffNutrimentsDtoFromJson(json);

  @override
  @JsonKey(name: 'energy-kcal_100g', fromJson: _doubleFromJson)
  final double energyKcal100g;
  @override
  @JsonKey(name: 'proteins_100g', fromJson: _doubleFromJson)
  final double proteins100g;
  @override
  @JsonKey(name: 'fat_100g', fromJson: _doubleFromJson)
  final double fat100g;
  @override
  @JsonKey(name: 'carbohydrates_100g', fromJson: _doubleFromJson)
  final double carbohydrates100g;

  /// Create a copy of OffNutrimentsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OffNutrimentsDtoCopyWith<_OffNutrimentsDto> get copyWith =>
      __$OffNutrimentsDtoCopyWithImpl<_OffNutrimentsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OffNutrimentsDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OffNutrimentsDto &&
            (identical(other.energyKcal100g, energyKcal100g) ||
                other.energyKcal100g == energyKcal100g) &&
            (identical(other.proteins100g, proteins100g) ||
                other.proteins100g == proteins100g) &&
            (identical(other.fat100g, fat100g) || other.fat100g == fat100g) &&
            (identical(other.carbohydrates100g, carbohydrates100g) ||
                other.carbohydrates100g == carbohydrates100g));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, energyKcal100g, proteins100g, fat100g, carbohydrates100g);

  @override
  String toString() {
    return 'OffNutrimentsDto(energyKcal100g: $energyKcal100g, proteins100g: $proteins100g, fat100g: $fat100g, carbohydrates100g: $carbohydrates100g)';
  }
}

/// @nodoc
abstract mixin class _$OffNutrimentsDtoCopyWith<$Res>
    implements $OffNutrimentsDtoCopyWith<$Res> {
  factory _$OffNutrimentsDtoCopyWith(
          _OffNutrimentsDto value, $Res Function(_OffNutrimentsDto) _then) =
      __$OffNutrimentsDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'energy-kcal_100g', fromJson: _doubleFromJson)
      double energyKcal100g,
      @JsonKey(name: 'proteins_100g', fromJson: _doubleFromJson)
      double proteins100g,
      @JsonKey(name: 'fat_100g', fromJson: _doubleFromJson) double fat100g,
      @JsonKey(name: 'carbohydrates_100g', fromJson: _doubleFromJson)
      double carbohydrates100g});
}

/// @nodoc
class __$OffNutrimentsDtoCopyWithImpl<$Res>
    implements _$OffNutrimentsDtoCopyWith<$Res> {
  __$OffNutrimentsDtoCopyWithImpl(this._self, this._then);

  final _OffNutrimentsDto _self;
  final $Res Function(_OffNutrimentsDto) _then;

  /// Create a copy of OffNutrimentsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? energyKcal100g = null,
    Object? proteins100g = null,
    Object? fat100g = null,
    Object? carbohydrates100g = null,
  }) {
    return _then(_OffNutrimentsDto(
      energyKcal100g: null == energyKcal100g
          ? _self.energyKcal100g
          : energyKcal100g // ignore: cast_nullable_to_non_nullable
              as double,
      proteins100g: null == proteins100g
          ? _self.proteins100g
          : proteins100g // ignore: cast_nullable_to_non_nullable
              as double,
      fat100g: null == fat100g
          ? _self.fat100g
          : fat100g // ignore: cast_nullable_to_non_nullable
              as double,
      carbohydrates100g: null == carbohydrates100g
          ? _self.carbohydrates100g
          : carbohydrates100g // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

// dart format on
