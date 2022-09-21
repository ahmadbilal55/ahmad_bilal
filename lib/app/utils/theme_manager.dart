import 'package:flutter/material.dart';



final lightThemeData = ThemeData(
  colorScheme: const ColorScheme(
    primary: Color(0xFF00B3FF),
    secondary: Color(0xFF3B3B3B),
    background: Color(0xFFFCFCFC),
    outline: Color(0xFF0086BE),
    brightness: Brightness.dark,
    onBackground: Color(0xFF000000),
    onPrimary: Color(0xFF000000),
    onSecondary: Color(0xFF000000),
    error: Color(0xFF0086BE),
    onError: Color(0xFF000000),
    surface: Color(0xFF00B3FF),
    onSurface: Color(0xFF000000),
  ),
  textTheme: const TextTheme(
    headline1: TextStyle(
        color: Color(0xFF000000), fontSize: 16, fontWeight: FontWeight.bold),
    headline2: TextStyle(
        color: Color(0xFF000000), fontSize: 32, fontWeight: FontWeight.bold),
    subtitle1: TextStyle(
      color: Color(0xFF000000),
    ),
    subtitle2: TextStyle(
      color: Color(0xFF000000),
      fontWeight: FontWeight.bold,
    ),
    bodyText1: TextStyle(
      fontSize: 14,
      color: Color(0xFF00B3FF),
    ),
    caption: TextStyle(
      fontSize: 14,
      color: Color(0xFFFFFFFF),
    ),
  ),
);
