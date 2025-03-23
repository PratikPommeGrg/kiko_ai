import 'package:flutter/material.dart';
import 'package:kiko_ai/core/app/constants/app_border_radius.dart';

class CustomButtons {
  // custom circlular icon button
  static IconButton circleIconButton({
    required VoidCallback onPressed,
    required Widget child,
    double? size,
    double? borderWidth,
    bool? enableBorder,
    Color? backgroundColor,
    Color? foregroundColor,
    Color? borderColor,
    EdgeInsets? padding,
  }) => IconButton.filled(
    padding: padding,
    onPressed: onPressed,
    icon: child,
    style: ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(backgroundColor ?? Colors.white),
      foregroundColor: WidgetStatePropertyAll(foregroundColor),
      side:
          enableBorder ?? false
              ? WidgetStatePropertyAll(
                BorderSide(
                  color: borderColor ?? Colors.black,
                  width: borderWidth ?? 1,
                ),
              )
              : null,
    ),
  );

  // custom elevated button
  static ElevatedButton elevatedButton({
    required VoidCallback onPressed,
    required Widget child,
    Color? backgroundColor,
    double? buttonHeight,
    double? borderRadius,
  }) => ElevatedButton(
    onPressed: onPressed,
    style: ButtonStyle(
      elevation: WidgetStatePropertyAll(0),
      backgroundColor: WidgetStatePropertyAll(Colors.green.shade200),
      // foregroundColor: WidgetStatePropertyAll(Colors.green),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(borderRadius: AppBorderRadius.small),
      ),
      minimumSize: WidgetStatePropertyAll(Size.fromHeight(buttonHeight ?? 48)),
    ),
    child: child,
  );
}
