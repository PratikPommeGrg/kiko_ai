import 'package:flutter/material.dart';
import 'package:kiko_ai/core/constants/texts.dart';
import 'package:kiko_ai/shared/states/states.dart';

class CustomText {
  static Text text(
    String? data, {
    Color? color,
    FontStyle? fontStyle,
    FontWeight? fontWeight,
    TextAlign? textAlign,
    double? fontSize,
    int? maxLines = 2,
    TextDecoration? textDecoration,
    Color? decorationColor,
    bool? isFontFamily = true,
    double? height,
  }) => Text(
    data ?? '',
    maxLines: maxLines,
    overflow: TextOverflow.ellipsis,
    textAlign: textAlign,
    style: TextStyle(
      height: height,
      decoration: textDecoration ?? TextDecoration.none,
      decorationColor: decorationColor,
      fontSize:
          fontSize ??
          Theme.of(
            globalNavigatorKey.currentState!.context,
          ).textTheme.bodyMedium?.fontSize,
      fontFamily: kFontFamily,
      fontStyle: fontStyle ?? FontStyle.normal,
      fontWeight: fontWeight ?? FontWeight.normal,
      color: color,
    ),
  );
}
