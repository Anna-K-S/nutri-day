import 'package:flutter/material.dart';

import 'app_theme_extensions.dart';
import 'app_tokens.dart';

ThemeData buildAppTheme(Brightness brightness) {
  final isDark = brightness == Brightness.dark;
  final colors = isDark ? const AppColors.dark() : const AppColors.light();
  final typography = AppTypography.fromColors(colors);

  final base = ThemeData(
    useMaterial3: true,
    brightness: brightness,
    scaffoldBackgroundColor: colors.background,
    fontFamily: 'Inter',
  );

  return base.copyWith(
    colorScheme: ColorScheme(
      brightness: brightness,
      primary: colors.primary,
      onPrimary: isDark ? const Color(0xFF1F2937) : Colors.white,
      secondary: colors.accentBlue,
      onSecondary: isDark ? const Color(0xFF1F2937) : Colors.white,
      error: colors.danger,
      onError: Colors.white,
      surface: colors.surface,
      onSurface: colors.textPrimary,
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
      color: colors.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppTokens.radiusLg),
      ),
      elevation: 0,
      margin: EdgeInsets.zero,
    ),
    extensions: [colors, typography],
  );
}
