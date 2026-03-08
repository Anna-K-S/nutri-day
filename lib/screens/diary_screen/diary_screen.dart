import 'package:flutter/material.dart';
import 'package:nutrition_diary/helpers/localization_helper.dart';
import 'package:nutrition_diary/l10n/app_localizations.dart';
import 'package:nutrition_diary/resources/icons/app_icons.dart';
import 'package:nutrition_diary/theme/app_theme.dart';
import 'package:nutrition_diary/theme/app_theme_typography.dart';
import 'package:nutrition_diary/theme/app_tokens.dart';
import 'package:nutrition_diary/theme/colors/app_color_scheme.dart';

class DiaryScreen extends StatelessWidget {
  const DiaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = LocalizationHelper.getLocalizations(context);
    final colors = context.appTheme.colorScheme;
    final typography = context.appTheme.typography;

    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(AppTokens.spaceLg),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    l10n.diaryToday,
                    style: typography.heading2.copyWith(
                      color: colors.text.primary,
                    ),
                  ),
                  const SizedBox(height: AppTokens.spaceXs),
                  Text(
                    _formatDate(context, DateTime.now()),
                    style: typography.small.copyWith(
                      color: colors.text.tertiary,
                    ),
                  ),
                  const SizedBox(height: AppTokens.spaceXl),
                  _EmptyState(
                    message: l10n.diaryEmptyMessage,
                    onAdd: () {},
                    addLabel: l10n.diaryAddMeal,
                    colors: colors,
                    typography: typography,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _formatDate(BuildContext context, DateTime date) {
    final l10n = AppLocalizations.of(context)!;
    final months = [
      l10n.monthJanuary,
      l10n.monthFebruary,
      l10n.monthMarch,
      l10n.monthApril,
      l10n.monthMay,
      l10n.monthJune,
      l10n.monthJuly,
      l10n.monthAugust,
      l10n.monthSeptember,
      l10n.monthOctober,
      l10n.monthNovember,
      l10n.monthDecember,
    ];
    return l10n.dateFormat(date.day, months[date.month - 1], date.year);
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState({
    required this.message,
    required this.onAdd,
    required this.addLabel,
    required this.colors,
    required this.typography,
  });

  final String message;
  final VoidCallback onAdd;
  final String addLabel;
  final AppColorScheme colors;
  final AppThemeTypography typography;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppTokens.spaceXl),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              message,
              textAlign: TextAlign.center,
              style: typography.body.copyWith(color: colors.text.secondary),
            ),
            const SizedBox(height: AppTokens.spaceLg),
            FilledButton.icon(
              onPressed: onAdd,
              icon: AppIcons.get(
                AppIcons.plus,
                color: colors.buttons.onPrimary,
                width: 20,
                height: 20,
              ),
              label: Text(addLabel),
              style: FilledButton.styleFrom(
                backgroundColor: colors.buttons.primary,
                foregroundColor: colors.buttons.onPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
