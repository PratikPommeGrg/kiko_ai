import 'package:flutter/material.dart';

class AppPadding {
  // Uniform padding
  static const EdgeInsets all = EdgeInsets.all(16);

  // Horizontal padding (left and right)
  static const EdgeInsets horizontal = EdgeInsets.symmetric(horizontal: 16);

  // Vertical padding (top and bottom)
  static const EdgeInsets vertical = EdgeInsets.symmetric(vertical: 16);

  // Custom paddings
  static const EdgeInsets small = EdgeInsets.all(8);
  static const EdgeInsets medium = EdgeInsets.all(12);
  static const EdgeInsets large = EdgeInsets.all(24);
}