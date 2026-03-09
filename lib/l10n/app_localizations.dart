import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ru.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ru')
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Nutrition Diary'**
  String get appTitle;

  /// No description provided for @switchThemeTooltip.
  ///
  /// In en, this message translates to:
  /// **'Switch theme'**
  String get switchThemeTooltip;

  /// No description provided for @tabDiary.
  ///
  /// In en, this message translates to:
  /// **'Diary'**
  String get tabDiary;

  /// No description provided for @tabHistory.
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get tabHistory;

  /// No description provided for @tabStats.
  ///
  /// In en, this message translates to:
  /// **'Stats'**
  String get tabStats;

  /// No description provided for @tabSettings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get tabSettings;

  /// No description provided for @welcomeTitle.
  ///
  /// In en, this message translates to:
  /// **'Calorie calculator'**
  String get welcomeTitle;

  /// No description provided for @goalTitle.
  ///
  /// In en, this message translates to:
  /// **'Your goal'**
  String get goalTitle;

  /// No description provided for @goalSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Choose what you want to achieve'**
  String get goalSubtitle;

  /// No description provided for @goalLose.
  ///
  /// In en, this message translates to:
  /// **'Weight loss'**
  String get goalLose;

  /// No description provided for @goalLoseSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Calorie deficit'**
  String get goalLoseSubtitle;

  /// No description provided for @goalMaintain.
  ///
  /// In en, this message translates to:
  /// **'Maintain weight'**
  String get goalMaintain;

  /// No description provided for @goalMaintainSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Keep current weight'**
  String get goalMaintainSubtitle;

  /// No description provided for @goalGain.
  ///
  /// In en, this message translates to:
  /// **'Weight gain'**
  String get goalGain;

  /// No description provided for @goalGainSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Calorie surplus'**
  String get goalGainSubtitle;

  /// No description provided for @buttonNext.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get buttonNext;

  /// No description provided for @personalTitle.
  ///
  /// In en, this message translates to:
  /// **'About you'**
  String get personalTitle;

  /// No description provided for @personalSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Gender, age and height for Mifflin–St Jeor formula'**
  String get personalSubtitle;

  /// No description provided for @genderLabel.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get genderLabel;

  /// No description provided for @genderMale.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get genderMale;

  /// No description provided for @genderFemale.
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get genderFemale;

  /// No description provided for @ageLabel.
  ///
  /// In en, this message translates to:
  /// **'Age (years)'**
  String get ageLabel;

  /// No description provided for @ageHint.
  ///
  /// In en, this message translates to:
  /// **'25'**
  String get ageHint;

  /// No description provided for @heightLabel.
  ///
  /// In en, this message translates to:
  /// **'Height (cm)'**
  String get heightLabel;

  /// No description provided for @heightHint.
  ///
  /// In en, this message translates to:
  /// **'170'**
  String get heightHint;

  /// No description provided for @weightTitle.
  ///
  /// In en, this message translates to:
  /// **'Weight'**
  String get weightTitle;

  /// No description provided for @weightSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Current and desired weight in kg'**
  String get weightSubtitle;

  /// No description provided for @currentWeightLabel.
  ///
  /// In en, this message translates to:
  /// **'Current weight (kg)'**
  String get currentWeightLabel;

  /// No description provided for @currentWeightHint.
  ///
  /// In en, this message translates to:
  /// **'70'**
  String get currentWeightHint;

  /// No description provided for @desiredWeightLabel.
  ///
  /// In en, this message translates to:
  /// **'Desired weight (kg)'**
  String get desiredWeightLabel;

  /// No description provided for @desiredWeightHint.
  ///
  /// In en, this message translates to:
  /// **'65'**
  String get desiredWeightHint;

  /// No description provided for @activityTitle.
  ///
  /// In en, this message translates to:
  /// **'Activity level'**
  String get activityTitle;

  /// No description provided for @activitySubtitle.
  ///
  /// In en, this message translates to:
  /// **'How often you move and exercise'**
  String get activitySubtitle;

  /// No description provided for @activityMinimal.
  ///
  /// In en, this message translates to:
  /// **'Minimal'**
  String get activityMinimal;

  /// No description provided for @activityMinimalDesc.
  ///
  /// In en, this message translates to:
  /// **'Sedentary, almost no exercise'**
  String get activityMinimalDesc;

  /// No description provided for @activityLow.
  ///
  /// In en, this message translates to:
  /// **'Low'**
  String get activityLow;

  /// No description provided for @activityLowDesc.
  ///
  /// In en, this message translates to:
  /// **'1–3 workouts per week'**
  String get activityLowDesc;

  /// No description provided for @activityModerate.
  ///
  /// In en, this message translates to:
  /// **'Moderate'**
  String get activityModerate;

  /// No description provided for @activityModerateDesc.
  ///
  /// In en, this message translates to:
  /// **'3–5 workouts per week'**
  String get activityModerateDesc;

  /// No description provided for @activityHigh.
  ///
  /// In en, this message translates to:
  /// **'High'**
  String get activityHigh;

  /// No description provided for @activityHighDesc.
  ///
  /// In en, this message translates to:
  /// **'6–7 workouts per week'**
  String get activityHighDesc;

  /// No description provided for @activityVeryHigh.
  ///
  /// In en, this message translates to:
  /// **'Very high'**
  String get activityVeryHigh;

  /// No description provided for @activityVeryHighDesc.
  ///
  /// In en, this message translates to:
  /// **'Heavy training, physical work'**
  String get activityVeryHighDesc;

  /// No description provided for @buttonCalculate.
  ///
  /// In en, this message translates to:
  /// **'Calculate'**
  String get buttonCalculate;

  /// No description provided for @resultTitle.
  ///
  /// In en, this message translates to:
  /// **'Your calorie norm'**
  String get resultTitle;

  /// No description provided for @resultSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Calculated using Mifflin–St Jeor formula'**
  String get resultSubtitle;

  /// No description provided for @resultRecommended.
  ///
  /// In en, this message translates to:
  /// **'Recommended calories'**
  String get resultRecommended;

  /// No description provided for @resultRecommendedGoalLose.
  ///
  /// In en, this message translates to:
  /// **'Deficit for weight loss'**
  String get resultRecommendedGoalLose;

  /// No description provided for @resultRecommendedGoalMaintain.
  ///
  /// In en, this message translates to:
  /// **'Maintain weight'**
  String get resultRecommendedGoalMaintain;

  /// No description provided for @resultRecommendedGoalGain.
  ///
  /// In en, this message translates to:
  /// **'Surplus for weight gain'**
  String get resultRecommendedGoalGain;

  /// No description provided for @resultBmr.
  ///
  /// In en, this message translates to:
  /// **'Basal metabolic rate (BMR)'**
  String get resultBmr;

  /// No description provided for @resultBmrSubtitle.
  ///
  /// In en, this message translates to:
  /// **'At rest'**
  String get resultBmrSubtitle;

  /// No description provided for @resultTdee.
  ///
  /// In en, this message translates to:
  /// **'Expenditure with activity (TDEE)'**
  String get resultTdee;

  /// No description provided for @resultTdeeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Based on activity level'**
  String get resultTdeeSubtitle;

  /// No description provided for @resultKcalPerDay.
  ///
  /// In en, this message translates to:
  /// **'{calories} kcal/day'**
  String resultKcalPerDay(int calories);

  /// No description provided for @buttonDone.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get buttonDone;

  /// No description provided for @diaryToday.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get diaryToday;

  /// No description provided for @diaryEmptyMessage.
  ///
  /// In en, this message translates to:
  /// **'No entries yet.\nAdd your first meal.'**
  String get diaryEmptyMessage;

  /// No description provided for @diaryAddMeal.
  ///
  /// In en, this message translates to:
  /// **'Add meal'**
  String get diaryAddMeal;

  /// No description provided for @searchProductTitle.
  ///
  /// In en, this message translates to:
  /// **'Product search'**
  String get searchProductTitle;

  /// No description provided for @searchProductHint.
  ///
  /// In en, this message translates to:
  /// **'Name or barcode'**
  String get searchProductHint;

  /// No description provided for @searchProductCamera.
  ///
  /// In en, this message translates to:
  /// **'Camera'**
  String get searchProductCamera;

  /// No description provided for @searchProductSearch.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get searchProductSearch;

  /// No description provided for @searchProductClear.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get searchProductClear;

  /// No description provided for @searchProductPrompt.
  ///
  /// In en, this message translates to:
  /// **'Enter a query or scan a barcode'**
  String get searchProductPrompt;

  /// No description provided for @searchProductEmpty.
  ///
  /// In en, this message translates to:
  /// **'Nothing found'**
  String get searchProductEmpty;

  /// No description provided for @searchProductError.
  ///
  /// In en, this message translates to:
  /// **'Search failed. Try again.'**
  String get searchProductError;

  /// No description provided for @searchProductScanTitle.
  ///
  /// In en, this message translates to:
  /// **'Barcode scanning'**
  String get searchProductScanTitle;

  /// No description provided for @searchProductCodeLabel.
  ///
  /// In en, this message translates to:
  /// **'Code: {code}'**
  String searchProductCodeLabel(String code);

  /// No description provided for @monthJanuary.
  ///
  /// In en, this message translates to:
  /// **'January'**
  String get monthJanuary;

  /// No description provided for @monthFebruary.
  ///
  /// In en, this message translates to:
  /// **'February'**
  String get monthFebruary;

  /// No description provided for @monthMarch.
  ///
  /// In en, this message translates to:
  /// **'March'**
  String get monthMarch;

  /// No description provided for @monthApril.
  ///
  /// In en, this message translates to:
  /// **'April'**
  String get monthApril;

  /// No description provided for @monthMay.
  ///
  /// In en, this message translates to:
  /// **'May'**
  String get monthMay;

  /// No description provided for @monthJune.
  ///
  /// In en, this message translates to:
  /// **'June'**
  String get monthJune;

  /// No description provided for @monthJuly.
  ///
  /// In en, this message translates to:
  /// **'July'**
  String get monthJuly;

  /// No description provided for @monthAugust.
  ///
  /// In en, this message translates to:
  /// **'August'**
  String get monthAugust;

  /// No description provided for @monthSeptember.
  ///
  /// In en, this message translates to:
  /// **'September'**
  String get monthSeptember;

  /// No description provided for @monthOctober.
  ///
  /// In en, this message translates to:
  /// **'October'**
  String get monthOctober;

  /// No description provided for @monthNovember.
  ///
  /// In en, this message translates to:
  /// **'November'**
  String get monthNovember;

  /// No description provided for @monthDecember.
  ///
  /// In en, this message translates to:
  /// **'December'**
  String get monthDecember;

  /// No description provided for @dateFormat.
  ///
  /// In en, this message translates to:
  /// **'{day} {month} {year}'**
  String dateFormat(int day, String month, int year);
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'ru': return AppLocalizationsRu();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
