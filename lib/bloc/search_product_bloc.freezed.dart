// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchProductEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SearchProductEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SearchProductEvent()';
  }
}

/// @nodoc
class $SearchProductEventCopyWith<$Res> {
  $SearchProductEventCopyWith(
      SearchProductEvent _, $Res Function(SearchProductEvent) __);
}

/// @nodoc

class Started implements SearchProductEvent {
  const Started();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SearchProductEvent.started()';
  }
}

/// @nodoc

class Search implements SearchProductEvent {
  const Search(this.query);

  final String query;

  /// Create a copy of SearchProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchCopyWith<Search> get copyWith =>
      _$SearchCopyWithImpl<Search>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Search &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @override
  String toString() {
    return 'SearchProductEvent.search(query: $query)';
  }
}

/// @nodoc
abstract mixin class $SearchCopyWith<$Res>
    implements $SearchProductEventCopyWith<$Res> {
  factory $SearchCopyWith(Search value, $Res Function(Search) _then) =
      _$SearchCopyWithImpl;
  @useResult
  $Res call({String query});
}

/// @nodoc
class _$SearchCopyWithImpl<$Res> implements $SearchCopyWith<$Res> {
  _$SearchCopyWithImpl(this._self, this._then);

  final Search _self;
  final $Res Function(Search) _then;

  /// Create a copy of SearchProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? query = null,
  }) {
    return _then(Search(
      null == query
          ? _self.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class Clear implements SearchProductEvent {
  const Clear();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Clear);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SearchProductEvent.clear()';
  }
}

/// @nodoc

class SearchByBarcode implements SearchProductEvent {
  const SearchByBarcode(this.barcode);

  final String barcode;

  /// Create a copy of SearchProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchByBarcodeCopyWith<SearchByBarcode> get copyWith =>
      _$SearchByBarcodeCopyWithImpl<SearchByBarcode>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchByBarcode &&
            (identical(other.barcode, barcode) || other.barcode == barcode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, barcode);

  @override
  String toString() {
    return 'SearchProductEvent.searchByBarcode(barcode: $barcode)';
  }
}

/// @nodoc
abstract mixin class $SearchByBarcodeCopyWith<$Res>
    implements $SearchProductEventCopyWith<$Res> {
  factory $SearchByBarcodeCopyWith(
          SearchByBarcode value, $Res Function(SearchByBarcode) _then) =
      _$SearchByBarcodeCopyWithImpl;
  @useResult
  $Res call({String barcode});
}

/// @nodoc
class _$SearchByBarcodeCopyWithImpl<$Res>
    implements $SearchByBarcodeCopyWith<$Res> {
  _$SearchByBarcodeCopyWithImpl(this._self, this._then);

  final SearchByBarcode _self;
  final $Res Function(SearchByBarcode) _then;

  /// Create a copy of SearchProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? barcode = null,
  }) {
    return _then(SearchByBarcode(
      null == barcode
          ? _self.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$SearchProductState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SearchProductState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SearchProductState()';
  }
}

/// @nodoc
class $SearchProductStateCopyWith<$Res> {
  $SearchProductStateCopyWith(
      SearchProductState _, $Res Function(SearchProductState) __);
}

/// @nodoc

class SearchProductInitial implements SearchProductState {
  const SearchProductInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SearchProductInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SearchProductState.initial()';
  }
}

/// @nodoc

class SearchProductLoading implements SearchProductState {
  const SearchProductLoading(
      {required this.query, final List<Product> products = const []})
      : _products = products;

  final String query;
  final List<Product> _products;
  @JsonKey()
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  /// Create a copy of SearchProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchProductLoadingCopyWith<SearchProductLoading> get copyWith =>
      _$SearchProductLoadingCopyWithImpl<SearchProductLoading>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchProductLoading &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, query, const DeepCollectionEquality().hash(_products));

  @override
  String toString() {
    return 'SearchProductState.loading(query: $query, products: $products)';
  }
}

/// @nodoc
abstract mixin class $SearchProductLoadingCopyWith<$Res>
    implements $SearchProductStateCopyWith<$Res> {
  factory $SearchProductLoadingCopyWith(SearchProductLoading value,
          $Res Function(SearchProductLoading) _then) =
      _$SearchProductLoadingCopyWithImpl;
  @useResult
  $Res call({String query, List<Product> products});
}

