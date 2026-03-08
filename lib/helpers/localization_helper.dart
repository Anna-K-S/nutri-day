import 'package:flutter/material.dart';
import 'package:nutrition_diary/l10n/app_localizations.dart';

class LocalizationHelper {
  const LocalizationHelper();

  ///Проверка локализации на инициализацию
  ///
  ///В случае, если локализация не найдена, выдает exception
  static AppLocalizations getLocalizations(BuildContext context) {
    final localization = AppLocalizations.of(context);
    if (localization == null) {
      throw Exception(
        'Localizations not found. Ensure localization is initialized properly.',
      );
    }
    return localization;
  }

  static Locale? resolveAppLocale(
    Locale? locale,
    Iterable<Locale> supportedLocales,
  ) {
    if (locale == null) return supportedLocales.first;

    return supportedLocales.firstWhere(
      (l) => l.languageCode == locale.languageCode,
      orElse: () => supportedLocales.first,
    );
  }
}
