part of 'search_product_bloc.dart';

@freezed
sealed class SearchProductEvent with _$SearchProductEvent {
  const factory SearchProductEvent.started() = Started;
  const factory SearchProductEvent.search(String query) = Search;
  const factory SearchProductEvent.clear() = Clear;
  const factory SearchProductEvent.searchByBarcode(String barcode) =
      SearchByBarcode;
}