/// @nodoc
class _$SearchProductLoadingCopyWithImpl<$Res>
    implements $SearchProductLoadingCopyWith<$Res> {
  _$SearchProductLoadingCopyWithImpl(this._self, this._then);

  final SearchProductLoading _self;
  final $Res Function(SearchProductLoading) _then;

  /// Create a copy of SearchProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? query = null,
    Object? products = null,
  }) {
    return _then(SearchProductLoading(
      query: null == query
          ? _self.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _self._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class SearchProductSuccess implements SearchProductState {
  const SearchProductSuccess(
      {required this.query, required final List<Product> products})
      : _products = products;

  final String query;
  final List<Product> _products;
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  /// Create a copy of SearchProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchProductSuccessCopyWith<SearchProductSuccess> get copyWith =>
      _$SearchProductSuccessCopyWithImpl<SearchProductSuccess>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchProductSuccess &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, query, const DeepCollectionEquality().hash(_products));

  @override
  String toString() {
    return 'SearchProductState.success(query: $query, products: $products)';
  }
}

/// @nodoc
abstract mixin class $SearchProductSuccessCopyWith<$Res>
    implements $SearchProductStateCopyWith<$Res> {
  factory $SearchProductSuccessCopyWith(SearchProductSuccess value,
          $Res Function(SearchProductSuccess) _then) =
      _$SearchProductSuccessCopyWithImpl;
  @useResult
  $Res call({String query, List<Product> products});
}

/// @nodoc
class _$SearchProductSuccessCopyWithImpl<$Res>
    implements $SearchProductSuccessCopyWith<$Res> {
  _$SearchProductSuccessCopyWithImpl(this._self, this._then);

  final SearchProductSuccess _self;
  final $Res Function(SearchProductSuccess) _then;

  /// Create a copy of SearchProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? query = null,
    Object? products = null,
  }) {
    return _then(SearchProductSuccess(
      query: null == query
          ? _self.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _self._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class SearchProductEmpty implements SearchProductState {
  const SearchProductEmpty({required this.query});

  final String query;

  /// Create a copy of SearchProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchProductEmptyCopyWith<SearchProductEmpty> get copyWith =>
      _$SearchProductEmptyCopyWithImpl<SearchProductEmpty>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchProductEmpty &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @override
  String toString() {
    return 'SearchProductState.empty(query: $query)';
  }
}

/// @nodoc
abstract mixin class $SearchProductEmptyCopyWith<$Res>
    implements $SearchProductStateCopyWith<$Res> {
  factory $SearchProductEmptyCopyWith(
          SearchProductEmpty value, $Res Function(SearchProductEmpty) _then) =
      _$SearchProductEmptyCopyWithImpl;
  @useResult
  $Res call({String query});
}

/// @nodoc
class _$SearchProductEmptyCopyWithImpl<$Res>
    implements $SearchProductEmptyCopyWith<$Res> {
  _$SearchProductEmptyCopyWithImpl(this._self, this._then);

  final SearchProductEmpty _self;
  final $Res Function(SearchProductEmpty) _then;

  /// Create a copy of SearchProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? query = null,
  }) {
    return _then(SearchProductEmpty(
      query: null == query
          ? _self.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class SearchProductError implements SearchProductState {
  const SearchProductError({required this.query, this.error});

  final String query;
  final Object? error;

  /// Create a copy of SearchProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchProductErrorCopyWith<SearchProductError> get copyWith =>
      _$SearchProductErrorCopyWithImpl<SearchProductError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchProductError &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, query, const DeepCollectionEquality().hash(error));

  @override
  String toString() {
    return 'SearchProductState.error(query: $query, error: $error)';
  }
}

/// @nodoc
abstract mixin class $SearchProductErrorCopyWith<$Res>
    implements $SearchProductStateCopyWith<$Res> {
  factory $SearchProductErrorCopyWith(
          SearchProductError value, $Res Function(SearchProductError) _then) =
      _$SearchProductErrorCopyWithImpl;
  @useResult
  $Res call({String query, Object? error});
}

/// @nodoc
class _$SearchProductErrorCopyWithImpl<$Res>
    implements $SearchProductErrorCopyWith<$Res> {
  _$SearchProductErrorCopyWithImpl(this._self, this._then);

  final SearchProductError _self;
  final $Res Function(SearchProductError) _then;

  /// Create a copy of SearchProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? query = null,
    Object? error = freezed,
  }) {
    return _then(SearchProductError(
      query: null == query
          ? _self.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      error: freezed == error ? _self.error : error,
    ));
  }
}

// dart format on
