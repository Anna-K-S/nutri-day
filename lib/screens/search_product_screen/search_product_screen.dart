import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nutrition_diary/bloc/search_product_bloc.dart';
import 'package:nutrition_diary/helpers/localization_helper.dart';
import 'package:nutrition_diary/screens/search_product_screen/widgets/barcode_scanner_screen.dart';
import 'package:nutrition_diary/screens/search_product_screen/widgets/product_list.dart';
import 'package:nutrition_diary/theme/app_theme.dart';
import 'package:nutrition_diary/theme/app_tokens.dart';

class SearchProductScreen extends StatefulWidget {
  const SearchProductScreen({super.key});

  @override
  State<SearchProductScreen> createState() => _SearchProductScreenState();
}

class _SearchProductScreenState extends State<SearchProductScreen> {
  final TextEditingController _queryController = TextEditingController();

  @override
  void dispose() {
    _queryController.dispose();
    super.dispose();
  }

  void _searchByQuery() {
    context.read<SearchProductBloc>().add(
          SearchProductEvent.search(_queryController.text),
        );
  }

  Future<void> _scanBarcode() async {
    final code = await Navigator.of(context).push<String>(
      MaterialPageRoute<String>(
        builder: (_) => const BarcodeScannerScreen(),
      ),
    );

    if (!mounted || code == null || code.trim().isEmpty) return;
    _queryController.text = code;
    context
        .read<SearchProductBloc>()
        .add(SearchProductEvent.searchByBarcode(code.trim()));
  }

  @override
  Widget build(BuildContext context) {
    final localization = LocalizationHelper.getLocalizations(context);
    final theme = context.appTheme.colorScheme;
    final typography = context.appTheme.typography;

    return Scaffold(
      appBar: AppBar(
        title: Text(localization.searchProductTitle),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppTokens.spaceLg),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _queryController,
                      decoration: InputDecoration(
                        hintText: localization.searchProductHint,
                        border: const OutlineInputBorder(),
                      ),
                      textInputAction: TextInputAction.search,
                      onSubmitted: (_) => _searchByQuery(),
                    ),
                  ),
                  const SizedBox(width: AppTokens.spaceSm),
                  FilledButton.icon(
                    onPressed: _scanBarcode,
                    icon: const Icon(Icons.qr_code_scanner),
                    label: Text(localization.searchProductCamera),
                  ),
                ],
              ),
              const SizedBox(height: AppTokens.spaceSm),
              Row(
                children: [
                  Expanded(
                    child: FilledButton(
                      onPressed: _searchByQuery,
                      child: Text(localization.searchProductSearch),
                    ),
                  ),
                  const SizedBox(width: AppTokens.spaceSm),
                  OutlinedButton(
                    onPressed: () {
                      _queryController.clear();
                      context
                          .read<SearchProductBloc>()
                          .add(const SearchProductEvent.clear());
                    },
                    child: Text(localization.searchProductClear),
                  ),
                ],
              ),
              const SizedBox(height: AppTokens.spaceLg),
              Expanded(
                child: BlocBuilder<SearchProductBloc, SearchProductState>(
                  builder: (context, state) {
                    return switch (state) {
                      SearchProductInitial() => Center(
                          child: Text(
                            localization.searchProductPrompt,
                            style: typography.body.copyWith(
                              color: theme.text.secondary,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      SearchProductLoading() => const Center(
                          child: CircularProgressIndicator(),
                        ),
                      SearchProductEmpty() => Center(
                          child: Text(
                            localization.searchProductEmpty,
                            style: typography.body.copyWith(
                              color: theme.text.secondary,
                            ),
                          ),
                        ),
                      SearchProductError() => Center(
                          child: Text(
                            localization.searchProductError,
                            style: typography.body.copyWith(
                              color: theme.semantic.danger,
                            ),
                          ),
                        ),
                      SearchProductSuccess(:final products) =>
                        ProductList(products: products),
                    };
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
