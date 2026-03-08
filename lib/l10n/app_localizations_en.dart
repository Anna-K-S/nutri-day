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

  @override
  String get welcomeTitle => 'Calorie calculator';

  @override
  String get goalTitle => 'Your goal';

  @override
  String get goalSubtitle => 'Choose what you want to achieve';

  @override
  String get goalLose => 'Weight loss';

  @override
  String get goalLoseSubtitle => 'Calorie deficit';

  @override
  String get goalMaintain => 'Maintain weight';

  @override
  String get goalMaintainSubtitle => 'Keep current weight';

  @override
  String get goalGain => 'Weight gain';

  @override
  String get goalGainSubtitle => 'Calorie surplus';

  @override
  String get buttonNext => 'Next';

  @override
  String get personalTitle => 'About you';

  @override
  String get personalSubtitle => 'Gender, age and height for Mifflin–St Jeor formula';

  @override
  String get genderLabel => 'Gender';

  @override
  String get genderMale => 'Male';

  @override
  String get genderFemale => 'Female';

  @override
  String get ageLabel => 'Age (years)';

  @override
  String get ageHint => '25';

  @override
  String get heightLabel => 'Height (cm)';

  @override
  String get heightHint => '170';

  @override
  String get weightTitle => 'Weight';

  @override
  String get weightSubtitle => 'Current and desired weight in kg';

  @override
  String get currentWeightLabel => 'Current weight (kg)';

  @override
  String get currentWeightHint => '70';

  @override
  String get desiredWeightLabel => 'Desired weight (kg)';

  @override
  String get desiredWeightHint => '65';

  @override
  String get activityTitle => 'Activity level';

  @override
  String get activitySubtitle => 'How often you move and exercise';

  @override
  String get activityMinimal => 'Minimal';

  @override
  String get activityMinimalDesc => 'Sedentary, almost no exercise';

  @override
  String get activityLow => 'Low';

  @override
  String get activityLowDesc => '1–3 workouts per week';

  @override
  String get activityModerate => 'Moderate';

  @override
  String get activityModerateDesc => '3–5 workouts per week';

  @override
  String get activityHigh => 'High';

  @override
  String get activityHighDesc => '6–7 workouts per week';

  @override
  String get activityVeryHigh => 'Very high';

  @override
  String get activityVeryHighDesc => 'Heavy training, physical work';

  @override
  String get buttonCalculate => 'Calculate';

  @override
  String get resultTitle => 'Your calorie norm';

  @override
  String get resultSubtitle => 'Calculated using Mifflin–St Jeor formula';

  @override
  String get resultRecommended => 'Recommended calories';

  @override
  String get resultRecommendedGoalLose => 'Deficit for weight loss';

  @override
  String get resultRecommendedGoalMaintain => 'Maintain weight';

  @override
  String get resultRecommendedGoalGain => 'Surplus for weight gain';

  @override
  String get resultBmr => 'Basal metabolic rate (BMR)';

  @override
  String get resultBmrSubtitle => 'At rest';

  @override
  String get resultTdee => 'Expenditure with activity (TDEE)';

  @override
  String get resultTdeeSubtitle => 'Based on activity level';

  @override
  String resultKcalPerDay(int calories) {
    return '$calories kcal/day';
  }

  @override
  String get buttonDone => 'Done';

  @override
  String get diaryToday => 'Today';

  @override
  String get diaryEmptyMessage => 'No entries yet.\nAdd your first meal.';

  @override
  String get diaryAddMeal => 'Add meal';

  @override
  String get monthJanuary => 'January';

  @override
  String get monthFebruary => 'February';

  @override
  String get monthMarch => 'March';

  @override
  String get monthApril => 'April';

  @override
  String get monthMay => 'May';

  @override
  String get monthJune => 'June';

  @override
  String get monthJuly => 'July';

  @override
  String get monthAugust => 'August';

  @override
  String get monthSeptember => 'September';

  @override
  String get monthOctober => 'October';

  @override
  String get monthNovember => 'November';

  @override
  String get monthDecember => 'December';

  @override
  String dateFormat(int day, String month, int year) {
    return '$day $month $year';
  }
}
