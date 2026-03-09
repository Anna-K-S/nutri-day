import 'package:dio/dio.dart';
import 'package:nutrition_diary/data/dto/off/off_product_dto.dart';
import 'package:nutrition_diary/data/dto/off/off_search_response_dto.dart';
import 'package:nutrition_diary/data/mappers/off_search_mapper.dart';
import 'package:nutrition_diary/data/models/product.dart';

class FoodSearchService {
  FoodSearchService([Dio? dio])
      : _dio = dio ??
            Dio(BaseOptions(baseUrl: 'https://world.openfoodfacts.org')) {
    _dio.options.headers['Accept-Encoding'] = 'gzip';
    _dio.options.headers['User-Agent'] =
        'NutritionDiary - Flutter - https://github.com/nutrition-diary';
  }

  final Dio _dio;

  static const String _searchPath = '/cgi/search.pl';

  /// Поиск продуктов по названию
  Future<List<Product>> search(String query) async {
    if (query.trim().isEmpty) return [];

    final response = await _dio.get<Map<String, dynamic>>(
      _searchPath,
      queryParameters: <String, dynamic>{
        'search_terms': query.trim(),
        'search_simple': 1,
        'action': 'process',
        'json': 1,
        'page_size': 24,
        'fields':
            'code,product_name,brands,image_front_small_url,image_front_url,nutriments',
      },
    );

    final data = response.data;
    if (data == null) return [];

    final res = OffSearchResponseDto.fromJson(data).toModel();

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
        'fields':
            'code,product_name,brands,image_front_small_url,image_front_url,nutriments',
      },
    );

    final data = response.data;
    if (data == null || data['status'] != 1) return null;

    final productJson = data['product'] as Map<String, dynamic>?;
    if (productJson == null) return null;

    return OffProductDto.fromJson(productJson).toModel();
  }
}
