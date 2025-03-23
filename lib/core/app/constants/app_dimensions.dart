import 'package:flutter/material.dart';

class AppDimensions {
  /// Returns the height of the screen.
  static double height(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  /// Returns the width of the screen.
  static double width(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  /// Returns the height of the on-screen keyboard.
  static double keyboardHeight(BuildContext context) {
    return MediaQuery.of(context).viewInsets.bottom;
  }
}