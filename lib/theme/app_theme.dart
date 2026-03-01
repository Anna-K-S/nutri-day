import 'package:flutter/material.dart';

import 'app_theme_extensions.dart';
import 'app_theme_typography.dart';
import 'app_tokens.dart';
import 'colors/app_colors_palettes.dart';

ThemeData buildAppTheme(Brightness brightness) {
  final isDark = brightness == Brightness.dark;
  final colorScheme = isDark ? AppColorsDark.scheme : AppColorsLight.scheme;
  final typography = AppThemeTypography.from(colorScheme);
  final appTheme = AppThemeData(colors: colorScheme, typography: typography);

  final base = ThemeData(
    useMaterial3: true,
    brightness: brightness,
    scaffoldBackgroundColor: colorScheme.background.background,
    fontFamily: 'Inter',
  );

  return base.copyWith(
    colorScheme: ColorScheme(
      brightness: brightness,
      primary: colorScheme.buttons.primary,
      onPrimary: colorScheme.buttons.onPrimary,
      secondary: colorScheme.buttons.secondary,
      onSecondary: colorScheme.buttons.onSecondary,
      error: colorScheme.semantic.danger,
      onError: Colors.red,
      surface: colorScheme.background.surface,
      onSurface: colorScheme.text.primary,
    ),
    textTheme: TextTheme(
      headlineLarge: typography.heading1,
      headlineMedium: typography.heading2,
      bodyLarge: typography.bodyLarge,
      bodyMedium: typography.body,
      labelLarge: typography.button,
      labelMedium: typography.label,
      bodySmall: typography.small,
    ),
    cardTheme: CardThemeData(
      color: colorScheme.background.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppTokens.radiusLg),
      ),
      elevation: 0,
      margin: EdgeInsets.zero,
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: colorScheme.textSelection.cursor,
      selectionColor: colorScheme.textSelection.selection,
      selectionHandleColor: colorScheme.textSelection.handle,
    ),
    extensions: [appTheme],
  );
}
