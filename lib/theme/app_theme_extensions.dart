import 'package:flutter/material.dart';

import 'app_typography.dart';

@immutable
class AppColors extends ThemeExtension<AppColors> {
  final Color background;
  final Color surface;
  final Color surfaceElevated;
  final Color primary;
  final Color accentBlue;
  final Color success;
  final Color warning;
  final Color danger;
  final Color info;
  final Color textPrimary;
  final Color textSecondary;
  final Color textTertiary;
  final Color border;

  const AppColors({
    required this.background,
    required this.surface,
    required this.surfaceElevated,
    required this.primary,
    required this.accentBlue,
    required this.success,
    required this.warning,
    required this.danger,
    required this.info,
    required this.textPrimary,
    required this.textSecondary,
    required this.textTertiary,
    required this.border,
  });

  const AppColors.light()
      : background = const Color(0xFFF8FAFC),
        surface = const Color(0xFFFFFFFF),
        surfaceElevated = const Color(0xFFF1F5F9),
        primary = const Color(0xFF10B981),
        accentBlue = const Color(0xFF60A5FA),
        success = const Color(0xFF10B981),
        warning = const Color(0xFFF59E0B),
        danger = const Color(0xFFEF4444),
        info = const Color(0xFF3B82F6),
        textPrimary = const Color(0xFF1F2937),
        textSecondary = const Color(0xFF4B5563),
        textTertiary = const Color(0xFF6B7280),
        border = const Color(0xFFE5E7EB);

  const AppColors.dark()
      : background = const Color(0xFF0F172A),
        surface = const Color(0xFF1E293B),
        surfaceElevated = const Color(0xFF334155),
        primary = const Color(0xFF5EEAD4),
        accentBlue = const Color(0xFF60A5FA),
        success = const Color(0xFF34D399),
        warning = const Color(0xFFFBBF24),
        danger = const Color(0xFFF87171),
        info = const Color(0xFF60A5FA),
        textPrimary = const Color(0xFFF1F5F9),
        textSecondary = const Color(0xFFCBD5E1),
        textTertiary = const Color(0xFF94A3B8),
        border = const Color(0xFF334155);

  @override
  AppColors copyWith({
    Color? background,
    Color? surface,
    Color? surfaceElevated,
    Color? primary,
    Color? accentBlue,
    Color? success,
    Color? warning,
    Color? danger,
    Color? info,
    Color? textPrimary,
    Color? textSecondary,
    Color? textTertiary,
    Color? border,
  }) {
    return AppColors(
      background: background ?? this.background,
      surface: surface ?? this.surface,
      surfaceElevated: surfaceElevated ?? this.surfaceElevated,
      primary: primary ?? this.primary,
      accentBlue: accentBlue ?? this.accentBlue,
      success: success ?? this.success,
      warning: warning ?? this.warning,
      danger: danger ?? this.danger,
      info: info ?? this.info,
      textPrimary: textPrimary ?? this.textPrimary,
      textSecondary: textSecondary ?? this.textSecondary,
      textTertiary: textTertiary ?? this.textTertiary,
      border: border ?? this.border,
    );
  }

  @override
  AppColors lerp(covariant ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) return this;
    return AppColors(
      background: Color.lerp(background, other.background, t) ?? background,
      surface: Color.lerp(surface, other.surface, t) ?? surface,
      surfaceElevated: Color.lerp(surfaceElevated, other.surfaceElevated, t) ?? surfaceElevated,
      primary: Color.lerp(primary, other.primary, t) ?? primary,
      accentBlue: Color.lerp(accentBlue, other.accentBlue, t) ?? accentBlue,
      success: Color.lerp(success, other.success, t) ?? success,
      warning: Color.lerp(warning, other.warning, t) ?? warning,
      danger: Color.lerp(danger, other.danger, t) ?? danger,
      info: Color.lerp(info, other.info, t) ?? info,
      textPrimary: Color.lerp(textPrimary, other.textPrimary, t) ?? textPrimary,
      textSecondary: Color.lerp(textSecondary, other.textSecondary, t) ?? textSecondary,
      textTertiary: Color.lerp(textTertiary, other.textTertiary, t) ?? textTertiary,
      border: Color.lerp(border, other.border, t) ?? border,
    );
  }
}

@immutable
class AppTypography extends ThemeExtension<AppTypography> {
  final TextStyle heading1;
  final TextStyle heading2;
  final TextStyle bodyLarge;
  final TextStyle body;
  final TextStyle label;
  final TextStyle small;
  final TextStyle button;

  const AppTypography({
    required this.heading1,
    required this.heading2,
    required this.bodyLarge,
    required this.body,
    required this.label,
    required this.small,
    required this.button,
  });

  factory AppTypography.fromColors(AppColors colors) {
    return AppTypography(
      heading1: AppTextStyles.heading1(colors.textPrimary),
      heading2: AppTextStyles.heading2(colors.textPrimary),
      bodyLarge: AppTextStyles.bodyLarge(colors.textPrimary),
      body: AppTextStyles.body(colors.textPrimary),
      label: AppTextStyles.label(colors.textSecondary),
      small: AppTextStyles.small(colors.textTertiary),
      button: AppTextStyles.button(colors.textPrimary),
    );
  }

  @override
  AppTypography copyWith({
    TextStyle? heading1,
    TextStyle? heading2,
    TextStyle? bodyLarge,
    TextStyle? body,
    TextStyle? label,
    TextStyle? small,
    TextStyle? button,
  }) {
    return AppTypography(
      heading1: heading1 ?? this.heading1,
      heading2: heading2 ?? this.heading2,
      bodyLarge: bodyLarge ?? this.bodyLarge,
      body: body ?? this.body,
      label: label ?? this.label,
      small: small ?? this.small,
      button: button ?? this.button,
    );
  }

  @override
  AppTypography lerp(covariant ThemeExtension<AppTypography>? other, double t) {
    if (other is! AppTypography) return this;
    return AppTypography(
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

extension ThemeContextX on BuildContext {
  AppColors get appColors => Theme.of(this).extension<AppColors>()!;
  AppTypography get appTypography => Theme.of(this).extension<AppTypography>()!;
}
