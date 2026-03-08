class FoodItem {
  final String id;
  final String name;
  final int calories;
  final double protein;
  final double fat;
  final double carbs;

  FoodItem({
    required this.id,
    required this.name,
    required this.calories,
    this.protein = 0,
    this.fat = 0,
    this.carbs = 0,
  });

  factory FoodItem.fromJson(Map<String, dynamic> json) {
    final nutrients = json['nutrients'] ?? {};
    return FoodItem(
      id: json['foodId'] ?? json['uri']?.toString() ?? '',
      name: json['label'] ?? 'Unknown',
      calories: _numToInt(nutrients['ENERC_KCAL']),
      protein: _numToDouble(nutrients['PROCNT']),
      fat: _numToDouble(nutrients['FAT']),
      carbs: _numToDouble(nutrients['CHOCDF']),
    );
  }

  factory FoodItem.fromOpenFoodFacts(Map<String, dynamic> product,
      [int index = 0]) {
    final nutriments = product['nutriments'] as Map<String, dynamic>? ?? {};
    final name = product['product_name'] as String? ??
        product['product_name_imported'] as String? ??
        '';
    return FoodItem(
      id: product['code']?.toString() ?? index.toString(),
      name: name.isNotEmpty ? name : 'Unknown',
      calories: _numToInt(
          nutriments['energy-kcal_100g'] ?? nutriments['energy-kcal']),
      protein:
          _numToDouble(nutriments['proteins_100g'] ?? nutriments['proteins']),
      fat: _numToDouble(nutriments['fat_100g'] ?? nutriments['fat']),
      carbs: _numToDouble(
          nutriments['carbohydrates_100g'] ?? nutriments['carbohydrates']),
    );
  }

  static int _numToInt(dynamic v) {
    if (v == null) return 0;
    if (v is int) return v;
    if (v is num) return v.round();
    return 0;
  }

  static double _numToDouble(dynamic v) {
    if (v == null) return 0;
    if (v is num) return v.toDouble();
    return 0;
  }

  Map<String, dynamic> toJson() {
    return {
      'foodId': id,
      'label': name,
      'nutrients': {
        'ENERC_KCAL': calories,
        'PROCNT': protein,
        'FAT': fat,
        'CHOCDF': carbs,
      },
    };
  }
}
