import 'package:flutter/material.dart';

class AppColorScheme {
  final AppBackgroundColors background;
  final AppTextColors text;
  final AppButtonColors buttons;
  final AppBorderColors borders;
  final AppTextSelectionColors textSelection;
  final AppSemanticColors semantic;
  final AppAccentColors accents;

  const AppColorScheme({
    required this.background,
    required this.text,
    required this.buttons,
    required this.borders,
    required this.textSelection,
    required this.semantic,
    required this.accents,
  });

  AppColorScheme copyWith({
    AppBackgroundColors? background,
    AppTextColors? text,
    AppButtonColors? buttons,
    AppBorderColors? borders,
    AppTextSelectionColors? textSelection,
    AppSemanticColors? semantic,
    AppAccentColors? accents,
  }) {
    return AppColorScheme(
      background: background ?? this.background,
      text: text ?? this.text,
      buttons: buttons ?? this.buttons,
      borders: borders ?? this.borders,
      textSelection: textSelection ?? this.textSelection,
      semantic: semantic ?? this.semantic,
      accents: accents ?? this.accents,
    );
  }

  AppColorScheme lerp(AppColorScheme other, double t) {
    return AppColorScheme(
      background: background.lerp(other.background, t),
      text: text.lerp(other.text, t),
      buttons: buttons.lerp(other.buttons, t),
      borders: borders.lerp(other.borders, t),
      textSelection: textSelection.lerp(other.textSelection, t),
      semantic: semantic.lerp(other.semantic, t),
      accents: accents.lerp(other.accents, t),
    );
  }
}

class AppBackgroundColors {
  final Color background;
  final Color surface;
  final Color surfaceElevated;
  final Color surfaceHover;
  final Color transparent;

  const AppBackgroundColors({
    required this.background,
    required this.surface,
    required this.surfaceElevated,
    required this.surfaceHover,
    required this.transparent,
  });

  AppBackgroundColors copyWith({
    Color? background,
    Color? surface,
    Color? surfaceElevated,
    Color? surfaceHover,
    Color? transparent,
  }) {
    return AppBackgroundColors(
      background: background ?? this.background,
      surface: surface ?? this.surface,
      surfaceElevated: surfaceElevated ?? this.surfaceElevated,
      surfaceHover: surfaceHover ?? this.surfaceHover,
      transparent: transparent ?? this.transparent,
    );
  }

  AppBackgroundColors lerp(AppBackgroundColors other, double t) {
    return AppBackgroundColors(
      background: Color.lerp(background, other.background, t) ?? background,
      surface: Color.lerp(surface, other.surface, t) ?? surface,
      surfaceElevated:
          Color.lerp(surfaceElevated, other.surfaceElevated, t) ??
          surfaceElevated,
      surfaceHover:
          Color.lerp(surfaceHover, other.surfaceHover, t) ?? surfaceHover,
      transparent: Color.lerp(transparent, other.transparent, t) ?? transparent,
    );
  }
}

class AppTextColors {
  final Color primary;
  final Color secondary;
  final Color tertiary;
  final Color disabled;

  const AppTextColors({
    required this.primary,
    required this.secondary,
    required this.tertiary,
    required this.disabled,
  });

  AppTextColors copyWith({
    Color? primary,
    Color? secondary,
    Color? tertiary,
    Color? disabled,
  }) {
    return AppTextColors(
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      tertiary: tertiary ?? this.tertiary,
      disabled: disabled ?? this.disabled,
    );
  }

  AppTextColors lerp(AppTextColors other, double t) {
    return AppTextColors(
      primary: Color.lerp(primary, other.primary, t) ?? primary,
      secondary: Color.lerp(secondary, other.secondary, t) ?? secondary,
      tertiary: Color.lerp(tertiary, other.tertiary, t) ?? tertiary,
      disabled: Color.lerp(disabled, other.disabled, t) ?? disabled,
    );
  }
}

class AppButtonColors {
  final Color primary;
  final Color primaryDisabled;
  final Color onPrimary;
  final Color secondary;
  final Color onSecondary;
  final Color textButton;

  const AppButtonColors({
    required this.primary,
    required this.primaryDisabled,
    required this.onPrimary,
    required this.secondary,
    required this.onSecondary,
    required this.textButton,
  });

  AppButtonColors copyWith({
    Color? primary,
    Color? primaryDisabled,
    Color? onPrimary,
    Color? secondary,
    Color? onSecondary,
    Color? textButton,
  }) {
    return AppButtonColors(
      primary: primary ?? this.primary,
      primaryDisabled: primaryDisabled ?? this.primaryDisabled,
      onPrimary: onPrimary ?? this.onPrimary,
      secondary: secondary ?? this.secondary,
      onSecondary: onSecondary ?? this.onSecondary,
      textButton: textButton ?? this.textButton,
    );
  }

