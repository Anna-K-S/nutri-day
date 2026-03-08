import 'package:flutter/material.dart';
import 'package:nutrition_diary/helpers/localization_helper.dart';
import 'package:nutrition_diary/resources/icons/app_icons.dart';
import 'package:nutrition_diary/theme/app_theme.dart';
import 'package:nutrition_diary/theme/app_tokens.dart';

class DiaryScreen extends StatelessWidget {
  const DiaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = LocalizationHelper.getLocalizations(context);
    final theme = context.appTheme.colorScheme;
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
                    localization.diaryToday,
                    style: typography.heading2.copyWith(
                      color: theme.text.primary,
                    ),
                  ),
                  const SizedBox(height: AppTokens.spaceXs),
                  Text(
                    _formatDate(context, DateTime.now()),
                    style: typography.small.copyWith(
                      color: theme.text.tertiary,
                    ),
                  ),
                  const SizedBox(height: AppTokens.spaceXl),
                  _EmptyState(
                    message: localization.diaryEmptyMessage,
                    onAdd: () {},
                    addLabel: localization.diaryAddMeal,
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
    final localization = LocalizationHelper.getLocalizations(context);
    final months = [
      localization.monthJanuary,
      localization.monthFebruary,
      localization.monthMarch,
      localization.monthApril,
      localization.monthMay,
      localization.monthJune,
      localization.monthJuly,
      localization.monthAugust,
      localization.monthSeptember,
      localization.monthOctober,
      localization.monthNovember,
      localization.monthDecember,
    ];
    return localization.dateFormat(date.day, months[date.month - 1], date.year);
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState({
    required this.message,
    required this.onAdd,
    required this.addLabel,
  });

  final String message;
  final VoidCallback onAdd;
  final String addLabel;

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme.colorScheme;
    final typography = context.appTheme.typography;

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppTokens.spaceXl),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              message,
              textAlign: TextAlign.center,
              style: typography.body.copyWith(color: theme.text.secondary),
            ),
            const SizedBox(height: AppTokens.spaceLg),
            FilledButton.icon(
              onPressed: onAdd,
              icon: AppIcons.get(
                AppIcons.plus,
                color: theme.buttons.onPrimary,
                width: 20,
                height: 20,
              ),
              label: Text(addLabel),
              style: FilledButton.styleFrom(
                backgroundColor: theme.buttons.primary,
                foregroundColor: theme.buttons.onPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
