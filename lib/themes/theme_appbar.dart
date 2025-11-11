import 'package:flutter/material.dart';
import 'schema_color.dart';

class AppBarThemeProyect{
  static final AppBarTheme appTheme = AppBarTheme(
    backgroundColor: AppColors.primary,
    foregroundColor: AppColors.whiteText,
    centerTitle: true,
    elevation: 3,
    titleTextStyle: TextStyle(
      color: AppColors.whiteText,
      fontSize: 20,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.5,
    ),
  );
}