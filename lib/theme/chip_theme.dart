import 'package:batt_ds/atoms/app_colors.dart';
import 'package:flutter/material.dart';

class AppChipTheme extends ThemeExtension<AppChipTheme> {
  const AppChipTheme({
    required this.enabledColor,
    required this.disabledColor,
    required this.activeColor,
    required this.enabledBackgroundColor,
    required this.disabledBackgroundColor,
    required this.activeBackgroundColor,
  });

  /// The color of the enabled text and border.
  final Color enabledColor;

  /// The color of the disabled text and border.
  final Color disabledColor;

  /// The color of the active text and border.
  final Color activeColor;

  /// The color of the enabled background.
  final Color enabledBackgroundColor;

  /// The color of the disabled background.
  final Color disabledBackgroundColor;

  /// The color of the active background.
  final Color activeBackgroundColor;

  factory AppChipTheme.standard() {
    return const AppChipTheme(
      enabledColor: AppColors.skySurge,
      disabledColor: AppColors.urbanMist,
      activeColor: AppColors.futureBlue,
      enabledBackgroundColor: AppColors.airFlow,
      disabledBackgroundColor: AppColors.cloudBase,
      activeBackgroundColor: AppColors.skySurge,
    );
  }
  @override
  ThemeExtension<AppChipTheme> copyWith({
    Color? enabledColor,
    Color? disabledColor,
    Color? activeColor,
    Color? enabledBackgroundColor,
    Color? disabledBackgroundColor,
    Color? activeBackgroundColor,
  }) {
    return AppChipTheme(
      enabledColor: enabledColor ?? this.enabledColor,
      disabledColor: disabledColor ?? this.disabledColor,
      activeColor: activeColor ?? this.activeColor,
      enabledBackgroundColor:
          enabledBackgroundColor ?? this.enabledBackgroundColor,
      disabledBackgroundColor:
          disabledBackgroundColor ?? this.disabledBackgroundColor,
      activeBackgroundColor:
          activeBackgroundColor ?? this.activeBackgroundColor,
    );
  }

  @override
  ThemeExtension<AppChipTheme> lerp(
    covariant ThemeExtension<AppChipTheme>? other,
    double t,
  ) {
    if (other is! AppChipTheme) {
      return this;
    }

    return AppChipTheme(
      enabledColor: Color.lerp(enabledColor, other.enabledColor, t)!,
      disabledColor: Color.lerp(disabledColor, other.disabledColor, t)!,
      activeColor: Color.lerp(activeColor, other.activeColor, t)!,
      enabledBackgroundColor:
          Color.lerp(enabledBackgroundColor, other.enabledBackgroundColor, t)!,
      disabledBackgroundColor: Color.lerp(
          disabledBackgroundColor, other.disabledBackgroundColor, t)!,
      activeBackgroundColor:
          Color.lerp(activeBackgroundColor, other.activeBackgroundColor, t)!,
    );
  }
}
