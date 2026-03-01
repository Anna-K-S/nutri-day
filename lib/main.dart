import 'package:flutter/material.dart';

import 'theme/app_theme.dart';
import 'theme/app_theme_extensions.dart';
import 'theme/app_tokens.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nutrition Diary',
      themeMode: ThemeMode.system,
      theme: buildAppTheme(Brightness.light),
      darkTheme: buildAppTheme(Brightness.dark),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final textTheme = context.appTypography;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: colors.background,
        elevation: 0,
        centerTitle: false,
        title: Text(
          'Дневник питания',
          style: textTheme.heading2,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppTokens.spaceLg),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _CalorieSummaryCard(),
              const SizedBox(height: AppTokens.spaceLg),
              Text('Макросы', style: textTheme.heading2),
              const SizedBox(height: AppTokens.spaceSm),
              const _MacrosRow(),
              const SizedBox(height: AppTokens.spaceXl),
              Text('Сегодня', style: textTheme.heading2),
              const SizedBox(height: AppTokens.spaceSm),
              const _MealTile(
                emoji: '🍳',
                title: 'Завтрак',
                subtitle: '2 блюда',
                calories: 420,
              ),
              const SizedBox(height: AppTokens.spaceSm),
              const _MealTile(
                emoji: '🥗',
                title: 'Обед',
                subtitle: '1 блюдо',
                calories: 560,
              ),
              const SizedBox(height: AppTokens.spaceSm),
              const _MealTile(
                emoji: '🍲',
                title: 'Ужин',
                subtitle: '0 блюд',
                calories: 0,
              ),
              const SizedBox(height: AppTokens.spaceSm),
              const _MealTile(
                emoji: '🍎',
                title: 'Перекусы',
                subtitle: '1 блюдо',
                calories: 180,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: colors.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        icon: const Icon(Icons.add),
        label: Text('Добавить еду', style: textTheme.button),
      ),
    );
  }
}

class _CalorieSummaryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final textTheme = context.appTypography;
    const consumed = 1160;
    const goal = 1900;
    final left = goal - consumed;
    final progress = consumed / goal;

    return Container(
      padding: const EdgeInsets.all(AppTokens.spaceLg),
      decoration: BoxDecoration(
        color: colors.surface,
        borderRadius: BorderRadius.circular(AppTokens.radiusXl),
        border: Border.all(color: colors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Калории за день', style: textTheme.label),
          const SizedBox(height: AppTokens.spaceSm),
          Text('$consumed / $goal ккал', style: textTheme.heading1),
          const SizedBox(height: AppTokens.spaceMd),
          ClipRRect(
            borderRadius: BorderRadius.circular(AppTokens.radiusPill),
            child: LinearProgressIndicator(
              value: progress.clamp(0, 1),
              minHeight: 10,
              backgroundColor: colors.surfaceElevated,
              valueColor: AlwaysStoppedAnimation<Color>(colors.primary),
            ),
          ),
          const SizedBox(height: AppTokens.spaceSm),
          Text('Осталось: $left ккал', style: textTheme.small),
        ],
      ),
    );
  }
}

class _MacrosRow extends StatelessWidget {
  const _MacrosRow();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(child: _MacroCard(label: 'Белки', value: '78 г', colorType: _MacroColor.success)),
        SizedBox(width: AppTokens.spaceSm),
        Expanded(child: _MacroCard(label: 'Жиры', value: '45 г', colorType: _MacroColor.warning)),
        SizedBox(width: AppTokens.spaceSm),
        Expanded(child: _MacroCard(label: 'Углеводы', value: '122 г', colorType: _MacroColor.info)),
      ],
    );
  }
}

enum _MacroColor { success, warning, info }

class _MacroCard extends StatelessWidget {
  final String label;
  final String value;
  final _MacroColor colorType;

  const _MacroCard({
    required this.label,
    required this.value,
    required this.colorType,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final textTheme = context.appTypography;

    final accent = switch (colorType) {
      _MacroColor.success => colors.success,
      _MacroColor.warning => colors.warning,
      _MacroColor.info => colors.info,
    };

    return Container(
      padding: const EdgeInsets.all(AppTokens.spaceMd),
      decoration: BoxDecoration(
        color: colors.surface,
        borderRadius: BorderRadius.circular(AppTokens.radiusLg),
        border: Border.all(color: colors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
              color: accent,
              borderRadius: BorderRadius.circular(AppTokens.radiusPill),
            ),
          ),
          const SizedBox(height: AppTokens.spaceSm),
          Text(value, style: textTheme.bodyLarge),
          const SizedBox(height: AppTokens.spaceXs),
          Text(label, style: textTheme.small),
        ],
      ),
    );
  }
}

class _MealTile extends StatelessWidget {
  final String emoji;
  final String title;
  final String subtitle;
  final int calories;

  const _MealTile({
    required this.emoji,
    required this.title,
    required this.subtitle,
    required this.calories,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final textTheme = context.appTypography;

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppTokens.spaceLg,
        vertical: AppTokens.spaceMd,
      ),
      decoration: BoxDecoration(
        color: colors.surface,
        borderRadius: BorderRadius.circular(AppTokens.radiusLg),
        border: Border.all(color: colors.border),
      ),
      child: Row(
        children: [
          Text(emoji, style: const TextStyle(fontSize: 22)),
          const SizedBox(width: AppTokens.spaceMd),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: textTheme.bodyLarge),
                const SizedBox(height: AppTokens.spaceXs),
                Text(subtitle, style: textTheme.small),
              ],
            ),
          ),
          Text('$calories ккал', style: textTheme.label),
        ],
      ),
    );
  }
}
