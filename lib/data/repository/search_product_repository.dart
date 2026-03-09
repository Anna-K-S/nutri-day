import 'package:nutrition_diary/data/models/product.dart';
import 'package:nutrition_diary/service/api/food_search_service.dart';

abstract interface class ISearchProductRepository {
  Future<List<Product>> search(String query);

  Future<Product?> getByBarcode(String barcode);
}

class SearchProductRepository implements ISearchProductRepository {
  final FoodSearchService _service;

  SearchProductRepository(this._service);

  @override
  Future<List<Product>> search(String query) {
    return _service.search(query);
  }

  @override
  Future<Product?> getByBarcode(String barcode) {
    return _service.getByBarcode(barcode);
  }
}
