// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Nutrition Diary';

  @override
  String get switchThemeTooltip => 'Switch theme';

  @override
  String get tabDiary => 'Diary';

  @override
  String get tabHistory => 'History';

  @override
  String get tabStats => 'Stats';

  @override
  String get tabSettings => 'Settings';
}
