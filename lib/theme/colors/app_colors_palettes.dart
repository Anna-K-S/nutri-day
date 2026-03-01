import 'package:flutter/material.dart';

import 'app_color_scheme.dart';

abstract final class AppColorsLight {
  static const AppColorScheme scheme = AppColorScheme(
    background: AppBackgroundColors(
      background: Color(0xFFF8FAFC),
      surface: Color(0xFFFFFFFF),
      surfaceElevated: Color(0xFFF1F5F9),
      surfaceHover: Color(0xFFF3F4F6),
      transparent: Colors.transparent,
    ),
    text: AppTextColors(
      primary: Color(0xFF1F2937),
      secondary: Color(0xFF4B5563),
      tertiary: Color(0xFF6B7280),
      disabled: Color(0xFF9CA3AF),
    ),
    buttons: AppButtonColors(
      primary: Color(0xFF10B981),
      primaryDisabled: Color(0xFF9CA3AF),
      onPrimary: Colors.white,
      secondary: Color(0xFF60A5FA),
      onSecondary: Colors.white,
      textButton: Color(0xFF10B981),
    ),
    borders: AppBorderColors(
      primaryButton: Colors.transparent,
      secondaryButton: Color(0xFFE5E7EB),
      input: Color(0xFFE5E7EB),
      inputFocused: Color(0xFF10B981),
      containerBorder: Color(0xFFE5E7EB),
      subtle: Color(0xFFF3F4F6),
      error: Color(0xFFEF4444),
    ),
    textSelection: AppTextSelectionColors(
      cursor: Color(0xFF10B981),
      selection: Color(0x336EE7B7),
      handle: Color(0xFF10B981),
    ),
    semantic: AppSemanticColors(
      success: Color(0xFF10B981),
      warning: Color(0xFFF59E0B),
      info: Color(0xFF3B82F6),
      danger: Color(0xFFEF4444),
    ),
    accents: AppAccentColors(
      coral: Color(0xFFFFAB91),
      peach: Color(0xFFFDBA74),
      pink: Color(0xFFF472B6),
      blue: Color(0xFF60A5FA),
    ),
  );
}

abstract final class AppColorsDark {
  static const AppColorScheme scheme = AppColorScheme(
    background: AppBackgroundColors(
      background: Color(0xFF0F172A),
      surface: Color(0xFF1E293B),
      surfaceElevated: Color(0xFF334155),
      surfaceHover: Color(0xFF475569),
      transparent: Colors.transparent,
    ),
    text: AppTextColors(
      primary: Color(0xFFF1F5F9),
      secondary: Color(0xFFCBD5E1),
      tertiary: Color(0xFF94A3B8),
      disabled: Color(0xFF64748B),
    ),
    buttons: AppButtonColors(
      primary: Color(0xFF5EEAD4),
      primaryDisabled: Color(0xFF64748B),
      onPrimary: Color(0xFF1F2937),
      secondary: Color(0xFF60A5FA),
      onSecondary: Color(0xFF1F2937),
      textButton: Color(0xFF5EEAD4),
    ),
    borders: AppBorderColors(
      primaryButton: Colors.transparent,
      secondaryButton: Color(0xFF334155),
      input: Color(0xFF334155),
      inputFocused: Color(0xFF5EEAD4),
      containerBorder: Color(0xFF334155),
      subtle: Color(0xFF1E293B),
      error: Color(0xFFF87171),
    ),
    textSelection: AppTextSelectionColors(
      cursor: Color(0xFF5EEAD4),
      selection: Color(0x332DD4BF),
      handle: Color(0xFF5EEAD4),
    ),
    semantic: AppSemanticColors(
      success: Color(0xFF34D399),
      warning: Color(0xFFFBBF24),
      info: Color(0xFF60A5FA),
      danger: Color(0xFFF87171),
    ),
    accents: AppAccentColors(
      coral: Color(0xFFFDBA74),
      peach: Color(0xFFF97316),
      pink: Color(0xFFF472B6),
      blue: Color(0xFF60A5FA),
    ),
  );
}
