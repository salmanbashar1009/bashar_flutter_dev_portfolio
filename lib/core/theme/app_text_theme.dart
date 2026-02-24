import 'package:bashar_flutter_dev_portfolio/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextTheme {
  static TextTheme get dark => TextTheme(
    /// heading text
    headlineLarge: TextStyle(
      fontSize: 96,
      fontWeight: FontWeight.w700,
      color: AppColors.primaryTextColor,
      fontFamily: 'System-ui',
    ),
    headlineMedium: TextStyle(
      fontSize: 48,
      fontWeight: FontWeight.w700,
      color: AppColors.primaryTextColor,
      fontFamily: 'System-ui',
    ),
    headlineSmall: TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.w600,
      color: AppColors.primaryTextColor,
      fontFamily: 'System-ui',
    ),

    /// title text
    titleLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      color: AppColors.primaryTextColor,
      fontFamily: 'System-ui',
    ),
    titleMedium: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w700,
      color: AppColors.primaryTextColor,
      fontFamily: 'System-ui',
    ),

    titleSmall: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: AppColors.primaryTextColor,
      fontFamily: 'System-ui',
    ),

    bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColors.primaryTextColor,
      fontFamily: 'System-ui',
    ),

    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColors.primaryTextColor,
      fontFamily: 'System-ui',
    ),

    /// regular body text
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AppColors.primaryTextColor,
      fontFamily: 'System-ui',
    ),
  );
}
