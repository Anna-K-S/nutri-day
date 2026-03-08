// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// Directory path: assets/icons/nav_bar
  $AssetsIconsNavBarGen get navBar => const $AssetsIconsNavBarGen();

  /// File path: assets/icons/plus.svg
  SvgGenImage get plus => const SvgGenImage('assets/icons/plus.svg');

  /// Directory path: assets/icons/theme_mode
  $AssetsIconsThemeModeGen get themeMode => const $AssetsIconsThemeModeGen();

  /// File path: assets/icons/trash.svg
  SvgGenImage get trash => const SvgGenImage('assets/icons/trash.svg');

  /// List of all assets
  List<SvgGenImage> get values => [plus, trash];
}

class $AssetsIconsNavBarGen {
  const $AssetsIconsNavBarGen();

  /// File path: assets/icons/nav_bar/bar-chart.svg
  SvgGenImage get barChart =>
      const SvgGenImage('assets/icons/nav_bar/bar-chart.svg');

  /// File path: assets/icons/nav_bar/clock-history.svg
  SvgGenImage get clockHistory =>
      const SvgGenImage('assets/icons/nav_bar/clock-history.svg');

  /// File path: assets/icons/nav_bar/fork-knife.svg
  SvgGenImage get forkKnife =>
      const SvgGenImage('assets/icons/nav_bar/fork-knife.svg');

  /// File path: assets/icons/nav_bar/gear.svg
  SvgGenImage get gear => const SvgGenImage('assets/icons/nav_bar/gear.svg');

  /// List of all assets
  List<SvgGenImage> get values => [barChart, clockHistory, forkKnife, gear];
}

class $AssetsIconsThemeModeGen {
  const $AssetsIconsThemeModeGen();

  /// File path: assets/icons/theme_mode/moon.svg
  SvgGenImage get moon => const SvgGenImage('assets/icons/theme_mode/moon.svg');

  /// File path: assets/icons/theme_mode/sun.svg
  SvgGenImage get sun => const SvgGenImage('assets/icons/theme_mode/sun.svg');

  /// File path: assets/icons/theme_mode/theme_auto.svg
  SvgGenImage get themeAuto =>
      const SvgGenImage('assets/icons/theme_mode/theme_auto.svg');

  /// List of all assets
  List<SvgGenImage> get values => [moon, sun, themeAuto];
}

class Assets {
  const Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    _svg.ColorMapper? colorMapper,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
        colorMapper: colorMapper,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
