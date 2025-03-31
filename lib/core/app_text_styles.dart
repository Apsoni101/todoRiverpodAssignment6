import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyles {
  static const fontFamily1 = 'SfDisplay';
  static const fontFamily2 = 'SfText';
  static final displayLarge = TextStyle(
    fontFamily: fontFamily1,
    fontWeight: FontWeight.w800,
    color: AppColors.title,
    fontSize: 57,
    letterSpacing: 0,
  );
  static const displayMedium = TextStyle(
      fontFamily: fontFamily1,
      fontWeight: FontWeight.w700,
      color: AppColors.title,
      fontSize: 45,
      letterSpacing: 0);
  static const displaySmall = TextStyle(
      fontWeight: FontWeight.w900,
      letterSpacing: 0.37,
      fontFamily: fontFamily1,
      fontSize: 34,
      height: 1.2);
  static const headlineLarge = TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w600,
      letterSpacing: -0.41,
      fontFamily: fontFamily2);
  static const headlineMedium = TextStyle(
    color: AppColors.red
  );
  static const headlineSmall = TextStyle(
    fontSize: 24,
  );
  static const titleLarge = TextStyle(
    letterSpacing: 0.38,
    fontWeight: FontWeight.w600,
    fontFamily: fontFamily1,
    fontSize: 20,
  );
  static const titleMedium = TextStyle(
    fontSize: 16,
  );
  static const titleSmall = TextStyle(
    fontFamily: fontFamily2,
    fontSize: 12,
    letterSpacing: -0.08,
    fontWeight: FontWeight.w600,
    color: AppColors.mediumGrey2
  );
  static const bodyLarge = TextStyle(
      fontFamily: fontFamily2,
      fontSize: 17,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.41,
      color: AppColors.blue);
  static const bodyMedium = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    fontFamily: fontFamily2,
    color: AppColors.blue
  );
  static const bodySmall = TextStyle(
    color: AppColors.title,
    fontSize: 12,
  );
  static const labelLarge = TextStyle(
    letterSpacing: -0.35,
    height: 1.29,
    fontWeight: FontWeight.w500,
    color: AppColors.title,
    fontSize: 14,
  );
  static const labelMedium = TextStyle(
      color: AppColors.lightGrey,
      fontFamily: fontFamily2,
      fontSize: 13,
      fontWeight: FontWeight.w700,
      height: 1.38,
      letterSpacing: -0.08);
  static const labelSmall = TextStyle(
    color: AppColors.mediumGrey,
    fontSize: 16,
    fontFamily: fontFamily2,
    fontWeight: FontWeight.w600,
    height: 1.33,
    letterSpacing: -0.24
  );
  static const timePicker = TextStyle(
    color: AppColors.black,
    fontSize: 22,
    fontFamily: fontFamily1,
    fontWeight: FontWeight.w600,
    height: 1.272,
    letterSpacing:0.35
  );
  static const meridian = TextStyle(
    color: AppColors.black,
    fontSize: 17,
    fontFamily: fontFamily2,
    fontWeight: FontWeight.w800,
    height: 1.33,
      letterSpacing: -0.24
  );
  static const hint = TextStyle(
    color: AppColors.lightGrey,
    fontSize: 12.89,
    fontFamily: fontFamily2,
    fontWeight: FontWeight.w400,
    height: 1.29,
      letterSpacing: -0.31
  );

}
