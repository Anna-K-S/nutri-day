import 'package:flutter/material.dart';
import 'package:nutrition_diary/helpers/localization_helper.dart';
import 'package:nutrition_diary/l10n/app_localizations.dart';
import 'package:nutrition_diary/navigation/app_router.dart';
import 'package:nutrition_diary/service/api/food_search_service.dart';
import 'package:nutrition_diary/service/food_search_scope.dart';
import 'package:nutrition_diary/theme/app_theme.dart';
import 'package:nutrition_diary/theme/theme_mode_scope.dart';

void main() {
  runApp(const _ThemeModeController());
}

class _ThemeModeController extends StatefulWidget {
  const _ThemeModeController();

  @override
  State<_ThemeModeController> createState() => _ThemeModeControllerState();
}

class _ThemeModeControllerState extends State<_ThemeModeController> {
  ThemeMode _themeMode = ThemeMode.system;

  void _setThemeMode(ThemeMode mode) {
    setState(() => _themeMode = mode);
  }

  @override
  Widget build(BuildContext context) {
    return ThemeModeScope(
      themeMode: _themeMode,
      setThemeMode: _setThemeMode,
      child: FoodSearchScope(
        service: FoodSearchService(),
        child: const MainApp(),
      ),
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final scope = ThemeModeScope.of(context);

    return MaterialApp.router(
      onGenerateTitle: (context) =>
          LocalizationHelper.getLocalizations(context).appTitle,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      localeResolutionCallback: LocalizationHelper.resolveAppLocale,
      themeMode: scope.themeMode,
      darkTheme: buildAppTheme(Brightness.dark),
      theme: buildAppTheme(Brightness.light),
      routerConfig: appRouter,
    );
  }
}
