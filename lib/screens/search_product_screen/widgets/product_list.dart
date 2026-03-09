import 'package:flutter/material.dart';
import 'package:nutrition_diary/data/models/product.dart';
import 'package:nutrition_diary/helpers/localization_helper.dart';
import 'package:nutrition_diary/theme/app_theme.dart';
import 'package:nutrition_diary/theme/app_tokens.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key, required this.products});

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    final localization = LocalizationHelper.getLocalizations(context);
    final theme = context.appTheme.colorScheme;
    final typography = context.appTheme.typography;

    return ListView.separated(
      itemCount: products.length,
      separatorBuilder: (_, __) => const SizedBox(height: AppTokens.spaceSm),
      itemBuilder: (context, index) {
        final product = products[index];
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(AppTokens.spaceLg),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.productName,
                  style:
                      typography.bodyLarge.copyWith(color: theme.text.primary),
                ),
                const SizedBox(height: AppTokens.spaceXs),
                Text(
                  localization.searchProductCodeLabel(product.code),
                  style: typography.small.copyWith(color: theme.text.tertiary),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
