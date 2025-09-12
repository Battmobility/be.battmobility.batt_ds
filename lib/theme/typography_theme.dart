import 'package:batt_ds/atoms/app_colors.dart';
import 'package:flutter/material.dart';

/// {@template app_typography}
/// Theme class which provides configuration of [TextStyle]
/// {@endtemplate}
interface class AppTypographyTheme extends ThemeExtension<AppTypographyTheme> {
  /// {@macro app_typography}
  AppTypographyTheme({
    required this.headlineLarge,
    required this.headlineMedium,
    required this.headlineSmall,
    required this.titleLarge,
    required this.titleMedium,
    required this.titleSmall,
    required this.titleBold,
    required this.bodyLarge,
    required this.bodyMedium,
    required this.bodySmall,
    required this.labelLarge,
    required this.labelMedium,
    required this.labelSmall,
    required this.licensePlate,
    required this.disabledText,
    required this.errorText,
    required this.successText,
    required this.warningText,
    required this.button2XLarge,
    required this.buttonXLarge,
    required this.buttonLarge,
    required this.buttonMedium,
    required this.buttonSmall,
    required this.buttonXSmall,
    required this.chipSmall,
    required this.chipMedium,
    required this.chipLarge,
    required this.inputPlaceholder,
    required this.inputHint,
    required this.inputLabel,
    required this.dateTimeStyle,
    required this.actionSliderStyle,
  });

  // Default text
  final TextStyle bodyLarge;

  // Default text
  final TextStyle bodyMedium;

  // Small text
  final TextStyle bodySmall;

  /// License plate
  final TextStyle licensePlate;

  /// Chip Small
  final TextStyle chipSmall;

  /// Chip Medium
  final TextStyle chipMedium;

  /// Chip Large
  final TextStyle chipLarge;

  /// Button Large
  final TextStyle buttonLarge;

  /// Button Extra Large
  final TextStyle buttonXLarge;

  /// Button Extra Extra Large
  final TextStyle button2XLarge;

  /// Button Medium
  final TextStyle buttonMedium;

  /// Button Small
  final TextStyle buttonSmall;

  /// Button XSmall
  final TextStyle buttonXSmall;

  // Disabled text
  final TextStyle disabledText;

  // Error text
  final TextStyle errorText;

  // Success text
  final TextStyle successText;

  // Warning text
  final TextStyle warningText;

  // Large headline
  final TextStyle headlineLarge;

  // Medium headline
  final TextStyle headlineMedium;

  // Small headline
  final TextStyle headlineSmall;

  // Large title
  final TextStyle titleLarge;

  // Medium title
  final TextStyle titleMedium;

  // Small title
  final TextStyle titleSmall;

  // Large label
  final TextStyle labelLarge;

  // Medium label
  final TextStyle labelMedium;

  // Small label
  final TextStyle labelSmall;

  // Small title
  final TextStyle titleBold;

  // Placeholder text
  final TextStyle inputPlaceholder;

  // Hint text
  final TextStyle inputHint;

  // Input label
  final TextStyle inputLabel;

  // DateTime style
  final TextStyle dateTimeStyle;

  // Actionslider style
  final TextStyle actionSliderStyle;