  AppButtonColors lerp(AppButtonColors other, double t) {
    return AppButtonColors(
      primary: Color.lerp(primary, other.primary, t) ?? primary,
      primaryDisabled:
          Color.lerp(primaryDisabled, other.primaryDisabled, t) ??
          primaryDisabled,
      onPrimary: Color.lerp(onPrimary, other.onPrimary, t) ?? onPrimary,
      secondary: Color.lerp(secondary, other.secondary, t) ?? secondary,
      onSecondary: Color.lerp(onSecondary, other.onSecondary, t) ?? onSecondary,
      textButton: Color.lerp(textButton, other.textButton, t) ?? textButton,
    );
  }
}

class AppBorderColors {
  final Color primaryButton;
  final Color secondaryButton;
  final Color input;
  final Color inputFocused;
  final Color containerBorder;
  final Color subtle;
  final Color error;

  const AppBorderColors({
    required this.primaryButton,
    required this.secondaryButton,
    required this.input,
    required this.inputFocused,
    required this.containerBorder,
    required this.subtle,
    required this.error,
  });

  AppBorderColors copyWith({
    Color? primaryButton,
    Color? secondaryButton,
    Color? input,
    Color? inputFocused,
    Color? containerBorder,
    Color? subtle,
    Color? error,
  }) {
    return AppBorderColors(
      primaryButton: primaryButton ?? this.primaryButton,
      secondaryButton: secondaryButton ?? this.secondaryButton,
      input: input ?? this.input,
      inputFocused: inputFocused ?? this.inputFocused,
      containerBorder: containerBorder ?? this.containerBorder,
      subtle: subtle ?? this.subtle,
      error: error ?? this.error,
    );
  }

  AppBorderColors lerp(AppBorderColors other, double t) {
    return AppBorderColors(
      primaryButton:
          Color.lerp(primaryButton, other.primaryButton, t) ?? primaryButton,
      secondaryButton:
          Color.lerp(secondaryButton, other.secondaryButton, t) ??
          secondaryButton,
      input: Color.lerp(input, other.input, t) ?? input,
      inputFocused:
          Color.lerp(inputFocused, other.inputFocused, t) ?? inputFocused,
      containerBorder:
          Color.lerp(containerBorder, other.containerBorder, t) ??
          containerBorder,
      subtle: Color.lerp(subtle, other.subtle, t) ?? subtle,
      error: Color.lerp(error, other.error, t) ?? error,
    );
  }
}

class AppTextSelectionColors {
  final Color cursor;
  final Color selection;
  final Color handle;

  const AppTextSelectionColors({
    required this.cursor,
    required this.selection,
    required this.handle,
  });

  AppTextSelectionColors copyWith({
    Color? cursor,
    Color? selection,
    Color? handle,
  }) {
    return AppTextSelectionColors(
      cursor: cursor ?? this.cursor,
      selection: selection ?? this.selection,
      handle: handle ?? this.handle,
    );
  }

  AppTextSelectionColors lerp(AppTextSelectionColors other, double t) {
    return AppTextSelectionColors(
      cursor: Color.lerp(cursor, other.cursor, t) ?? cursor,
      selection: Color.lerp(selection, other.selection, t) ?? selection,
      handle: Color.lerp(handle, other.handle, t) ?? handle,
    );
  }
}

class AppSemanticColors {
  final Color success;
  final Color warning;
  final Color info;
  final Color danger;

  const AppSemanticColors({
    required this.success,
    required this.warning,
    required this.info,
    required this.danger,
  });

  AppSemanticColors copyWith({
    Color? success,
    Color? warning,
    Color? info,
    Color? danger,
  }) {
    return AppSemanticColors(
      success: success ?? this.success,
      warning: warning ?? this.warning,
      info: info ?? this.info,
      danger: danger ?? this.danger,
    );
  }

  AppSemanticColors lerp(AppSemanticColors other, double t) {
    return AppSemanticColors(
      success: Color.lerp(success, other.success, t) ?? success,
      warning: Color.lerp(warning, other.warning, t) ?? warning,
      info: Color.lerp(info, other.info, t) ?? info,
      danger: Color.lerp(danger, other.danger, t) ?? danger,
    );
  }
}

class AppAccentColors {
  final Color coral;
  final Color peach;
  final Color pink;
  final Color blue;

  const AppAccentColors({
    required this.coral,
    required this.peach,
    required this.pink,
    required this.blue,
  });

  AppAccentColors copyWith({
    Color? coral,
    Color? peach,
    Color? pink,
    Color? blue,
  }) {
    return AppAccentColors(
      coral: coral ?? this.coral,
      peach: peach ?? this.peach,
      pink: pink ?? this.pink,
      blue: blue ?? this.blue,
    );
  }

  AppAccentColors lerp(AppAccentColors other, double t) {
    return AppAccentColors(
      coral: Color.lerp(coral, other.coral, t) ?? coral,
      peach: Color.lerp(peach, other.peach, t) ?? peach,
      pink: Color.lerp(pink, other.pink, t) ?? pink,
      blue: Color.lerp(blue, other.blue, t) ?? blue,
    );
  }
}
