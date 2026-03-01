import 'package:flutter/material.dart';

class ThemeModeScope extends InheritedWidget {
  const ThemeModeScope({
    super.key,
    required this.themeMode,
    required this.setThemeMode,
    required super.child,
  });

  final ThemeMode themeMode;
  final ValueChanged<ThemeMode> setThemeMode;

  static ThemeModeScope of(BuildContext context) {
    final scope = context.dependOnInheritedWidgetOfExactType<ThemeModeScope>();
    assert(scope != null, 'ThemeModeScope not found. Wrap app with ThemeModeScope.');
    return scope!;
  }

  @override
  bool updateShouldNotify(ThemeModeScope oldWidget) {
    return themeMode != oldWidget.themeMode;
  }
}