  @override
  ThemeExtension<AppTypographyTheme> copyWith({
    TextStyle? headlineLarge,
    TextStyle? headlineMedium,
    TextStyle? headlineSmall,
    TextStyle? titleLarge,
    TextStyle? titleMedium,
    TextStyle? titleSmall,
    TextStyle? titleBold,
    TextStyle? bodyLarge,
    TextStyle? bodyMedium,
    TextStyle? bodySmall,
    TextStyle? labelLarge,
    TextStyle? labelMedium,
    TextStyle? labelSmall,
    TextStyle? licensePlate,
    TextStyle? button2XLarge,
    TextStyle? buttonXLarge,
    TextStyle? buttonLarge,
    TextStyle? buttonMedium,
    TextStyle? buttonSmall,
    TextStyle? buttonXSmall,
    TextStyle? chipSmall,
    TextStyle? chipMedium,
    TextStyle? chipLarge,
    TextStyle? defaultText,
    TextStyle? disabledText,
    TextStyle? errorText,
    TextStyle? successText,
    TextStyle? warningText,
    TextStyle? inputPlaceholder,
    TextStyle? inputHint,
    TextStyle? inputLabel,
    TextStyle? dateTimeStyle,
    TextStyle? actionSliderStyle,
  }) {
    return AppTypographyTheme(
      headlineLarge: headlineLarge ?? this.headlineLarge,
      headlineMedium: headlineMedium ?? this.headlineMedium,
      headlineSmall: headlineSmall ?? this.headlineSmall,
      titleLarge: titleLarge ?? this.titleLarge,
      titleMedium: titleMedium ?? this.titleMedium,
      titleSmall: titleSmall ?? this.titleSmall,
      titleBold: titleBold ?? this.titleBold,
      bodyLarge: bodyLarge ?? this.bodyLarge,
      bodyMedium: bodyMedium ?? this.bodyMedium,
      bodySmall: bodySmall ?? this.bodySmall,
      labelLarge: labelLarge ?? this.labelLarge,
      labelMedium: labelMedium ?? this.labelMedium,
      labelSmall: labelSmall ?? this.labelSmall,
      licensePlate: licensePlate ?? this.licensePlate,
      button2XLarge: button2XLarge ?? this.button2XLarge,
      buttonXLarge: buttonXLarge ?? this.buttonXLarge,
      buttonLarge: buttonLarge ?? this.buttonLarge,
      buttonMedium: buttonMedium ?? this.buttonMedium,
      buttonSmall: buttonSmall ?? this.buttonSmall,
      buttonXSmall: buttonXSmall ?? this.buttonXSmall,
      chipLarge: chipLarge ?? this.chipLarge,
      chipMedium: chipMedium ?? this.chipMedium,
      chipSmall: chipSmall ?? this.chipSmall,
      disabledText: disabledText ?? this.disabledText,
      errorText: errorText ?? this.errorText,
      successText: successText ?? this.successText,
      warningText: warningText ?? this.warningText,
      inputPlaceholder: inputPlaceholder ?? this.inputPlaceholder,
      inputHint: inputHint ?? this.inputHint,
      inputLabel: inputLabel ?? this.inputLabel,
      dateTimeStyle: dateTimeStyle ?? this.dateTimeStyle,
      actionSliderStyle: actionSliderStyle ?? this.actionSliderStyle,
    );
  }

