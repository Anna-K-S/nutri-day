import 'package:flutter/material.dart';

import 'app_typography.dart';
import 'app_theme_typography.dart';
import 'app_tokens.dart';
import 'colors/app_colors.dart';
import 'colors/app_color_scheme.dart';

@immutable
class AppThemeExtension extends ThemeExtension<AppThemeExtension> {
  final AppColorScheme colorScheme;
  final AppThemeTypography typography;

  const AppThemeExtension({
    required this.colorScheme,
    required this.typography,
  });

  @override
  ThemeExtension<AppThemeExtension> copyWith({
    AppColorScheme? colorScheme,
    AppThemeTypography? typography,
  }) {
    final nextScheme = colorScheme ?? this.colorScheme;
    return AppThemeExtension(
      colorScheme: nextScheme,
      typography: typography ?? AppThemeTypography.from(nextScheme),
    );
  }

  @override
  ThemeExtension<AppThemeExtension> lerp(
    covariant ThemeExtension<AppThemeExtension>? other,
    double t,
  ) {
    if (other is! AppThemeExtension) return this;
    final lerpedScheme = colorScheme.lerp(other.colorScheme, t);
    return AppThemeExtension(
      colorScheme: lerpedScheme,
      typography: AppThemeTypography.from(lerpedScheme),
    );
  }
}

abstract class AppTheme {
  AppTheme._();

  static const AppColorScheme _lightScheme = AppColorScheme(
    background: AppBackgroundColors(
      background: AppColorsLight.background,
      surface: AppColorsLight.surface,
      surfaceElevated: AppColorsLight.container,
      surfaceHover: AppColorsLight.divider,
      transparent: AppColorsLight.transparent,
    ),
    text: AppTextColors(
      primary: AppColorsLight.textPrimary,
      secondary: AppColorsLight.textSecondary,
      tertiary: AppColorsLight.textHint,
      disabled: AppColorsLight.textDisabled,
    ),
    buttons: AppButtonColors(
      primary: AppColorsLight.primary,
      onPrimary: AppColorsLight.onPrimary,
      primaryDisabled: AppColorsLight.primaryDisabled,
      secondary: AppColorsLight.secondary,
      onSecondary: AppColorsLight.onSecondary,
      textButton: AppColorsLight.textButton,
    ),
    borders: AppBorderColors(
      primaryButton: AppColorsLight.primaryButtonBorder,
      secondaryButton: AppColorsLight.secondaryButtonBorder,
      input: AppColorsLight.textFieldBorder,
      inputFocused: AppColorsLight.textFieldFocusedBorder,
      containerBorder: AppColorsLight.containerBorder,
      subtle: AppColorsLight.divider,
      error: AppColorsLight.error,
    ),
    textSelection: AppTextSelectionColors(
      cursor: AppColorsLight.selectionCursor,
      selection: AppColorsLight.selectionBackground,
      handle: AppColorsLight.selectionHandle,
    ),
    semantic: AppSemanticColors(
      success: AppColorsLight.checkBox,
      warning: AppColorsLight.secondary,
      info: AppColorsLight.iconPrimary,
      danger: AppColorsLight.error,
    ),
    accents: AppAccentColors(
      coral: AppColorsLight.primary,
      peach: AppColorsLight.secondary,
      pink: AppColorsLight.textPrimary,
      blue: AppColorsLight.iconPrimary,
    ),
  );

  static final AppThemeExtension _light = AppThemeExtension(
    colorScheme: _lightScheme,

    typography: AppThemeTypography.from(_lightScheme),
  );

  static const AppColorScheme _darkScheme = AppColorScheme(
    background: AppBackgroundColors(
      background: AppColorsDark.background,
      surface: AppColorsDark.surface,
      surfaceElevated: AppColorsDark.container,
      surfaceHover: AppColorsDark.divider,
      transparent: AppColorsDark.transparent,
    ),
    text: AppTextColors(
      primary: AppColorsDark.textPrimary,
      secondary: AppColorsDark.textSecondary,
      tertiary: AppColorsDark.textHint,
      disabled: AppColorsDark.textDisabled,
    ),
    buttons: AppButtonColors(
      primary: AppColorsDark.primary,
      onPrimary: AppColorsDark.onPrimary,
      primaryDisabled: AppColorsDark.primaryDisabled,
      secondary: AppColorsDark.secondary,
      onSecondary: AppColorsDark.onSecondary,
      textButton: AppColorsDark.textButton,
    ),
    borders: AppBorderColors(
      primaryButton: AppColorsDark.primaryButtonBorder,
      secondaryButton: AppColorsDark.secondaryButtonBorder,
      input: AppColorsDark.textFieldBorder,
      inputFocused: AppColorsDark.textFieldFocusedBorder,
      containerBorder: AppColorsDark.containerBorder,
      subtle: AppColorsDark.divider,
      error: AppColorsDark.error,
    ),
    textSelection: AppTextSelectionColors(
      cursor: AppColorsDark.selectionCursor,
      selection: AppColorsDark.selectionBackground,
      handle: AppColorsDark.selectionHandle,
    ),
    semantic: AppSemanticColors(
      success: AppColorsDark.checkBox,
      warning: AppColorsDark.secondary,
      info: AppColorsDark.iconPrimary,
      danger: AppColorsDark.error,
    ),
    accents: AppAccentColors(
      coral: AppColorsDark.primary,
      peach: AppColorsDark.secondary,
      pink: AppColorsDark.textPrimary,
      blue: AppColorsDark.iconPrimary,
    ),
  );

  static final AppThemeExtension _dark = AppThemeExtension(
    colorScheme: _darkScheme,
    typography: AppThemeTypography.from(_darkScheme),
  );

  static ThemeData light() => _themeData(Brightness.light, _light);

  static ThemeData dark() => _themeData(Brightness.dark, _dark);

  static ThemeData _themeData(
    Brightness brightness,
    AppThemeExtension appTheme,
  ) {
    final scheme = appTheme.colorScheme;
    final text = appTheme.typography;
    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      scaffoldBackgroundColor: scheme.background.background,
      fontFamily: AppTypography.fontFamily,
      colorScheme: ColorScheme(
        brightness: brightness,
        primary: scheme.buttons.primary,
        onPrimary: scheme.buttons.onPrimary,
        secondary: scheme.buttons.secondary,
        onSecondary: scheme.buttons.onSecondary,
        surface: scheme.background.surface,
        onSurface: scheme.text.primary,
        error: scheme.borders.error,
        onError: Colors.white,
      ),
      textTheme: TextTheme(
        headlineLarge: text.heading1,
        headlineMedium: text.heading2,
        bodyLarge: text.bodyLarge,
        bodyMedium: text.body,
        labelLarge: text.button,
        labelMedium: text.label,
        bodySmall: text.small,
      ),
      cardTheme: CardThemeData(
        color: scheme.background.surface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppTokens.radiusLg),
        ),
        elevation: 0,
        margin: EdgeInsets.zero,
      ),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: scheme.textSelection.cursor,
        selectionColor: scheme.textSelection.selection,
        selectionHandleColor: scheme.textSelection.handle,
      ),
      extensions: [appTheme],
    );
  }
}

extension AppThemeBuildContextX on BuildContext {
  AppThemeExtension get appTheme =>
      Theme.of(this).extension<AppThemeExtension>()!;
  AppColorScheme get appColors => appTheme.colorScheme;
  AppThemeTypography get appTypography => appTheme.typography;
}

ThemeData buildAppTheme(Brightness brightness) {
  return brightness == Brightness.dark ? AppTheme.dark() : AppTheme.light();
}
