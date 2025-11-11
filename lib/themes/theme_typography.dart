import 'package:flutter/material.dart';
import 'schema_color.dart';

class TypographyApp {
  static const TextTheme text = TextTheme(
    displayLarge: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: AppColors.primary,
      letterSpacing: 0.5,
      height: 1.3,
    ),
    titleLarge: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w600,
      color: AppColors.accent,
      letterSpacing: 0.15,
      height: 1.4,
    ),
    bodyMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: AppColors.blackText,
      height: 1.6,
    ),
    labelLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: AppColors.secondary,
      letterSpacing: 0.75,
      height: 1.4,
    ),
  );
}