  @override
  ThemeExtension<AppTypographyTheme> lerp(
    covariant ThemeExtension<AppTypographyTheme>? other,
    double t,
  ) {
    if (other is! AppTypographyTheme) {
      return this;
    }

    return AppTypographyTheme(
      headlineLarge: TextStyle.lerp(headlineLarge, other.headlineLarge, t)!,
      headlineMedium: TextStyle.lerp(headlineMedium, other.headlineMedium, t)!,
      headlineSmall: TextStyle.lerp(headlineSmall, other.headlineSmall, t)!,
      licensePlate: TextStyle.lerp(licensePlate, other.licensePlate, t)!,
      button2XLarge: TextStyle.lerp(button2XLarge, other.button2XLarge, t)!,
      buttonXLarge: TextStyle.lerp(buttonXLarge, other.buttonXLarge, t)!,
      buttonLarge: TextStyle.lerp(buttonLarge, other.buttonLarge, t)!,
      buttonMedium: TextStyle.lerp(buttonMedium, other.buttonMedium, t)!,
      buttonSmall: TextStyle.lerp(buttonSmall, other.buttonSmall, t)!,
      buttonXSmall: TextStyle.lerp(buttonXSmall, other.buttonXSmall, t)!,
      chipSmall: TextStyle.lerp(chipSmall, other.chipSmall, t)!,
      chipMedium: TextStyle.lerp(chipMedium, other.chipMedium, t)!,
      chipLarge: TextStyle.lerp(chipLarge, other.chipLarge, t)!,
      bodyMedium: TextStyle.lerp(bodyMedium, other.bodyMedium, t)!,
      bodyLarge: TextStyle.lerp(bodyLarge, other.bodyLarge, t)!,
      disabledText: TextStyle.lerp(disabledText, other.disabledText, t)!,
      errorText: TextStyle.lerp(errorText, other.errorText, t)!,
      successText: TextStyle.lerp(successText, other.successText, t)!,
      warningText: TextStyle.lerp(warningText, other.warningText, t)!,
      bodySmall: TextStyle.lerp(bodySmall, other.bodySmall, t)!,
      titleLarge: TextStyle.lerp(titleLarge, other.titleLarge, t)!,
      titleMedium: TextStyle.lerp(titleMedium, other.titleMedium, t)!,
      titleSmall: TextStyle.lerp(titleSmall, other.titleSmall, t)!,
      titleBold: TextStyle.lerp(titleBold, other.titleBold, t)!,
      inputPlaceholder:
          TextStyle.lerp(inputPlaceholder, other.inputPlaceholder, t)!,
      inputHint: TextStyle.lerp(inputHint, other.inputHint, t)!,
      inputLabel: TextStyle.lerp(inputLabel, other.inputLabel, t)!,
      labelLarge: TextStyle.lerp(labelLarge, other.labelLarge, t)!,
      labelMedium: TextStyle.lerp(labelMedium, other.labelMedium, t)!,
      labelSmall: TextStyle.lerp(labelSmall, other.labelSmall, t)!,
      dateTimeStyle: TextStyle.lerp(dateTimeStyle, other.dateTimeStyle, t)!,
      actionSliderStyle:
          TextStyle.lerp(actionSliderStyle, other.actionSliderStyle, t)!,
    );
  }
}

