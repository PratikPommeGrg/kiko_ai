import 'package:flutter/material.dart';

class AppColors {
  // Primary Colors
  static const Color primary = Color(
    0xFF2C3E50,
  ); // Deep blue-gray (main brand color)
  static const Color primaryVariant = Color(0xFF1A2530); // Darker variant

  // Secondary Colors
  static const Color secondary = Color(0xFF4CAF50); // Soft green (accent color)
  static const Color secondaryVariant = Color(0xFF388E3C); // Darker green

  // Background Colors
  static const Color backgroundLight = Color(
    0xFFF5F5F5,
  ); // Light theme background
  static const Color backgroundDark = Color(
    0xFF121212,
  ); // Dark theme background

  // Surface Colors
  static const Color surfaceLight = Color(0xFFFFFFFF); // Light theme surface
  static const Color surfaceDark = Color(0xFF1E1E1E); // Dark theme surface

  // Text Colors
  static const Color onPrimary = Color(
    0xFFFFFFFF,
  ); // White text/icons on primary
  static const Color onSecondary = Color(
    0xFFFFFFFF,
  ); // White text/icons on secondary
  static const Color onBackgroundLight = Color(
    0xFF212121,
  ); // Black text/icons on light background
  static const Color onBackgroundDark = Color(
    0xFFFFFFFF,
  ); // White text/icons on dark background
  static const Color onSurfaceLight = Color(
    0xFF212121,
  ); // Black text/icons on light surface
  static const Color onSurfaceDark = Color(
    0xFFFFFFFF,
  ); // White text/icons on dark surface

  // Error Colors
  static const Color error = Color(0xFFD32F2F); // Red for errors
  static const Color onError = Color(0xFFFFFFFF); // White text/icons on error

  // Neutral Colors
  static const Color grayLight = Color(0xFFF5F5F5); // Very light gray
  static const Color grayMedium = Color(0xFFE0E0E0); // Medium gray
  static const Color grayDark = Color(0xFF424242); // Dark gray

  // Transparency
  static const Color transparent = Colors.transparent; // Transparent color
}
