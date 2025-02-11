import 'package:flutter/material.dart';

import '../atoms/app_colors.dart';

class AppNavigationTheme extends ThemeExtension<AppNavigationTheme> {
  /// The color of the primary text.
  final Color backgroundColor;
  final Color indicatorColor;

  const AppNavigationTheme({
    required this.backgroundColor,
    required this.indicatorColor,
  });

  factory AppNavigationTheme.light() {
    return AppNavigationTheme(
      backgroundColor: AppColors.primaryColors[300]!,
      indicatorColor: AppColors.grey[900]!,
    );
  }

  factory AppNavigationTheme.dark() {
    return AppNavigationTheme(
      backgroundColor: AppColors.primaryColors[900]!,
      indicatorColor: AppColors.grey[100]!,
    );
  }

  @override
  ThemeExtension<AppNavigationTheme> copyWith({
    Color? backgroundColor,
    Color? indicatorColor,
  }) {
    return AppNavigationTheme(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      indicatorColor: indicatorColor ?? this.indicatorColor,
    );
  }

  @override
  ThemeExtension<AppNavigationTheme> lerp(
      covariant ThemeExtension<AppNavigationTheme>? other, double t) {
    if (other is! AppNavigationTheme) {
      return this;
    }

    return AppNavigationTheme(
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t)!,
      indicatorColor: Color.lerp(indicatorColor, other.indicatorColor, t)!,
    );
  }
}
