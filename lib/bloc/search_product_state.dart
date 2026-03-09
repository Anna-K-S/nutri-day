part of 'search_product_bloc.dart';

@freezed
sealed class SearchProductState with _$SearchProductState {
  const factory SearchProductState.initial() = SearchProductInitial;

  const factory SearchProductState.loading({
    required String query,
    @Default([]) List<Product> products,
  }) = SearchProductLoading;

  const factory SearchProductState.success({
    required String query,
    required List<Product> products,
  }) = SearchProductSuccess;

  const factory SearchProductState.empty({
    required String query,
  }) = SearchProductEmpty;

  const factory SearchProductState.error({
    required String query,
    Object? error,
  }) = SearchProductError;
}
