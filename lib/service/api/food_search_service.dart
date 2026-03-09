import 'package:dio/dio.dart';
import 'package:nutrition_diary/data/models/product.dart';
import 'package:nutrition_diary/data/models/search_response.dart';

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

  /// Поиск продуктов по названию
  Future<List<Product>> search(String query) async {
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

    final res = SearchResponse.fromJson(data);

    // Возвращаем только продукты с именем
    return res.products.where((p) => p.productName.isNotEmpty).toList();
  }

  /// Получить продукт по штрихкоду
  Future<Product?> getByBarcode(String barcode) async {
    final code = barcode.trim();
    if (code.isEmpty) return null;

    final response = await _dio.get<Map<String, dynamic>>(
      '/api/v2/product/$code',
      queryParameters: <String, dynamic>{
        'fields': 'code,product_name,nutriments',
      },
    );

    final data = response.data;
    if (data == null || data['status'] != 1) return null;

    final productJson = data['product'] as Map<String, dynamic>?;
    if (productJson == null) return null;

    return Product.fromJson(productJson);
  }
}