/// {@macro app_typography}
class AppTypography extends AppTypographyTheme {
  /// {@macro app_typography}
  AppTypography({
    super.headlineLarge = const TextStyle(
        fontSize: 24,
        height: 32 / 24,
        fontWeight: FontWeight.w600,
        color: AppColors.textColor,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.headlineMedium = const TextStyle(
        fontSize: 16,
        height: 24 / 20,
        fontWeight: FontWeight.w600,
        color: AppColors.textColor,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.headlineSmall = const TextStyle(
        fontSize: 14,
        height: 24 / 16,
        fontWeight: FontWeight.w600,
        color: AppColors.textColor,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.titleLarge = const TextStyle(
        fontSize: 20,
        height: 32 / 24,
        fontWeight: FontWeight.w600,
        color: AppColors.textColor,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.titleMedium = const TextStyle(
        fontSize: 16,
        height: 24 / 18,
        fontWeight: FontWeight.w600,
        color: AppColors.textColor,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.titleSmall = const TextStyle(
        fontSize: 14,
        height: 24 / 14,
        fontWeight: FontWeight.w600,
        color: AppColors.textColor,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.titleBold = const TextStyle(
        fontSize: 16,
        height: 24 / 14,
        fontWeight: FontWeight.w900,
        color: AppColors.textColor,
        fontFamily: "InterBold",
        package: "batt_ds"),
    super.bodyLarge = const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: AppColors.textColor,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.bodyMedium = const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColors.textColor,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.bodySmall = const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AppColors.textColor,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.labelLarge = const TextStyle(
        fontSize: 16,
        height: 20 / 16,
        fontWeight: FontWeight.w500,
        color: AppColors.textColor,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.labelMedium = const TextStyle(
        fontSize: 14,
        height: 16 / 14,
        fontWeight: FontWeight.w500,
        color: AppColors.textColor,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.labelSmall = const TextStyle(
        fontSize: 12,
        height: 16 / 12,
        fontWeight: FontWeight.w500,
        color: AppColors.textColor,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.licensePlate = const TextStyle(
        fontSize: 16,
        height: 24 / 16,
        fontWeight: FontWeight.w700,
        color: AppColors.licensePlateBelgiumTextColor,
        fontFamily: "LicensePlate",
        package: "batt_ds"),
    super.button2XLarge = const TextStyle(
        fontSize: 16,
        height: 24 / 10,
        fontWeight: FontWeight.w700,
        color: AppColors.primaryButtonTextColor,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.buttonXLarge = const TextStyle(
        fontSize: 16,
        height: 24 / 12,
        fontWeight: FontWeight.w600,
        color: AppColors.primaryButtonTextColor,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.buttonLarge = const TextStyle(
        fontSize: 16,
        height: 24 / 16,
        fontWeight: FontWeight.w500,
        color: AppColors.primaryButtonTextColor,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.buttonMedium = const TextStyle(
        fontSize: 14,
        height: 20 / 14,
        color: AppColors.primaryButtonTextColor,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.buttonSmall = const TextStyle(
        fontSize: 12,
        height: 20 / 14,
        fontWeight: FontWeight.w500,
        color: AppColors.primaryButtonTextColor,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.buttonXSmall = const TextStyle(
        fontSize: 10,
        height: 20 / 14,
        fontWeight: FontWeight.w500,
        color: AppColors.primaryButtonTextColor,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.chipSmall = const TextStyle(
        fontSize: 12,
        height: 24 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.textColor,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.chipMedium = const TextStyle(
        fontSize: 14,
        height: 24 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.textColor,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.chipLarge = const TextStyle(
        fontSize: 16,
        height: 24 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.textColor,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.disabledText = const TextStyle(
        fontSize: 12,
        height: 24 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.disabledTextColor,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.errorText = const TextStyle(
        fontSize: 12,
        height: 24 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.rusticClay,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.successText = const TextStyle(
        fontSize: 12,
        height: 24 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.ctaGreen,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.warningText = const TextStyle(
        fontSize: 12,
        height: 24 / 24,
        fontWeight: FontWeight.w600,
        color: AppColors.ctaSand,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.inputPlaceholder = const TextStyle(
        fontSize: 12,
        height: 24 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.primaryTextColorLight,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.inputHint = const TextStyle(
        fontSize: 14,
        height: 24 / 24,
        fontWeight: FontWeight.w300,
        color: AppColors.primaryTextColorLight,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.inputLabel = const TextStyle(
        fontSize: 12,
        height: 24 / 24,
        fontWeight: FontWeight.w300,
        color: AppColors.primaryTextColorLight,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.dateTimeStyle = const TextStyle(
        fontSize: 14,
        height: 24 / 24,
        color: AppColors.primaryTextColorLight,
        fontFeatures: [FontFeature.tabularFigures()],
        fontFamily: "Inter",
        package: "batt_ds"),
    super.actionSliderStyle = const TextStyle(
      fontSize: 18,
      height: 24 / 16,
      fontWeight: FontWeight.w400,
      color: AppColors.offWhite,
      fontFamily: "Inter",
      package: "batt_ds",
    ),
  });
}

/// {@macro app_typography}
class AppTypographyDark extends AppTypographyTheme {
  /// {@macro app_typography}
  AppTypographyDark({
    super.headlineLarge = const TextStyle(
        fontSize: 24,
        height: 32 / 24,
        fontWeight: FontWeight.w600,
        color: AppColors.offWhite,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.headlineMedium = const TextStyle(
        fontSize: 16,
        height: 24 / 20,
        fontWeight: FontWeight.w600,
        color: AppColors.offWhite,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.headlineSmall = const TextStyle(
        fontSize: 14,
        height: 24 / 16,
        fontWeight: FontWeight.w600,
        color: AppColors.offWhite,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.titleLarge = const TextStyle(
        fontSize: 18,
        height: 32 / 24,
        fontWeight: FontWeight.w600,
        color: AppColors.offWhite,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.titleMedium = const TextStyle(
        fontSize: 16,
        height: 24 / 16,
        fontWeight: FontWeight.w600,
        color: AppColors.offWhite,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.titleSmall = const TextStyle(
        fontSize: 14,
        height: 24 / 14,
        fontWeight: FontWeight.w600,
        color: AppColors.offWhite,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.titleBold = const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: AppColors.offWhite,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.bodyLarge = const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: AppColors.offWhite,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.bodyMedium = const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColors.offWhite,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.bodySmall = const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AppColors.offWhite,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.labelLarge = const TextStyle(
        fontSize: 16,
        height: 20 / 16,
        fontWeight: FontWeight.w500,
        color: AppColors.offWhite,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.labelMedium = const TextStyle(
        fontSize: 14,
        height: 16 / 14,
        fontWeight: FontWeight.w400,
        color: AppColors.offWhite,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.labelSmall = const TextStyle(
        fontSize: 12,
        height: 16 / 12,
        fontWeight: FontWeight.w400,
        color: AppColors.offWhite,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.licensePlate = const TextStyle(
        fontSize: 14,
        height: 24 / 16,
        fontWeight: FontWeight.w700,
        color: AppColors.licensePlateBelgiumTextColor,
        fontFamily: "LicensePlate",
        package: "batt_ds"),
    super.button2XLarge = const TextStyle(
        fontSize: 22,
        height: 24 / 16,
        fontWeight: FontWeight.w700,
        color: AppColors.primaryButtonTextColor,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.buttonXLarge = const TextStyle(
        fontSize: 18,
        height: 24 / 16,
        fontWeight: FontWeight.w600,
        color: AppColors.primaryButtonTextColor,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.buttonLarge = const TextStyle(
        fontSize: 16,
        height: 24 / 16,
        fontWeight: FontWeight.w500,
        color: AppColors.primaryButtonTextColor,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.buttonMedium = const TextStyle(
        fontSize: 14,
        height: 20 / 14,
        color: AppColors.primaryButtonTextColor,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.buttonSmall = const TextStyle(
        fontSize: 12,
        height: 20 / 14,
        fontWeight: FontWeight.w500,
        color: AppColors.primaryButtonTextColor,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.buttonXSmall = const TextStyle(
        fontSize: 10,
        height: 20 / 14,
        fontWeight: FontWeight.w500,
        color: AppColors.primaryButtonTextColor,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.chipSmall = const TextStyle(
        fontSize: 12,
        height: 24 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.offWhite,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.chipMedium = const TextStyle(
        fontSize: 14,
        height: 24 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.offWhite,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.chipLarge = const TextStyle(
        fontSize: 16,
        height: 24 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.offWhite,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.disabledText = const TextStyle(
        fontSize: 12,
        height: 24 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.disabledTextColorDark,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.errorText = const TextStyle(
        fontSize: 12,
        height: 24 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.rusticClay,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.successText = const TextStyle(
        fontSize: 12,
        height: 24 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.ctaGreen,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.warningText = const TextStyle(
        fontSize: 12,
        height: 24 / 24,
        fontWeight: FontWeight.w600,
        color: AppColors.ctaSand,
        fontFamily: "Inter",
        package: "batt_ds"),
    super.inputPlaceholder = const TextStyle(
      fontSize: 12,
      height: 24 / 24,
      fontWeight: FontWeight.w400,
      color: AppColors.offWhite,
      fontFamily: "Inter",
      package: "batt_ds",
    ),
    super.inputHint = const TextStyle(
      fontSize: 14,
      height: 24 / 24,
      fontWeight: FontWeight.w300,
      color: AppColors.offWhite,
      fontFamily: "Inter",
      package: "batt_ds",
    ),
    super.inputLabel = const TextStyle(
      fontSize: 12,
      height: 24 / 24,
      fontWeight: FontWeight.w300,
      color: AppColors.offWhite,
      fontFamily: "Inter",
      package: "batt_ds",
    ),
    super.dateTimeStyle = const TextStyle(
      fontSize: 14,
      height: 24 / 24,
      color: AppColors.offWhite,
      fontFeatures: [FontFeature.tabularFigures()],
      fontFamily: "Inter",
      package: "batt_ds",
    ),
    super.actionSliderStyle = const TextStyle(
      fontSize: 18,
      height: 24 / 16,
      fontWeight: FontWeight.w400,
      color: AppColors.offWhite,
      fontFamily: "Inter",
      package: "batt_ds",
    ),
  });
}
