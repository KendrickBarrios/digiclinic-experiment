import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text_styles.dart';

class AppTheme {
  static ThemeData light() {
    return ThemeData(
      useMaterial3: true,

      fontFamily: AppTextStyles.fontFamily,

      colorScheme: ColorScheme.light(
        primary: AppColors.midDarkBlue,
        onPrimary: Colors.white,

        secondary: AppColors.midLighBlue,
        onSecondary: AppColors.darkestBlue,

        surface: AppColors.backgroundGray,
        onSurface: AppColors.darkerBlue,
        surfaceContainerHighest: AppColors.lighterGray,

        error: Colors.redAccent
      ),

      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: AppColors.midDarkBlue,
          foregroundColor: Colors.white,
          textStyle: AppTextStyles.buttonText,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
          )
        )
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.backgroundGray,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(width: 1.0, color: AppColors.borderGray)
        )
      )
    );
  }
}