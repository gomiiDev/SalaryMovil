import 'package:flutter/material.dart';
import 'schema_color.dart';

class BackgroundTheme{
  static const BoxDecoration mainFade = BoxDecoration(
    gradient: LinearGradient(
      colors: [
        AppColors.primary,
        AppColors.accent,
        AppColors.secondary,
      ],
      begin: Alignment.topCenter,
      end: Alignment.center,
    ),
  );

  static const BoxDecoration whiteBackground = BoxDecoration(
    color: AppColors.whiteText,
  );

  static const BoxDecoration grayBackground = BoxDecoration(
    color: AppColors.grayText,
  );

}
