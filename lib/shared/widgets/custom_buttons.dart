import 'package:flutter/material.dart';

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
      backgroundColor: WidgetStatePropertyAll(
        backgroundColor ?? Colors.green.shade200,
      ),
      foregroundColor: WidgetStatePropertyAll(foregroundColor),
      side:
          enableBorder ?? false
              ? WidgetStatePropertyAll(
                BorderSide(
                  color: borderColor ?? Colors.green,
                  width: borderWidth ?? 1,
                ),
              )
              : null,
    ),
  );

  // custom elevated button
  static ElevatedButton elevatedButton(
    {
       required VoidCallback onPressed,
    required Widget child,
    }
  ) =>
      ElevatedButton(onPressed: () {}, child: Text("data"));
}
