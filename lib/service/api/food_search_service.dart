import 'package:dio/dio.dart';
import 'package:nutrition_diary/models/food_item.dart';

/// Клиент [Open Food Facts](https://world.openfoodfacts.org/) API.
/// Поиск продуктов без API-ключей (открытые данные).
class FoodSearchService {
  FoodSearchService([Dio? dio])
      : _dio = dio ??
            Dio(BaseOptions(baseUrl: 'https://world.openfoodfacts.org')) {
    _dio.options.headers['Accept-Encoding'] = 'gzip';
    _dio.options.headers['User-Agent'] =
        'NutritionDiary - Flutter - https://github.com/nutrition-diary';
  }

  final Dio _dio;

  static const String _searchPath = '/api/v2/search';

  Future<List<FoodItem>> search(String query) async {
    if (query.trim().isEmpty) return [];

    final response = await _dio.get<Map<String, dynamic>>(
      _searchPath,
      queryParameters: <String, dynamic>{
        'search_terms': query.trim(),
        'page_size': 24,
        'fields': 'code,product_name,nutriments',
      },
    );

    final data = response.data;
    if (data == null) return [];

    final List<dynamic> products = data['products'] ?? [];
    final List<FoodItem> result = [];
    for (var i = 0; i < products.length; i++) {
      final product = products[i] as Map<String, dynamic>?;
      if (product == null) continue;
      final item = FoodItem.fromOpenFoodFacts(product, i);
      if (item.name.isNotEmpty) result.add(item);
    }
    return result;
  }

  /// Получить продукт по штрихкоду.
  Future<FoodItem?> getByBarcode(String barcode) async {
    final code = barcode.trim();
    if (code.isEmpty) return null;

    final response = await _dio.get<Map<String, dynamic>>(
      '/api/v2/product/$code',
      queryParameters: <String, dynamic>{
        'fields': 'code,product_name,nutriments',
      },
    );

    final data = response.data;
    if (data == null) return null;
    if (data['status'] != 1) return null;

    final product = data['product'] as Map<String, dynamic>?;
    if (product == null) return null;

    return FoodItem.fromOpenFoodFacts(product, 0);
  }
}
