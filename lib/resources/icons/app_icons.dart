import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Paths to SVG icons. Use [AppIcons.get] to build a widget with optional color/size.
abstract class AppIcons {
  AppIcons._();

  static const String _navBar = 'assets/icons/nav_bar';
  static const String _themeMode = 'assets/icons/theme_mode';

  // Nav bar
  static const String diary = '$_navBar/fork-knife.svg';
  static const String history = '$_navBar/clock-history.svg';
  static const String stats = '$_navBar/bar-chart.svg';
  static const String settings = '$_navBar/gear.svg';

  // Theme
  static const String themeSun = '$_themeMode/sun.svg';
  static const String themeMoon = '$_themeMode/moon.svg';
  static const String themeAuto = '$_themeMode/theme_auto.svg';

  /// Returns an [SvgPicture] for the given asset path with optional [color] and [size].
  static Widget get(
    String assetPath, {
    Color? color,
    double? width,
    double? height,
  }) {
    return SvgPicture.asset(
      assetPath,
      width: width ?? 24,
      height: height ?? 24,
      colorFilter: color != null
          ? ColorFilter.mode(color, BlendMode.srcIn)
          : null,
    );
  }
}
