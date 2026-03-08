import 'package:flutter/material.dart';
import 'package:nutrition_diary/resources/fonts/fonts.dart';

class AppTypography {
  static const String fontFamily = FontFamily.raleway;

  final AppHeaderTypography header;
  final AppButtonTypography button;
  final AppBodyTypography body;

  const AppTypography()
    : header = const AppHeaderTypography(),
      button = const AppButtonTypography(),
      body = const AppBodyTypography();

  const AppTypography._({
    required this.header,
    required this.button,
    required this.body,
  });

  AppTypography copyWith({
    AppHeaderTypography? header,
    AppButtonTypography? button,
    AppBodyTypography? body,
  }) => AppTypography._(
    header: header ?? this.header,
    button: button ?? this.button,
    body: body ?? this.body,
  );
}

class AppButtonTypography {
  final TextStyle buttonS;
  final TextStyle buttonM;
  final TextStyle buttonL;

  const AppButtonTypography()
    : buttonS = const TextStyle(
        fontFamily: AppTypography.fontFamily,
        fontWeight: FontWeight.w600,
        fontSize: 14,
        height: 1.2,
        letterSpacing: 0,
      ),
      buttonM = const TextStyle(
        fontFamily: AppTypography.fontFamily,
        fontWeight: FontWeight.w600,
        fontSize: 16,
        height: 1.2,
        letterSpacing: 0,
      ),
      buttonL = const TextStyle(
        fontFamily: AppTypography.fontFamily,
        fontWeight: FontWeight.w600,
        fontSize: 18,
        height: 1.2,
        letterSpacing: 0,
      );

  const AppButtonTypography._({
    required this.buttonS,
    required this.buttonM,
    required this.buttonL,
  });

  AppButtonTypography copyWith({
    TextStyle? buttonS,
    TextStyle? buttonM,
    TextStyle? buttonL,
  }) => AppButtonTypography._(
    buttonS: buttonS ?? this.buttonS,
    buttonM: buttonM ?? this.buttonM,
    buttonL: buttonL ?? this.buttonL,
  );
}

class AppBodyTypography {
  final TextStyle regularXS;
  final TextStyle regularS;
  final TextStyle regularM;

  final TextStyle mediumXXS;
  final TextStyle mediumXS;
  final TextStyle mediumS;
  final TextStyle mediumM;

  final TextStyle semiBoldXS;
  final TextStyle semiBoldS;
  final TextStyle semiBoldM;
  final TextStyle semiBoldL;

  const AppBodyTypography()
    : regularXS = const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        fontFamily: AppTypography.fontFamily,
        height: 1.3,
        letterSpacing: 0,
      ),
      regularS = const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontFamily: AppTypography.fontFamily,
        height: 1.3,
        letterSpacing: 0,
      ),
      regularM = const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        fontFamily: AppTypography.fontFamily,
        height: 1.3,
        letterSpacing: 0,
      ),
      mediumXXS = const TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w500,
        fontFamily: AppTypography.fontFamily,
        height: 1.3,
        letterSpacing: 0,
      ),
      mediumXS = const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        fontFamily: AppTypography.fontFamily,
        height: 1.3,
        letterSpacing: 0,
      ),
      mediumS = const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        fontFamily: AppTypography.fontFamily,
        height: 1.3,
        letterSpacing: 0,
      ),
      mediumM = const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        fontFamily: AppTypography.fontFamily,
        height: 1.3,
        letterSpacing: 0,
      ),
      semiBoldXS = const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        fontFamily: AppTypography.fontFamily,
        height: 1.3,
        letterSpacing: 0,
      ),
      semiBoldS = const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        fontFamily: AppTypography.fontFamily,
        height: 1.3,
        letterSpacing: 0,
      ),
      semiBoldM = const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        fontFamily: AppTypography.fontFamily,
        height: 1.3,
        letterSpacing: 0,
      ),
      semiBoldL = const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        fontFamily: AppTypography.fontFamily,
        height: 1.3,
        letterSpacing: 0,
      );

  const AppBodyTypography._({
    required this.regularXS,
    required this.regularS,
    required this.regularM,
    required this.mediumXXS,
    required this.mediumXS,
    required this.mediumS,
    required this.mediumM,
    required this.semiBoldXS,
    required this.semiBoldS,
    required this.semiBoldM,
    required this.semiBoldL,
  });

  AppBodyTypography copyWith({
    TextStyle? regularXS,
    TextStyle? regularS,
    TextStyle? regularM,
    TextStyle? mediumXXS,
    TextStyle? mediumXS,
    TextStyle? mediumS,
    TextStyle? mediumM,
    TextStyle? semiBoldXS,
    TextStyle? semiBoldS,
    TextStyle? semiBoldM,
    TextStyle? semiBoldL,
  }) => AppBodyTypography._(
    regularXS: regularXS ?? this.regularXS,
    regularS: regularS ?? this.regularS,
    regularM: regularM ?? this.regularM,
    mediumXXS: mediumXXS ?? this.mediumXXS,
    mediumXS: mediumXS ?? this.mediumXS,
    mediumS: mediumS ?? this.mediumS,
    mediumM: mediumM ?? this.mediumM,
    semiBoldXS: semiBoldXS ?? this.semiBoldXS,
    semiBoldS: semiBoldS ?? this.semiBoldS,
    semiBoldM: semiBoldM ?? this.semiBoldM,
    semiBoldL: semiBoldL ?? this.semiBoldL,
  );
}

class AppHeaderTypography {
  final TextStyle h1;
  final TextStyle h2;
  final TextStyle h3;
  final TextStyle h4;

  const AppHeaderTypography()
    : h1 = const TextStyle(
        fontSize: 28,
        fontFamily: AppTypography.fontFamily,
        fontWeight: FontWeight.w700,
        height: 1.3,
        letterSpacing: 0,
      ),
      h2 = const TextStyle(
        fontFamily: AppTypography.fontFamily,
        fontWeight: FontWeight.w700,
        fontSize: 24,
        height: 1.3,
        letterSpacing: 0,
      ),
      h3 = const TextStyle(
        fontFamily: AppTypography.fontFamily,
        fontWeight: FontWeight.w700,
        fontSize: 18,
        height: 1.3,
        letterSpacing: 0,
      ),
      h4 = const TextStyle(
        fontFamily: AppTypography.fontFamily,
        fontWeight: FontWeight.w700,
        fontSize: 16,
        height: 1.3,
        letterSpacing: 0,
      );

  const AppHeaderTypography._({
    required this.h1,
    required this.h2,
    required this.h3,
    required this.h4,
  });

  AppHeaderTypography copyWith({
    TextStyle? h1,
    TextStyle? h2,
    TextStyle? h3,
    TextStyle? h4,
  }) => AppHeaderTypography._(
    h1: h1 ?? this.h1,
    h2: h2 ?? this.h2,
    h3: h3 ?? this.h3,
    h4: h4 ?? this.h4,
  );
}
