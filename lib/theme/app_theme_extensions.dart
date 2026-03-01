import 'package:flutter/material.dart';

import 'app_theme_typography.dart';
import 'colors/app_color_scheme.dart';

@immutable
class AppThemeData extends ThemeExtension<AppThemeData> {
  final AppColorScheme colors;
  final AppThemeTypography typography;

  const AppThemeData({
    required this.colors,
    required this.typography,
  });

  @override
  AppThemeData copyWith({
    AppColorScheme? colors,
    AppThemeTypography? typography,
  }) {
    return AppThemeData(
      colors: colors ?? this.colors,
      typography: typography ?? this.typography,
    );
  }

  @override
  AppThemeData lerp(covariant ThemeExtension<AppThemeData>? other, double t) {
    if (other is! AppThemeData) return this;
    return AppThemeData(
      colors: colors.lerp(other.colors, t),
      typography: typography.lerp(other.typography, t),
    );
  }
}

extension ThemeContextX on BuildContext {
  AppThemeData get appTheme => Theme.of(this).extension<AppThemeData>()!;
  AppColorScheme get appColors => appTheme.colors;
  AppThemeTypography get appTypography => appTheme.typography;
}
