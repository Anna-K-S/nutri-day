import 'package:flutter/material.dart';
import 'package:nutrition_diary/service/api/food_search_service.dart';

class FoodSearchScope extends InheritedWidget {
  const FoodSearchScope({
    super.key,
    required this.service,
    required super.child,
  });

  final FoodSearchService service;

  static FoodSearchService of(BuildContext context) {
    final scope = context.dependOnInheritedWidgetOfExactType<FoodSearchScope>();
    assert(scope != null,
        'No FoodSearchScope found. Wrap app with FoodSearchScope.');
    return scope!.service;
  }

  @override
  bool updateShouldNotify(FoodSearchScope oldWidget) =>
      service != oldWidget.service;
}
