import 'package:flutter/material.dart';
import 'package:nutrition_diary/theme/app_theme.dart';
import 'package:nutrition_diary/theme/theme_mode_scope.dart';

void main() {
  runApp(const _ThemeModeController());
}

class _ThemeModeController extends StatefulWidget {
  const _ThemeModeController();

  @override
  State<_ThemeModeController> createState() => _ThemeModeControllerState();
}

class _ThemeModeControllerState extends State<_ThemeModeController> {
  ThemeMode _themeMode = ThemeMode.system;

  void _setThemeMode(ThemeMode mode) {
    setState(() => _themeMode = mode);
  }

  @override
  Widget build(BuildContext context) {
    return ThemeModeScope(
      themeMode: _themeMode,
      setThemeMode: _setThemeMode,
      child: const MainApp(),
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final scope = ThemeModeScope.of(context);

    return MaterialApp(
      themeMode: scope.themeMode,
      darkTheme: buildAppTheme(Brightness.dark),
      theme: buildAppTheme(Brightness.light),
      home: const _HomePage(),
    );
  }
}

class _HomePage extends StatelessWidget {
  const _HomePage();

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

  @override
  Widget build(BuildContext context) {
    final scope = ThemeModeScope.of(context);
    final mode = scope.themeMode;

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
      body: Center(
        child: Text('Hello', style: Theme.of(context).textTheme.headlineLarge),
      ),
    );
  }
}
