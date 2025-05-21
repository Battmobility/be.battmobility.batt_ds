import 'package:batt_ds/atoms/app_colors.dart';
import 'package:flutter/material.dart';

class SnackbarTheme extends ThemeExtension<SnackbarTheme> {
  const SnackbarTheme({
    required this.infoBackgroundColor,
    required this.successBackgroundColor,
    required this.warningBackgroundColor,
    required this.errorBackgroundColor,
    required this.infoTextColor,
    required this.successTextColor,
    required this.warningTextColor,
    required this.errorTextColor,
  });

  final Color infoBackgroundColor;
  final Color successBackgroundColor;
  final Color warningBackgroundColor;
  final Color errorBackgroundColor;
  final Color infoTextColor;
  final Color successTextColor;
  final Color warningTextColor;
  final Color errorTextColor;

  factory SnackbarTheme.standard() {
    return const SnackbarTheme(
      infoBackgroundColor: AppColors.ecoHorizon,
      successBackgroundColor: AppColors.greenShift,
      warningBackgroundColor: AppColors.ctaSand,
      errorBackgroundColor: AppColors.rusticClay,
      infoTextColor: AppColors.graphiteDrive,
      successTextColor: AppColors.graphiteDrive,
      warningTextColor: AppColors.graphiteDrive,
      errorTextColor: AppColors.graphiteDrive,
    );
  }

  @override
  ThemeExtension<SnackbarTheme> copyWith({
    Color? infoBackgroundColor,
    Color? successBackgroundColor,
    Color? warningBackgroundColor,
    Color? errorBackgroundColor,
    Color? infoTextColor,
    Color? successTextColor,
    Color? warningTextColor,
    Color? errorTextColor,
  }) {
    return SnackbarTheme(
      infoBackgroundColor: infoBackgroundColor ?? this.infoBackgroundColor,
      successBackgroundColor:
          successBackgroundColor ?? this.successBackgroundColor,
      warningBackgroundColor:
          warningBackgroundColor ?? this.warningBackgroundColor,
      errorBackgroundColor: errorBackgroundColor ?? this.errorBackgroundColor,
      infoTextColor: infoTextColor ?? this.infoTextColor,
      successTextColor: successTextColor ?? this.successTextColor,
      warningTextColor: warningTextColor ?? this.warningTextColor,
      errorTextColor: errorTextColor ?? this.errorTextColor,
    );
  }

  @override
  ThemeExtension<SnackbarTheme> lerp(
    covariant ThemeExtension<SnackbarTheme>? other,
    double t,
  ) {
    if (other is! SnackbarTheme) {
      return this;
    }

    return SnackbarTheme(
      infoBackgroundColor:
          Color.lerp(infoBackgroundColor, other.infoBackgroundColor, t)!,
      successBackgroundColor:
          Color.lerp(successBackgroundColor, other.successBackgroundColor, t)!,
      warningBackgroundColor:
          Color.lerp(warningBackgroundColor, other.warningBackgroundColor, t)!,
      errorBackgroundColor:
          Color.lerp(errorBackgroundColor, other.errorBackgroundColor, t)!,
      infoTextColor: Color.lerp(infoTextColor, other.infoTextColor, t)!,
      successTextColor:
          Color.lerp(successTextColor, other.successTextColor, t)!,
      warningTextColor:
          Color.lerp(warningTextColor, other.warningTextColor, t)!,
      errorTextColor: Color.lerp(errorTextColor, other.errorTextColor, t)!,
    );
  }
}
