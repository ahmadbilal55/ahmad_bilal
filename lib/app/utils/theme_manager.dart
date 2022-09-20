import 'package:flutter/material.dart';

final lightThemeData = ThemeData(
    brightness: Brightness.dark,
    primaryColor: const Color(0xff041C32),
    dividerColor: const Color(0x80000000),
    backgroundColor: const Color(0xFFFFFFFF),
    accentColor: const Color(0xFF00AEFF),
    cardColor: const Color(0xFFFFFFFF),
    canvasColor: const Color(0xFF00AEFF),
    textTheme: const TextTheme(
      ///Used for screen title with dark background
      headline1: TextStyle(
        color: Color(0xFFFFFFFF),
        fontWeight: FontWeight.bold,
      ),

      ///Used for screen title with light background
      headline2: TextStyle(
        color: Color(0xFF000000),
        fontWeight: FontWeight.bold,
      ),

      ///Used in skill titles
      headline3: TextStyle(
        color: Color(0xFF000000),
        fontWeight: FontWeight.bold,
      ),

      /// Used for AND in projects View
      headline4: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Color(0xFF000000),
      ),

      ///Testimonial Title
      headline5: TextStyle(
        fontSize: 18,
        color: Color(0xFF000000),
        fontWeight: FontWeight.bold,
      ),

      ///Used for name
      headline6: TextStyle(
        fontSize: 42,
        fontWeight: FontWeight.bold,
        color: Color(0xFF000000),
      ),

      /// Used for skill experience
      subtitle1: TextStyle(
        color: Color(0xFF00AEFF),
      ),

      /// Used for skill details
      subtitle2: TextStyle(
        color: Color(0xFF000000),
        fontWeight: FontWeight.bold,
      ),

      ///Testimonial Text
      caption: TextStyle(
          fontSize: 14,
          color: Color(0xFF000000),
          overflow: TextOverflow.ellipsis),

      /// Body text with dark background
      bodyText1: TextStyle(
        fontWeight: FontWeight.w500,
        color: Color(0xFFFFFFFF),
        fontSize: 18,
      ),

      /// Body text with light background
      bodyText2: TextStyle(
        fontWeight: FontWeight.w500,
        color: Color(0xFF000000),
        fontSize: 18,
      ),
    ),
    shadowColor: const Color(0x19000000));

