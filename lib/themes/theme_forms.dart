import 'package:flutter/material.dart';
import 'schema_color.dart';

class FormTheme {
  static final inputThemes = InputDecorationTheme(
    filled: true,
    fillColor: AppColors.secondary,
    labelStyle: const TextStyle(
      color: AppColors.primary,
      fontWeight: FontWeight.w500,
    ),
    prefixIconColor: AppColors.accent,
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: AppColors.accent,
        width: 1.2,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: AppColors.primary,
        width: 2,
      ),
    ),
  );
}
