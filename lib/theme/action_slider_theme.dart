import 'package:batt_ds/atoms/app_colors.dart';
import 'package:flutter/material.dart';

class ActionSliderTheme extends ThemeExtension<ActionSliderTheme> {
  const ActionSliderTheme({
    required this.defaultBackgroundColor,
    required this.unlockedBackgroundColor,
    required this.lockedBackgroundColor,
    required this.errorBackgroundColor,
    required this.defaultToggleColor,
    required this.lockedToggleColor,
    required this.unlockedToggleColor,
    required this.errorToggleColor,
    required this.defaultTextColor,
    required this.lockedTextColor,
    required this.unlockedTextColor,
    required this.errorTextColor,
  });

  final Color defaultBackgroundColor;
  final Color lockedBackgroundColor;
  final Color unlockedBackgroundColor;
  final Color errorBackgroundColor;

  final Color defaultToggleColor;
  final Color lockedToggleColor;
  final Color unlockedToggleColor;
  final Color errorToggleColor;

  final Color defaultTextColor;
  final Color lockedTextColor;
  final Color unlockedTextColor;
  final Color errorTextColor;

  factory ActionSliderTheme.standard() {
    return const ActionSliderTheme(
        defaultBackgroundColor: AppColors.b2bKeyColor,
        unlockedBackgroundColor: AppColors.b2bKeyColor,
        lockedBackgroundColor: AppColors.b2bKeyColor,
        errorBackgroundColor: AppColors.rusticClay,
        defaultTextColor: AppColors.offWhite,
        lockedTextColor: AppColors.white,
        unlockedTextColor: AppColors.white,
        errorTextColor: AppColors.white,
        defaultToggleColor: AppColors.white,
        lockedToggleColor: AppColors.white,
        unlockedToggleColor: AppColors.white,
        errorToggleColor: AppColors.white);
  }

  @override
  ThemeExtension<ActionSliderTheme> copyWith({
    Color? defaultBackgroundColor,
    Color? unlockedBackgroundColor,
    Color? lockedBackgroundColor,
    Color? errorBackgroundColor,
    Color? defaultTextColor,
    Color? lockedTextColor,
    Color? unlockedTextColor,
    Color? errorTextColor,
    Color? defaultToggleColor,
    Color? lockedToggleColor,
    Color? unlockedToggleColor,
    Color? errorToggleColor,
  }) {
    return ActionSliderTheme(
      defaultBackgroundColor:
          defaultBackgroundColor ?? this.defaultBackgroundColor,
      unlockedBackgroundColor:
          unlockedBackgroundColor ?? this.unlockedBackgroundColor,
      lockedBackgroundColor:
          lockedBackgroundColor ?? this.lockedBackgroundColor,
      errorBackgroundColor: errorBackgroundColor ?? this.errorBackgroundColor,
      defaultTextColor: defaultTextColor ?? this.defaultTextColor,
      lockedTextColor: lockedTextColor ?? this.lockedTextColor,
      unlockedTextColor: unlockedTextColor ?? this.unlockedTextColor,
      errorTextColor: errorTextColor ?? this.errorTextColor,
      defaultToggleColor: defaultToggleColor ?? this.defaultToggleColor,
      lockedToggleColor: lockedToggleColor ?? this.lockedToggleColor,
      unlockedToggleColor: unlockedToggleColor ?? this.unlockedToggleColor,
      errorToggleColor: errorToggleColor ?? this.errorToggleColor,
    );
  }

  @override
  ThemeExtension<ActionSliderTheme> lerp(
    covariant ThemeExtension<ActionSliderTheme>? other,
    double t,
  ) {
    if (other is! ActionSliderTheme) {
      return this;
    }

    return ActionSliderTheme(
      defaultBackgroundColor:
          Color.lerp(defaultBackgroundColor, other.defaultBackgroundColor, t)!,
      unlockedBackgroundColor: Color.lerp(
          unlockedBackgroundColor, other.unlockedBackgroundColor, t)!,
      lockedBackgroundColor:
          Color.lerp(lockedBackgroundColor, other.lockedBackgroundColor, t)!,
      errorBackgroundColor:
          Color.lerp(errorBackgroundColor, other.errorBackgroundColor, t)!,
      defaultTextColor:
          Color.lerp(defaultTextColor, other.defaultTextColor, t)!,
      lockedTextColor: Color.lerp(lockedTextColor, other.lockedTextColor, t)!,
      unlockedTextColor:
          Color.lerp(unlockedTextColor, other.unlockedTextColor, t)!,
      errorTextColor: Color.lerp(errorTextColor, other.errorTextColor, t)!,
      defaultToggleColor:
          Color.lerp(defaultToggleColor, other.defaultToggleColor, t)!,
      unlockedToggleColor:
          Color.lerp(unlockedToggleColor, other.unlockedToggleColor, t)!,
      lockedToggleColor:
          Color.lerp(lockedToggleColor, other.lockedToggleColor, t)!,
      errorToggleColor:
          Color.lerp(errorToggleColor, other.errorToggleColor, t)!,
    );
  }
}
