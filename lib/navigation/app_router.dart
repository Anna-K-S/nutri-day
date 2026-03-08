import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
              const NoTransitionPage(child: _TabContent(title: 'Diary')),
        ),
        GoRoute(
          path: '/history',
          pageBuilder: (context, state) =>
              const NoTransitionPage(child: _TabContent(title: 'History')),
        ),
        GoRoute(
          path: '/stats',
          pageBuilder: (context, state) =>
              const NoTransitionPage(child: _TabContent(title: 'Stats')),
        ),
        GoRoute(
          path: '/settings',
          pageBuilder: (context, state) =>
              const NoTransitionPage(child: _TabContent(title: 'Settings')),
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
    final scope = ThemeModeScope.of(context);
    final mode = scope.themeMode;
    final tab = _locationToTab(GoRouterState.of(context).uri.path);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.appTheme.colorScheme.background.background,
        title: const Text('Nutrition Diary'),
        actions: [
          IconButton(
            tooltip: 'Switch theme',
            onPressed: () => scope.setThemeMode(_nextThemeMode(mode)),
            icon: Icon(switch (mode) {
              ThemeMode.light => Icons.light_mode_outlined,
              ThemeMode.dark => Icons.dark_mode_outlined,
              ThemeMode.system => Icons.settings_suggest_outlined,
            }),
          ),
        ],
      ),
      body: child,
      bottomNavigationBar: NavigationBar(
        selectedIndex: tab.index,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.restaurant_menu_outlined),
            selectedIcon: Icon(Icons.restaurant_menu),
            label: 'Diary',
          ),
          NavigationDestination(
            icon: Icon(Icons.history_outlined),
            selectedIcon: Icon(Icons.history),
            label: 'History',
          ),
          NavigationDestination(
            icon: Icon(Icons.bar_chart_outlined),
            selectedIcon: Icon(Icons.bar_chart),
            label: 'Stats',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings_outlined),
            selectedIcon: Icon(Icons.settings),
            label: 'Settings',
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
  const _TabContent({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(title, style: Theme.of(context).textTheme.headlineLarge),
    );
  }
}
