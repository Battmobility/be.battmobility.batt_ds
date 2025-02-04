import 'package:flutter/material.dart';

import '../atoms/app_colors.dart';

class AppButtonTheme extends ThemeExtension<AppButtonTheme> {
  const AppButtonTheme({
    required this.primaryText,
    required this.primaryDefault,
    required this.primaryHover,
    required this.primaryFocused,
    required this.primaryDisabled,
    required this.secondaryText,
    required this.secondaryDefault,
    required this.secondaryHover,
    required this.secondaryFocused,
    required this.secondaryDisabled,
    required this.iconButtonColor,
  });

  /// {@macro app_button_theme}
  factory AppButtonTheme.light() {
    return AppButtonTheme(
        primaryText: AppColors.primaryButtonTextColor,
        primaryDefault: AppColors.primaryButtonBackgroundColor,
        primaryHover: AppColors.white,
        primaryFocused: AppColors.background,
        primaryDisabled: AppColors.grey[300]!,
        secondaryText: AppColors.secondaryButtonTextColor,
        secondaryDefault: Colors.transparent,
        secondaryHover: AppColors.white,
        secondaryFocused: AppColors.background,
        secondaryDisabled: AppColors.grey[300]!,
        iconButtonColor: AppColors.iconColor);
  }

  factory AppButtonTheme.dark() {
    return AppButtonTheme(
        primaryText: AppColors.primaryButtonTextColor,
        primaryDefault: AppColors.primaryButtonBackgroundColor,
        primaryHover: AppColors.grey[100]!,
        primaryFocused: AppColors.backgroundDark,
        primaryDisabled: AppColors.grey[300]!,
        secondaryText: AppColors.secondaryButtonTextColor,
        secondaryDefault: Colors.transparent,
        secondaryHover: AppColors.grey[100]!,
        secondaryFocused: AppColors.backgroundDark,
        secondaryDisabled: AppColors.grey[300]!,
        iconButtonColor: AppColors.iconColor);
  }

  /// The color of the primary text.
  final Color primaryText;

  /// The color of the primary button default.
  final Color primaryDefault;

  /// The color of the primary button hover.
  final Color primaryHover;

  /// The color of the primary button focused.
  final Color primaryFocused;

  /// The color of the disabled primary text.
  final Color primaryDisabled;

  /// The color of the secondary text.
  final Color secondaryText;

  /// The color of the secondary button default.
  final Color secondaryDefault;

  /// The color of the secondary button hover.
  final Color secondaryHover;

  /// The color of the secondary button focused.
  final Color secondaryFocused;

  /// The color of the disabled secondary text.
  final Color secondaryDisabled;

  /// The color of the icon button icon + text.
  final Color iconButtonColor;

  @override
  ThemeExtension<AppButtonTheme> copyWith({
    Color? primaryText,
    Color? primaryDefault,
    Color? primaryHover,
    Color? primaryFocused,
    Color? primaryTextDisabled,
    Color? secondaryText,
    Color? secondaryDefault,
    Color? secondaryHover,
    Color? secondaryFocused,
    Color? secondaryTextDisabled,
    Color? iconButtonColor,
  }) {
    return AppButtonTheme(
      primaryText: primaryText ?? this.primaryText,
      primaryDefault: primaryDefault ?? this.primaryDefault,
      primaryHover: primaryHover ?? this.primaryHover,
      primaryFocused: primaryFocused ?? this.primaryFocused,
      primaryDisabled: primaryTextDisabled ?? primaryDisabled,
      secondaryText: secondaryText ?? this.secondaryText,
      secondaryDefault: secondaryDefault ?? this.secondaryDefault,
      secondaryHover: secondaryHover ?? this.secondaryHover,
      secondaryFocused: secondaryFocused ?? this.secondaryFocused,
      secondaryDisabled: secondaryTextDisabled ?? secondaryDisabled,
      iconButtonColor: iconButtonColor ?? this.iconButtonColor,
    );
  }

  @override
  ThemeExtension<AppButtonTheme> lerp(
    covariant ThemeExtension<AppButtonTheme>? other,
    double t,
  ) {
    if (other is! AppButtonTheme) {
      return this;
    }

    return AppButtonTheme(
      primaryText: Color.lerp(primaryText, other.primaryText, t)!,
      primaryDefault: Color.lerp(primaryDefault, other.primaryDefault, t)!,
      primaryHover: Color.lerp(primaryHover, other.primaryHover, t)!,
      primaryFocused: Color.lerp(primaryFocused, other.primaryFocused, t)!,
      primaryDisabled: Color.lerp(primaryDisabled, other.primaryDisabled, t)!,
      secondaryText: Color.lerp(secondaryText, other.secondaryText, t)!,
      secondaryDefault:
          Color.lerp(secondaryDefault, other.secondaryDefault, t)!,
      secondaryHover: Color.lerp(secondaryHover, other.secondaryHover, t)!,
      secondaryFocused:
          Color.lerp(secondaryFocused, other.secondaryFocused, t)!,
      secondaryDisabled:
          Color.lerp(secondaryDisabled, other.secondaryDisabled, t)!,
      iconButtonColor: Color.lerp(iconButtonColor, other.iconButtonColor, t)!,
    );
  }
}
