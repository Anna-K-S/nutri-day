import 'app_colors.dart';
import 'app_color_scheme.dart';

abstract final class AppColorPalettes {
  static const AppColorScheme light = AppColorScheme(
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
      primaryDisabled: AppColorsLight.primaryDisabled,
      onPrimary: AppColorsLight.onPrimary,
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
  static const AppColorScheme dark = AppColorScheme(
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
      primaryDisabled: AppColorsDark.primaryDisabled,
      onPrimary: AppColorsDark.onPrimary,
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
}
