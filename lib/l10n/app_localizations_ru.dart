// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'Дневник питания';

  @override
  String get switchThemeTooltip => 'Сменить тему';

  @override
  String get tabDiary => 'Дневник';

  @override
  String get tabHistory => 'История';

  @override
  String get tabStats => 'Статистика';

  @override
  String get tabSettings => 'Настройки';
}
