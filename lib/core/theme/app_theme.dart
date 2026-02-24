import 'package:bashar_flutter_dev_portfolio/core/constants/app_colors.dart';
import 'package:bashar_flutter_dev_portfolio/core/theme/app_text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.background,
      cardColor: AppColors.secondary,
      splashColor: Colors.transparent,
      colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: AppColors.primary,
        onPrimary: AppColors.primaryTextColor,
        secondary: AppColors.secondary,
        onSecondary: AppColors.primaryTextColor,
        error: Colors.red,
        onError: AppColors.primaryTextColor,
        surface: AppColors.background,
        onSurface: AppColors.primaryTextColor,
      ),
      fontFamily: 'system-ui',
      textTheme: AppTextTheme.dark,
    );
  }
}
