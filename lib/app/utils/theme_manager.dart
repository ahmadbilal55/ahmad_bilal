import 'package:flutter/material.dart';

final darkThemeData = ThemeData(
  colorScheme: const ColorScheme(
    primary: Color(0xFFDA0037),
    secondary: Color(0xFFEDEDED),
    background: Color(0xFFFFFFFF),
    outline: Color(0xFFFF0000),
    brightness: Brightness.dark,
    onBackground: Color(0xFF000000),
    onPrimary: Color(0xFFFFFFFF),
    onSecondary: Color(0xFF000000),
    error: Color(0xFFFF0000),
    onError: Color(0xFF0A0A0A),
    surface: Color(0xFFC5C5C5),
    onSurface: Color(0xFF000000),
  ),
  textTheme: const TextTheme(
    headline1: TextStyle(
        color: Color(0xFFFFFFFF), fontSize: 16, fontWeight: FontWeight.bold),
    subtitle1: TextStyle(
      color: Color(0xFFFFFFFF),
    ),
    subtitle2: TextStyle(
      color: Color(0xFF000000),
      fontWeight: FontWeight.bold,
    ),
    caption: TextStyle(
      fontSize: 14,
      color: Color(0xFFDA0037),
    ),
  ),
);

final lightThemeData = ThemeData(
  colorScheme: const ColorScheme(
    primary: Color(0xFFDA0037),
    secondary: Color(0xFFEDEDED),
    background: Color(0xFF171717),
    outline: Color(0xFFFF0000),
    brightness: Brightness.dark,
    onBackground: Color(0xFFFFFFFF),
    onPrimary: Color(0xFFFFFFFF),
    onSecondary: Color(0xFF000000),
    error: Color(0xFFFF0000),
    onError: Color(0xFFFFFFFF),
    surface: Color(0xFF444444),
    onSurface: Color(0xFFFFFFFF),
  ),
  textTheme: const TextTheme(
    headline1: TextStyle(
        color: Color(0xFFFFFFFF), fontSize: 16, fontWeight: FontWeight.bold),
    headline2: TextStyle(
        color: Color(0xFFFFFFFF), fontSize: 32, fontWeight: FontWeight.bold),
    subtitle1: TextStyle(
      color: Color(0xFFFFFFFF),
    ),
    subtitle2: TextStyle(
      color: Color(0xFF000000),
      fontWeight: FontWeight.bold,
    ),
    caption: TextStyle(
      fontSize: 14,
      color: Color(0xFFDA0037),
    ),
  ),
);
