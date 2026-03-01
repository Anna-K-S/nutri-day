import 'package:flutter/material.dart';

abstract final class AppTextStyles {
  static TextStyle heading1(Color color) => TextStyle(
        color: color,
        fontSize: 30,
        fontWeight: FontWeight.w700,
        height: 1.25,
        letterSpacing: -0.5,
      );

  static TextStyle heading2(Color color) => TextStyle(
        color: color,
        fontSize: 24,
        fontWeight: FontWeight.w600,
        height: 1.25,
        letterSpacing: 0,
      );

  static TextStyle bodyLarge(Color color) => TextStyle(
        color: color,
        fontSize: 18,
        fontWeight: FontWeight.w500,
        height: 1.5,
        letterSpacing: 0,
      );

  static TextStyle body(Color color) => TextStyle(
        color: color,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 1.5,
        letterSpacing: 0,
      );

  static TextStyle label(Color color) => TextStyle(
        color: color,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        height: 1.5,
        letterSpacing: -0.5,
      );

  static TextStyle small(Color color) => TextStyle(
        color: color,
        fontSize: 12,
        fontWeight: FontWeight.w400,
        height: 1.5,
        letterSpacing: 0,
      );

  static TextStyle button(Color color) => TextStyle(
        color: color,
        fontSize: 16,
        fontWeight: FontWeight.w600,
        height: 1.25,
        letterSpacing: 1,
      );
}
