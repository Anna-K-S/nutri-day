import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nutrition_diary/helpers/localization_helper.dart';
import 'package:nutrition_diary/resources/icons/app_icons.dart';
import 'package:nutrition_diary/screens/diary_screen/diary_screen.dart';
import 'package:nutrition_diary/theme/app_theme.dart';
import 'package:nutrition_diary/theme/theme_mode_scope.dart';

enum AppTab { diary, history, stats, settings }

final GoRouter appRouter = GoRouter(
  initialLocation: '/diary',
  routes: [
    ShellRoute(
      builder: (context, state, child) => _RootShell(child: child),
      routes: [
        GoRoute(
          path: '/diary',
          pageBuilder: (context, state) =>
              const NoTransitionPage(child: DiaryScreen()),
        ),
        GoRoute(
          path: '/history',
          pageBuilder: (context, state) =>
              const NoTransitionPage(child: _TabContent(tab: AppTab.history)),
        ),
        GoRoute(
          path: '/stats',
          pageBuilder: (context, state) =>
              const NoTransitionPage(child: _TabContent(tab: AppTab.stats)),
        ),
        GoRoute(
          path: '/settings',
          pageBuilder: (context, state) =>
              const NoTransitionPage(child: _TabContent(tab: AppTab.settings)),
        ),
      ],
    ),
  ],
);

class _RootShell extends StatelessWidget {
  const _RootShell({required this.child});

  final Widget child;

  ThemeMode _nextThemeMode(ThemeMode current) {
    switch (current) {
      case ThemeMode.light:
        return ThemeMode.dark;
      case ThemeMode.dark:
        return ThemeMode.system;
      case ThemeMode.system:
        return ThemeMode.light;
    }
  }

  AppTab _locationToTab(String location) {
    if (location.startsWith('/history')) return AppTab.history;
    if (location.startsWith('/stats')) return AppTab.stats;
    if (location.startsWith('/settings')) return AppTab.settings;
    return AppTab.diary;
  }

  String _tabToLocation(AppTab tab) {
    switch (tab) {
      case AppTab.diary:
        return '/diary';
      case AppTab.history:
        return '/history';
      case AppTab.stats:
        return '/stats';
      case AppTab.settings:
        return '/settings';
    }
  }

  @override
  Widget build(BuildContext context) {
    final localization = LocalizationHelper.getLocalizations(context);
    final theme = context.appTheme.colorScheme;
    final scope = ThemeModeScope.of(context);
    final mode = scope.themeMode;
    final tab = _locationToTab(GoRouterState.of(context).uri.path);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.background.background,
        title: Text(localization.appTitle),
        actions: [
          IconButton(
            tooltip: localization.switchThemeTooltip,
            onPressed: () => scope.setThemeMode(_nextThemeMode(mode)),
            icon: AppIcons.get(
                switch (mode) {
                  ThemeMode.light => AppIcons.themeSun,
                  ThemeMode.dark => AppIcons.themeMoon,
                  ThemeMode.system => AppIcons.themeAuto,
                },
                color: context.appTheme.colorScheme.text.primary),
          ),
        ],
      ),
      body: child,
      bottomNavigationBar: NavigationBar(
        selectedIndex: tab.index,
        destinations: [
          NavigationDestination(
            icon: AppIcons.get(
              AppIcons.diary,
              color: theme.text.tertiary,
            ),
            selectedIcon: AppIcons.get(
              AppIcons.diary,
              color: theme.buttons.primary,
            ),
            label: localization.tabDiary,
          ),
          NavigationDestination(
            icon: AppIcons.get(
              AppIcons.history,
              color: theme.text.tertiary,
            ),
            selectedIcon: AppIcons.get(
              AppIcons.history,
              color: theme.buttons.primary,
            ),
            label: localization.tabHistory,
          ),
          NavigationDestination(
            icon: AppIcons.get(
              AppIcons.stats,
              color: theme.text.tertiary,
            ),
            selectedIcon: AppIcons.get(
              AppIcons.stats,
              color: theme.buttons.primary,
            ),
            label: localization.tabStats,
          ),
          NavigationDestination(
            icon: AppIcons.get(
              AppIcons.settings,
              color: theme.text.tertiary,
            ),
            selectedIcon: AppIcons.get(
              AppIcons.settings,
              color: theme.buttons.primary,
            ),
            label: localization.tabSettings,
          ),
        ],
        onDestinationSelected: (index) {
          final nextTab = AppTab.values[index];
          final nextLocation = _tabToLocation(nextTab);
          if (nextLocation != GoRouterState.of(context).uri.path) {
            context.go(nextLocation);
          }
        },
      ),
    );
  }
}

class _TabContent extends StatelessWidget {
  const _TabContent({required this.tab});

  final AppTab tab;

  @override
  Widget build(BuildContext context) {
    final localization = LocalizationHelper.getLocalizations(context);
    final theme = context.appTheme.colorScheme;
    final typography = context.appTheme.typography;
    final title = switch (tab) {
      AppTab.diary => localization.tabDiary,
      AppTab.history => localization.tabHistory,
      AppTab.stats => localization.tabStats,
      AppTab.settings => localization.tabSettings,
    };

    return Center(
      child: Text(title,
          style: typography.heading1.copyWith(color: theme.text.primary)),
    );
  }
}
