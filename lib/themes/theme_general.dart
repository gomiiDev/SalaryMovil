import 'package:flutter/material.dart';
import 'schema_color.dart';
import 'theme_typography.dart';
import 'theme_appbar.dart';
import 'theme_buttons.dart';
import 'theme_forms.dart';
import 'theme_backgrounds.dart';

class GeneralTheme {
  static final ThemeData light = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.light(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      surface: AppColors.surface,
      onPrimary: AppColors.whiteText,
      onSecondary: AppColors.blackText,
    ),
    textTheme: TypographyApp.text,
    appBarTheme: AppBarThemeProyect.appTheme,
    elevatedButtonTheme: ButtonsTheme.primaryButton,
    outlinedButtonTheme: ButtonsTheme.secondaryButton,
    inputDecorationTheme: FormTheme.inputThemes,
    scaffoldBackgroundColor: AppColors.background,
  );
}
