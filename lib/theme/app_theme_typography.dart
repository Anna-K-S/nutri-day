import 'package:flutter/material.dart';

import 'app_typography.dart';
import 'colors/app_color_scheme.dart';

class AppThemeTypography {
  final TextStyle heading1;
  final TextStyle heading2;
  final TextStyle bodyLarge;
  final TextStyle body;
  final TextStyle label;
  final TextStyle small;
  final TextStyle button;

  const AppThemeTypography({
    required this.heading1,
    required this.heading2,
    required this.bodyLarge,
    required this.body,
    required this.label,
    required this.small,
    required this.button,
  });

  factory AppThemeTypography.from(AppColorScheme scheme) {
    return AppThemeTypography(
      heading1: AppTypography.heading1(color: scheme.text.primary),
      heading2: AppTypography.heading2(color: scheme.text.primary),
      bodyLarge: AppTypography.bodyLarge(color: scheme.text.primary),
      body: AppTypography.body(color: scheme.text.primary),
      label: AppTypography.label(color: scheme.text.secondary),
      small: AppTypography.small(color: scheme.text.tertiary),
      button: AppTypography.button(color: scheme.buttons.onPrimary),
    );
  }

  AppThemeTypography copyWith({
    TextStyle? heading1,
    TextStyle? heading2,
    TextStyle? bodyLarge,
    TextStyle? body,
    TextStyle? label,
    TextStyle? small,
    TextStyle? button,
  }) {
    return AppThemeTypography(
      heading1: heading1 ?? this.heading1,
      heading2: heading2 ?? this.heading2,
      bodyLarge: bodyLarge ?? this.bodyLarge,
      body: body ?? this.body,
      label: label ?? this.label,
      small: small ?? this.small,
      button: button ?? this.button,
    );
  }

  AppThemeTypography lerp(AppThemeTypography other, double t) {
    return AppThemeTypography(
      heading1: TextStyle.lerp(heading1, other.heading1, t) ?? heading1,
      heading2: TextStyle.lerp(heading2, other.heading2, t) ?? heading2,
      bodyLarge: TextStyle.lerp(bodyLarge, other.bodyLarge, t) ?? bodyLarge,
      body: TextStyle.lerp(body, other.body, t) ?? body,
      label: TextStyle.lerp(label, other.label, t) ?? label,
      small: TextStyle.lerp(small, other.small, t) ?? small,
      button: TextStyle.lerp(button, other.button, t) ?? button,
    );
  }
}
