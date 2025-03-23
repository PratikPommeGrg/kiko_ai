import 'package:flutter/material.dart';

class AppBorderRadius {
  // Small border radius (e.g., buttons, cards)
  static const BorderRadius small = BorderRadius.all(Radius.circular(4.0));

  // Medium border radius (e.g., input fields, dialogs)
  static const BorderRadius medium = BorderRadius.all(Radius.circular(8.0));

  // Large border radius (e.g., modals, containers)
  static const BorderRadius large = BorderRadius.all(Radius.circular(12.0));

  // Extra-large border radius (e.g., full-width components)
  static const BorderRadius extraLarge = BorderRadius.all(
    Radius.circular(16.0),
  );
  // Extra-large border radius (e.g., full-width components)

  static const BorderRadius extraExtraLarge = BorderRadius.all(
    Radius.circular(32),
  );

  // Circular border radius (e.g., avatars, floating action buttons)
  static const BorderRadius circular = BorderRadius.all(
    Radius.circular(9999.0),
  );
}
