import 'package:flutter/material.dart';
import 'package:kiko_ai/core/app/constants/app_colors.dart';
import 'package:kiko_ai/core/app/constants/texts.dart';
import 'package:kiko_ai/core/app/theme/text_theme.dart';



final lightTheme = ThemeData(
  scaffoldBackgroundColor: AppColors.backgroundLight,
  appBarTheme: AppBarTheme(backgroundColor: AppColors.backgroundLight),
  fontFamily: kFontFamily,
  textTheme: textTheme,
);
