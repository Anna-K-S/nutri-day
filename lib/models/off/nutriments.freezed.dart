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
  double get energyKcal100g;
  double get proteins100g;
  double get fat100g;
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
      {double energyKcal100g,
      double proteins100g,
      double fat100g,
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

/// Adds pattern-matching-related methods to [Nutriments].
extension NutrimentsPatterns on Nutriments {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Nutriments value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Nutriments() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Nutriments value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Nutriments():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Nutriments value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Nutriments() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(double energyKcal100g, double proteins100g, double fat100g,
            double carbohydrates100g)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Nutriments() when $default != null:
        return $default(_that.energyKcal100g, _that.proteins100g, _that.fat100g,
            _that.carbohydrates100g);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(double energyKcal100g, double proteins100g, double fat100g,
            double carbohydrates100g)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Nutriments():
        return $default(_that.energyKcal100g, _that.proteins100g, _that.fat100g,
            _that.carbohydrates100g);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(double energyKcal100g, double proteins100g,
            double fat100g, double carbohydrates100g)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Nutriments() when $default != null:
        return $default(_that.energyKcal100g, _that.proteins100g, _that.fat100g,
            _that.carbohydrates100g);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Nutriments implements Nutriments {
  const _Nutriments(
      {required this.energyKcal100g,
      required this.proteins100g,
      required this.fat100g,
      required this.carbohydrates100g});
  factory _Nutriments.fromJson(Map<String, dynamic> json) =>
      _$NutrimentsFromJson(json);

  @override
  final double energyKcal100g;
  @override
  final double proteins100g;
  @override
  final double fat100g;
  @override
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
      {double energyKcal100g,
      double proteins100g,
      double fat100g,
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
