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

  @override
  String get welcomeTitle => 'Расчёт калорий';

  @override
  String get goalTitle => 'Ваша цель';

  @override
  String get goalSubtitle => 'Выберите, что хотите достичь';

  @override
  String get goalLose => 'Похудение';

  @override
  String get goalLoseSubtitle => 'Дефицит калорий';

  @override
  String get goalMaintain => 'Поддержка веса';

  @override
  String get goalMaintainSubtitle => 'Сохранить текущий вес';

  @override
  String get goalGain => 'Набор веса';

  @override
  String get goalGainSubtitle => 'Профицит калорий';

  @override
  String get buttonNext => 'Далее';

  @override
  String get personalTitle => 'О вас';

  @override
  String get personalSubtitle => 'Пол, возраст и рост для расчёта по формуле Миффлина–Сан Жеора';

  @override
  String get genderLabel => 'Пол';

  @override
  String get genderMale => 'Мужской';

  @override
  String get genderFemale => 'Женский';

  @override
  String get ageLabel => 'Возраст (лет)';

  @override
  String get ageHint => '25';

  @override
  String get heightLabel => 'Рост (см)';

  @override
  String get heightHint => '170';

  @override
  String get weightTitle => 'Вес';

  @override
  String get weightSubtitle => 'Текущий и желаемый вес в кг';

  @override
  String get currentWeightLabel => 'Текущий вес (кг)';

  @override
  String get currentWeightHint => '70';

  @override
  String get desiredWeightLabel => 'Желаемый вес (кг)';

  @override
  String get desiredWeightHint => '65';

  @override
  String get activityTitle => 'Уровень активности';

  @override
  String get activitySubtitle => 'Как часто вы двигаетесь и тренируетесь';

  @override
  String get activityMinimal => 'Минимальная';

  @override
  String get activityMinimalDesc => 'Сидячая работа, почти нет спорта';

  @override
  String get activityLow => 'Низкая';

  @override
  String get activityLowDesc => '1–3 тренировки в неделю';

  @override
  String get activityModerate => 'Средняя';

  @override
  String get activityModerateDesc => '3–5 тренировок в неделю';

  @override
  String get activityHigh => 'Высокая';

  @override
  String get activityHighDesc => '6–7 тренировок в неделю';

  @override
  String get activityVeryHigh => 'Очень высокая';

  @override
  String get activityVeryHighDesc => 'Тяжёлые тренировки, физическая работа';

  @override
  String get buttonCalculate => 'Рассчитать';

  @override
  String get resultTitle => 'Ваша норма калорий';

  @override
  String get resultSubtitle => 'Рассчитано по формуле Миффлина–Сан Жеора';

  @override
  String get resultRecommended => 'Рекомендуемая калорийность';

  @override
  String get resultRecommendedGoalLose => 'Дефицит для похудения';

  @override
  String get resultRecommendedGoalMaintain => 'Поддержание веса';

  @override
  String get resultRecommendedGoalGain => 'Профицит для набора';

  @override
  String get resultBmr => 'Базовый обмен (BMR)';

  @override
  String get resultBmrSubtitle => 'В состоянии покоя';

  @override
  String get resultTdee => 'Расход с учётом активности (TDEE)';

  @override
  String get resultTdeeSubtitle => 'С учётом уровня активности';

  @override
  String resultKcalPerDay(int calories) {
    return '$calories ккал/день';
  }

  @override
  String get buttonDone => 'Готово';

  @override
  String get diaryToday => 'Сегодня';

  @override
  String get diaryEmptyMessage => 'Пока записей нет.\nДобавьте первый приём пищи.';

  @override
  String get diaryAddMeal => 'Добавить приём пищи';

  @override
  String get searchProductTitle => 'Поиск продукта';

  @override
  String get searchProductHint => 'Название или штрихкод';

  @override
  String get searchProductCamera => 'Камера';

  @override
  String get searchProductSearch => 'Искать';

  @override
  String get searchProductClear => 'Очистить';

  @override
  String get searchProductPrompt => 'Введите запрос или отсканируйте штрихкод';

  @override
  String get searchProductEmpty => 'Ничего не найдено';

  @override
  String get searchProductError => 'Ошибка поиска. Попробуйте снова.';

  @override
  String get searchProductScanTitle => 'Сканирование штрихкода';

  @override
  String searchProductCodeLabel(String code) {
    return 'Код: $code';
  }

  @override
  String get monthJanuary => 'января';

  @override
  String get monthFebruary => 'февраля';

  @override
  String get monthMarch => 'марта';

  @override
  String get monthApril => 'апреля';

  @override
  String get monthMay => 'мая';

  @override
  String get monthJune => 'июня';

  @override
  String get monthJuly => 'июля';

  @override
  String get monthAugust => 'августа';

  @override
  String get monthSeptember => 'сентября';

  @override
  String get monthOctober => 'октября';

  @override
  String get monthNovember => 'ноября';

  @override
  String get monthDecember => 'декабря';

  @override
  String dateFormat(int day, String month, int year) {
    return '$day $month $year';
  }
}
