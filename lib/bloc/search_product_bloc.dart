import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nutrition_diary/data/models/product.dart';
import 'package:nutrition_diary/data/repository/search_product_repository.dart';

part 'search_product_event.dart';
part 'search_product_state.dart';
part 'search_product_bloc.freezed.dart';

class SearchProductBloc extends Bloc<SearchProductEvent, SearchProductState> {
  final ISearchProductRepository repository;

  SearchProductBloc(this.repository) : super(SearchProductState.initial()) {
    on<SearchProductEvent>(
      (event, emit) => switch (event) {
        Started() => _onStarted(event, emit),
        Search() => _onSearch(event, emit),
        Clear() => _onClear(event, emit),
        SearchByBarcode() => _onSearchByBarcode(event, emit),
      },
    );
  }

  Future<void> _onStarted(
    Started event,
    Emitter<SearchProductState> emit,
  ) async {
    emit(const SearchProductState.initial());
  }

  Future<void> _onSearch(
    Search event,
    Emitter<SearchProductState> emit,
  ) async {
    final query = event.query.trim();

    if (query.isEmpty) {
      emit(const SearchProductState.initial());
      return;
    }

    try {
      emit(SearchProductState.loading(
        query: query,
        products: const [],
      ));

      final products = await repository.search(query);

      if (products.isEmpty) {
        emit(SearchProductState.empty(query: query));
        return;
      }

      emit(SearchProductState.success(
        query: query,
        products: products,
      ));
    } catch (e) {
      emit(SearchProductState.error(
        query: query,
        error: e,
      ));
    }
  }

  Future<void> _onClear(
    Clear event,
    Emitter<SearchProductState> emit,
  ) async {
    emit(const SearchProductState.initial());
  }

  Future<void> _onSearchByBarcode(
    SearchByBarcode event,
    Emitter<SearchProductState> emit,
  ) async {
    try {
      emit(SearchProductState.loading(
        query: event.barcode,
        products: const [],
      ));

      final product = await repository.getByBarcode(event.barcode);

      if (product == null) {
        emit(SearchProductState.empty(query: event.barcode));
        return;
      }

      emit(SearchProductState.success(
        query: event.barcode,
        products: [product],
      ));
    } catch (e) {
      emit(SearchProductState.error(
        query: event.barcode,
        error: e,
      ));
    }
  }
}
