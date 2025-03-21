import 'package:flutter/material.dart';
import 'package:kiko_ai/core/constants/texts.dart';

const double kBaseFontSize = 16; // Standard body text size

final lightTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: AppBarTheme(backgroundColor: Colors.white),
  fontFamily: kFontFamily,
  textTheme: TextTheme(
    // Headings
    headlineLarge: TextStyle(
      fontSize: kBaseFontSize * 2, // 32px
      fontWeight: FontWeight.w300, // Lato-Light
    ),
    headlineMedium: TextStyle(
      fontSize: kBaseFontSize * 1.5, // 24px
      fontWeight: FontWeight.w400, // Lato-Regular
    ),
    headlineSmall: TextStyle(
      fontSize: kBaseFontSize * 1.25, // 20px
      fontWeight: FontWeight.w700, // Lato-Bold
    ),

    // Body Text
    bodyLarge: TextStyle(
      fontSize: kBaseFontSize * 1.125, // ~18px
      fontWeight: FontWeight.w400, // Lato-Regular
    ),
    bodyMedium: TextStyle(
      fontSize: kBaseFontSize, // 16px
      fontWeight: FontWeight.w400, // Lato-Regular (Standard body text)
    ),
    bodySmall: TextStyle(
      fontSize: kBaseFontSize * 0.875, // ~14px
      fontWeight: FontWeight.w400, // Lato-Regular
    ),

    // Display Text
    displayLarge: TextStyle(
      fontSize: kBaseFontSize * 3, // 48px
      fontWeight: FontWeight.w300, // Lato-Light
    ),
    displayMedium: TextStyle(
      fontSize: kBaseFontSize * 2.25, // ~36px
      fontWeight: FontWeight.w300, // Lato-Light
    ),

    // Labels
    labelLarge: TextStyle(
      fontSize: kBaseFontSize * 0.9375, // ~15px
      fontWeight: FontWeight.w700, // Lato-Bold
    ),
    labelMedium: TextStyle(
      fontSize: kBaseFontSize * 0.875, // ~14px
      fontWeight: FontWeight.w700, // Lato-Bold
    ),
    labelSmall: TextStyle(
      fontSize: kBaseFontSize * 0.75, // 12px
      fontWeight: FontWeight.w700, // Lato-Bold
    ),

    // Titles
    titleLarge: TextStyle(
      fontSize: kBaseFontSize * 1.375, // ~22px
      fontWeight: FontWeight.w700, // Lato-Bold
    ),
    titleMedium: TextStyle(
      fontSize: kBaseFontSize * 1.125, // ~18px
      fontWeight: FontWeight.w700, // Lato-Bold
    ),
    titleSmall: TextStyle(
      fontSize: kBaseFontSize, // 16px
      fontWeight: FontWeight.w700, // Lato-Bold
    ),
  ),
);
