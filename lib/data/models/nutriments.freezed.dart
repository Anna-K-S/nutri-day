// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nutriments.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Nutriments {
  @JsonKey(name: 'energy-kcal_100g', fromJson: _doubleFromJson)
  double get energyKcal100g;
  @JsonKey(name: 'proteins_100g', fromJson: _doubleFromJson)
  double get proteins100g;
  @JsonKey(name: 'fat_100g', fromJson: _doubleFromJson)
  double get fat100g;
  @JsonKey(name: 'carbohydrates_100g', fromJson: _doubleFromJson)
  double get carbohydrates100g;

  /// Create a copy of Nutriments
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NutrimentsCopyWith<Nutriments> get copyWith =>
      _$NutrimentsCopyWithImpl<Nutriments>(this as Nutriments, _$identity);

  /// Serializes this Nutriments to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Nutriments &&
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
    return 'Nutriments(energyKcal100g: $energyKcal100g, proteins100g: $proteins100g, fat100g: $fat100g, carbohydrates100g: $carbohydrates100g)';
  }
}

/// @nodoc
abstract mixin class $NutrimentsCopyWith<$Res> {
  factory $NutrimentsCopyWith(
          Nutriments value, $Res Function(Nutriments) _then) =
      _$NutrimentsCopyWithImpl;
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
class _$NutrimentsCopyWithImpl<$Res> implements $NutrimentsCopyWith<$Res> {
  _$NutrimentsCopyWithImpl(this._self, this._then);

  final Nutriments _self;
  final $Res Function(Nutriments) _then;

  /// Create a copy of Nutriments
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
class _Nutriments implements Nutriments {
  const _Nutriments(
      {@JsonKey(name: 'energy-kcal_100g', fromJson: _doubleFromJson)
      this.energyKcal100g = 0,
      @JsonKey(name: 'proteins_100g', fromJson: _doubleFromJson)
      this.proteins100g = 0,
      @JsonKey(name: 'fat_100g', fromJson: _doubleFromJson) this.fat100g = 0,
      @JsonKey(name: 'carbohydrates_100g', fromJson: _doubleFromJson)
      this.carbohydrates100g = 0});
  factory _Nutriments.fromJson(Map<String, dynamic> json) =>
      _$NutrimentsFromJson(json);

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

  /// Create a copy of Nutriments
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NutrimentsCopyWith<_Nutriments> get copyWith =>
      __$NutrimentsCopyWithImpl<_Nutriments>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NutrimentsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Nutriments &&
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
    return 'Nutriments(energyKcal100g: $energyKcal100g, proteins100g: $proteins100g, fat100g: $fat100g, carbohydrates100g: $carbohydrates100g)';
  }
}

/// @nodoc
abstract mixin class _$NutrimentsCopyWith<$Res>
    implements $NutrimentsCopyWith<$Res> {
  factory _$NutrimentsCopyWith(
          _Nutriments value, $Res Function(_Nutriments) _then) =
      __$NutrimentsCopyWithImpl;
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
class __$NutrimentsCopyWithImpl<$Res> implements _$NutrimentsCopyWith<$Res> {
  __$NutrimentsCopyWithImpl(this._self, this._then);

  final _Nutriments _self;
  final $Res Function(_Nutriments) _then;

  /// Create a copy of Nutriments
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? energyKcal100g = null,
    Object? proteins100g = null,
    Object? fat100g = null,
    Object? carbohydrates100g = null,
  }) {
    return _then(_Nutriments(
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
