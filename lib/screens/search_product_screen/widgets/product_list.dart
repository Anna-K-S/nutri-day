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
        final title = (product.brands == null || product.brands!.isEmpty)
            ? product.productName
            : '${product.brands} ${product.productName}';
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(AppTokens.spaceLg),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _ProductImage(imageUrl: product.imageUrl),
                const SizedBox(width: AppTokens.spaceMd),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: typography.bodyLarge
                            .copyWith(color: theme.text.primary),
                      ),
                      const SizedBox(height: AppTokens.spaceXs),
                      Text(
                        localization.searchProductCodeLabel(product.code),
                        style: typography.small
                            .copyWith(color: theme.text.tertiary),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _ProductImage extends StatelessWidget {
  const _ProductImage({required this.imageUrl});

  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme.colorScheme;
    final hasImage = imageUrl != null && imageUrl!.trim().isNotEmpty;

    return ClipRRect(
      borderRadius: BorderRadius.circular(AppTokens.radiusLg),
      child: SizedBox(
        width: 56,
        height: 56,
        child: hasImage
            ? Image.network(
                imageUrl!,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => _ImagePlaceholder(
                  backgroundColor: theme.background.surfaceHover,
                  iconColor: theme.text.tertiary,
                ),
              )
            : _ImagePlaceholder(
                backgroundColor: theme.background.surfaceHover,
                iconColor: theme.text.tertiary,
              ),
      ),
    );
  }
}

class _ImagePlaceholder extends StatelessWidget {
  const _ImagePlaceholder({
    required this.backgroundColor,
    required this.iconColor,
  });

  final Color backgroundColor;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: backgroundColor,
      child: Icon(
        Icons.image_outlined,
        color: iconColor,
      ),
    );
  }
}
