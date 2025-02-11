import 'package:batt_ds/atoms/app_colors.dart';
import 'package:flutter/material.dart';

/// {@template app_typography}
/// Theme class which provides configuration of [TextStyle]
/// {@endtemplate}
interface class AppTypographyTheme extends ThemeExtension<AppTypographyTheme> {
  /// {@macro app_typography}
  AppTypographyTheme({
    required this.largeHeadline,
    required this.mediumHeadline,
    required this.smallHeadline,
    required this.largeLabel,
    required this.mediumLabel,
    required this.smallLabel,
    required this.licensePlate,
    required this.defaultText,
    required this.disabledText,
    required this.errorText,
    required this.successText,
    required this.warningText,
    required this.largeText,
    required this.smallText,
    required this.heroTitle,
    required this.largeTitle,
    required this.mediumTitle,
    required this.smallTitle,
    required this.button2XLarge,
    required this.buttonXLarge,
    required this.buttonLarge,
    required this.buttonMedium,
    required this.buttonSmall,
    required this.chipSmall,
    required this.chipMedium,
    required this.chipLarge,
    required this.inputPlaceholder,
    required this.inputHint,
    required this.inputLabel,
    required this.navigationBarLabelStyle,
    required this.dateTimeStyle,
    required this.actionSliderStyle,
  });

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

  // Default text
  final TextStyle largeText;

  // Default text
  final TextStyle defaultText;

  // Small text
  final TextStyle smallText;

  // Disabled text
  final TextStyle disabledText;

  // Error text
  final TextStyle errorText;

  // Success text
  final TextStyle successText;

  // Warning text
  final TextStyle warningText;

  // Hero title
  final TextStyle heroTitle;

  // Large headline
  final TextStyle largeHeadline;

  // Medium headline
  final TextStyle mediumHeadline;

  // Small headline
  final TextStyle smallHeadline;

  // Large title
  final TextStyle largeTitle;

  // Medium title
  final TextStyle mediumTitle;

  // Small title
  final TextStyle smallTitle;

  // Large label
  final TextStyle largeLabel;

  // Medium label
  final TextStyle mediumLabel;

  // Small label
  final TextStyle smallLabel;

  // Placeholder text
  final TextStyle inputPlaceholder;

  // Hint text
  final TextStyle inputHint;

  // Input label
  final TextStyle inputLabel;

  // Navigation bar label
  final TextStyle navigationBarLabelStyle;

  // DateTime style
  final TextStyle dateTimeStyle;

  // Actionslider style
  final TextStyle actionSliderStyle;

  @override
  ThemeExtension<AppTypographyTheme> copyWith({
    TextStyle? licensePlate,
    TextStyle? button2XLarge,
    TextStyle? buttonXLarge,
    TextStyle? buttonLarge,
    TextStyle? buttonMedium,
    TextStyle? buttonSmall,
    TextStyle? chipSmall,
    TextStyle? chipMedium,
    TextStyle? chipLarge,
    TextStyle? defaultText,
    TextStyle? disabledText,
    TextStyle? errorText,
    TextStyle? successText,
    TextStyle? warningText,
    TextStyle? largeText,
    TextStyle? smallText,
    TextStyle? heroTitle,
    TextStyle? largeTitle,
    TextStyle? mediumTitle,
    TextStyle? smallTitle,
    TextStyle? inputPlaceholder,
    TextStyle? inputHint,
    TextStyle? inputLabel,
    TextStyle? navigationBarLabelStyle,
    TextStyle? largeLabel,
    TextStyle? mediumLabel,
    TextStyle? smallLabel,
    TextStyle? dateTimeStyle,
    TextStyle? actionSliderStyle,
    TextStyle? largeHeadline,
    TextStyle? mediumHeadline,
    TextStyle? smallHeadline,
  }) {
    return AppTypographyTheme(
      largeHeadline: largeHeadline ?? this.largeHeadline,
      mediumHeadline: mediumHeadline ?? this.mediumHeadline,
      smallHeadline: smallHeadline ?? this.smallHeadline,
      licensePlate: licensePlate ?? this.licensePlate,
      button2XLarge: button2XLarge ?? this.button2XLarge,
      buttonXLarge: buttonXLarge ?? this.buttonXLarge,
      buttonLarge: buttonLarge ?? this.buttonLarge,
      buttonMedium: buttonMedium ?? this.buttonMedium,
      buttonSmall: buttonSmall ?? this.buttonSmall,
      chipLarge: chipLarge ?? this.chipLarge,
      chipMedium: chipMedium ?? this.chipMedium,
      chipSmall: chipSmall ?? this.chipSmall,
      defaultText: defaultText ?? this.defaultText,
      disabledText: disabledText ?? this.disabledText,
      errorText: errorText ?? this.errorText,
      successText: successText ?? this.successText,
      warningText: warningText ?? this.warningText,
      heroTitle: heroTitle ?? this.heroTitle,
      largeText: largeText ?? this.largeText,
      smallText: smallText ?? this.smallText,
      largeTitle: largeTitle ?? this.largeTitle,
      mediumTitle: mediumTitle ?? this.mediumTitle,
      smallTitle: smallTitle ?? this.smallTitle,
      inputPlaceholder: inputPlaceholder ?? this.inputPlaceholder,
      inputHint: inputHint ?? this.inputHint,
      inputLabel: inputLabel ?? this.inputLabel,
      navigationBarLabelStyle:
          navigationBarLabelStyle ?? this.navigationBarLabelStyle,
      largeLabel: largeLabel ?? this.largeLabel,
      mediumLabel: mediumLabel ?? this.mediumLabel,
      smallLabel: smallLabel ?? this.smallLabel,
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
      largeHeadline: TextStyle.lerp(largeHeadline, other.largeHeadline, t)!,
      mediumHeadline: TextStyle.lerp(mediumHeadline, other.mediumHeadline, t)!,
      smallHeadline: TextStyle.lerp(smallHeadline, other.smallHeadline, t)!,
      licensePlate: TextStyle.lerp(licensePlate, other.licensePlate, t)!,
      button2XLarge: TextStyle.lerp(button2XLarge, other.button2XLarge, t)!,
      buttonXLarge: TextStyle.lerp(buttonXLarge, other.buttonXLarge, t)!,
      buttonLarge: TextStyle.lerp(buttonLarge, other.buttonLarge, t)!,
      buttonMedium: TextStyle.lerp(buttonMedium, other.buttonMedium, t)!,
      buttonSmall: TextStyle.lerp(buttonSmall, other.buttonSmall, t)!,
      chipSmall: TextStyle.lerp(chipSmall, other.chipSmall, t)!,
      chipMedium: TextStyle.lerp(chipMedium, other.chipMedium, t)!,
      chipLarge: TextStyle.lerp(chipLarge, other.chipLarge, t)!,
      defaultText: TextStyle.lerp(defaultText, other.defaultText, t)!,
      heroTitle: TextStyle.lerp(heroTitle, other.heroTitle, t)!,
      largeText: TextStyle.lerp(largeText, other.largeText, t)!,
      disabledText: TextStyle.lerp(disabledText, other.disabledText, t)!,
      errorText: TextStyle.lerp(errorText, other.errorText, t)!,
      successText: TextStyle.lerp(successText, other.successText, t)!,
      warningText: TextStyle.lerp(warningText, other.warningText, t)!,
      smallText: TextStyle.lerp(smallText, other.smallText, t)!,
      largeTitle: TextStyle.lerp(largeTitle, other.largeTitle, t)!,
      mediumTitle: TextStyle.lerp(mediumTitle, other.mediumTitle, t)!,
      smallTitle: TextStyle.lerp(smallTitle, other.smallTitle, t)!,
      inputPlaceholder:
          TextStyle.lerp(inputPlaceholder, other.inputPlaceholder, t)!,
      inputHint: TextStyle.lerp(inputHint, other.inputHint, t)!,
      inputLabel: TextStyle.lerp(inputLabel, other.inputLabel, t)!,
      navigationBarLabelStyle: TextStyle.lerp(
        navigationBarLabelStyle,
        other.navigationBarLabelStyle,
        t,
      )!,
      largeLabel: TextStyle.lerp(largeLabel, other.largeLabel, t)!,
      mediumLabel: TextStyle.lerp(mediumLabel, other.mediumLabel, t)!,
      smallLabel: TextStyle.lerp(smallLabel, other.smallLabel, t)!,
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
    super.largeHeadline = const TextStyle(
        fontSize: 26,
        height: 32 / 24,
        fontWeight: FontWeight.w300,
        color: AppColors.textColor),
    super.mediumHeadline = const TextStyle(
        fontSize: 20,
        height: 24 / 20,
        fontWeight: FontWeight.w300,
        color: AppColors.textColor),
    super.smallHeadline = const TextStyle(
        fontSize: 16,
        height: 24 / 16,
        fontWeight: FontWeight.w300,
        color: AppColors.textColor),
    super.licensePlate = const TextStyle(
        fontSize: 14,
        height: 24 / 16,
        fontWeight: FontWeight.w700,
        color: AppColors.licensePlateBelgiumTextColor,
        fontFamily: "LicensePlate"),
    super.button2XLarge = const TextStyle(
        fontSize: 20,
        height: 24 / 10,
        fontWeight: FontWeight.w700,
        color: AppColors.primaryButtonTextColor),
    super.buttonXLarge = const TextStyle(
        fontSize: 18,
        height: 24 / 12,
        fontWeight: FontWeight.w600,
        color: AppColors.primaryButtonTextColor),
    super.buttonLarge = const TextStyle(
        fontSize: 16,
        height: 24 / 16,
        fontWeight: FontWeight.w500,
        color: AppColors.primaryButtonTextColor),
    super.buttonMedium = const TextStyle(
        fontSize: 14, height: 20 / 14, color: AppColors.primaryButtonTextColor),
    super.buttonSmall = const TextStyle(
        fontSize: 8,
        height: 20 / 14,
        fontWeight: FontWeight.w500,
        color: AppColors.primaryButtonTextColor),
    super.chipSmall = const TextStyle(
        fontSize: 12,
        height: 24 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.textColor),
    super.chipMedium = const TextStyle(
        fontSize: 14,
        height: 24 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.textColor),
    super.chipLarge = const TextStyle(
        fontSize: 16,
        height: 24 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.textColor),
    super.largeText = const TextStyle(
        fontSize: 16,
        height: 24 / 20,
        fontWeight: FontWeight.w400,
        color: AppColors.textColor),
    super.defaultText = const TextStyle(
        fontSize: 12,
        height: 24 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.textColor),
    super.disabledText = const TextStyle(
        fontSize: 12,
        height: 24 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.disabledTextColor),
    super.errorText = const TextStyle(
        fontSize: 12,
        height: 24 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.errorText),
    super.successText = const TextStyle(
        fontSize: 12,
        height: 24 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.successText),
    super.warningText = const TextStyle(
        fontSize: 12,
        height: 24 / 24,
        fontWeight: FontWeight.w600,
        color: AppColors.warningText),
    super.smallText = const TextStyle(
        fontSize: 10,
        height: 32 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.textColor),
    super.smallLabel = const TextStyle(
        fontSize: 10,
        height: 32 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.textColor),
    super.mediumLabel = const TextStyle(
        fontSize: 12,
        height: 32 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.textColor),
    super.largeLabel = const TextStyle(
        fontSize: 14,
        height: 32 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.textColor),
    super.heroTitle = const TextStyle(
        fontSize: 36,
        height: 32 / 32,
        fontWeight: FontWeight.w800,
        color: AppColors.heroTextColor),
    super.largeTitle = const TextStyle(
        fontSize: 26,
        height: 32 / 24,
        fontWeight: FontWeight.w500,
        color: AppColors.textColor),
    super.mediumTitle = const TextStyle(
        fontSize: 20,
        height: 24 / 20,
        fontWeight: FontWeight.w500,
        color: AppColors.textColor),
    super.smallTitle = const TextStyle(
        fontSize: 16,
        height: 24 / 16,
        fontWeight: FontWeight.w500,
        color: AppColors.textColor),
    super.inputPlaceholder = const TextStyle(
        fontSize: 12,
        height: 24 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.primaryTextColorLight),
    super.inputHint = const TextStyle(
        fontSize: 12,
        height: 24 / 24,
        fontWeight: FontWeight.w300,
        color: AppColors.primaryTextColorLight),
    super.inputLabel = const TextStyle(
        fontSize: 12,
        height: 24 / 24,
        fontWeight: FontWeight.w300,
        color: AppColors.primaryTextColorLight),
    super.navigationBarLabelStyle = const TextStyle(
        fontSize: 18,
        height: 24 / 24,
        fontWeight: FontWeight.w600,
        color: AppColors.navigationBarLabel),
    super.dateTimeStyle = const TextStyle(
        fontSize: 16,
        height: 24 / 24,
        fontWeight: FontWeight.w600,
        color: AppColors.primaryTextColorLight,
        fontFeatures: [FontFeature.tabularFigures()]),
    super.actionSliderStyle = const TextStyle(
      fontSize: 18,
      height: 24 / 16,
      fontWeight: FontWeight.w400,
      color: AppColors.textColorDark,
    ),
  });
}

/// {@macro app_typography}
class AppTypographyDark extends AppTypographyTheme {
  /// {@macro app_typography}
  AppTypographyDark({
    super.largeHeadline = const TextStyle(
        fontSize: 26,
        height: 32 / 24,
        fontWeight: FontWeight.w300,
        color: AppColors.textColorDark),
    super.mediumHeadline = const TextStyle(
        fontSize: 20,
        height: 24 / 20,
        fontWeight: FontWeight.w300,
        color: AppColors.textColorDark),
    super.smallHeadline = const TextStyle(
        fontSize: 16,
        height: 24 / 16,
        fontWeight: FontWeight.w300,
        color: AppColors.textColorDark),
    super.licensePlate = const TextStyle(
        fontSize: 14,
        height: 24 / 16,
        fontWeight: FontWeight.w700,
        color: AppColors.licensePlateBelgiumTextColor,
        fontFamily: "LicensePlate"),
    super.button2XLarge = const TextStyle(
        fontSize: 22,
        height: 24 / 16,
        fontWeight: FontWeight.w700,
        color: AppColors.primaryButtonTextColor),
    super.buttonXLarge = const TextStyle(
        fontSize: 18,
        height: 24 / 16,
        fontWeight: FontWeight.w600,
        color: AppColors.primaryButtonTextColor),
    super.buttonLarge = const TextStyle(
        fontSize: 16,
        height: 24 / 16,
        fontWeight: FontWeight.w500,
        color: AppColors.primaryButtonTextColor),
    super.buttonMedium = const TextStyle(
        fontSize: 14, height: 20 / 14, color: AppColors.primaryButtonTextColor),
    super.buttonSmall = const TextStyle(
        fontSize: 12,
        height: 20 / 14,
        fontWeight: FontWeight.w500,
        color: AppColors.primaryButtonTextColor),
    super.chipSmall = const TextStyle(
        fontSize: 12,
        height: 24 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.textColorDark),
    super.chipMedium = const TextStyle(
        fontSize: 14,
        height: 24 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.textColorDark),
    super.chipLarge = const TextStyle(
        fontSize: 16,
        height: 24 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.textColorDark),
    super.largeText = const TextStyle(
        fontSize: 16,
        height: 24 / 20,
        fontWeight: FontWeight.w400,
        color: AppColors.textColorDark),
    super.defaultText = const TextStyle(
        fontSize: 12,
        height: 24 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.textColorDark),
    super.smallLabel = const TextStyle(
        fontSize: 10,
        height: 32 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.textColorDark),
    super.mediumLabel = const TextStyle(
        fontSize: 12,
        height: 32 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.textColorDark),
    super.largeLabel = const TextStyle(
        fontSize: 14,
        height: 32 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.textColorDark),
    super.disabledText = const TextStyle(
        fontSize: 12,
        height: 24 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.disabledTextColorDark),
    super.errorText = const TextStyle(
        fontSize: 12,
        height: 24 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.errorText),
    super.successText = const TextStyle(
        fontSize: 12,
        height: 24 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.successText),
    super.warningText = const TextStyle(
        fontSize: 12,
        height: 24 / 24,
        fontWeight: FontWeight.w600,
        color: AppColors.warningText),
    super.smallText = const TextStyle(
        fontSize: 10,
        height: 16 / 16,
        fontWeight: FontWeight.w400,
        color: AppColors.textColorDark),
    super.heroTitle = const TextStyle(
        fontSize: 36,
        height: 38 / 32,
        fontWeight: FontWeight.w800,
        color: AppColors.heroTextColorDark),
    super.largeTitle = const TextStyle(
        fontSize: 26,
        height: 32 / 24,
        fontWeight: FontWeight.w500,
        color: AppColors.textColorDark),
    super.mediumTitle = const TextStyle(
        fontSize: 20,
        height: 24 / 20,
        fontWeight: FontWeight.w500,
        color: AppColors.textColorDark),
    super.smallTitle = const TextStyle(
        fontSize: 16,
        height: 24 / 16,
        fontWeight: FontWeight.w500,
        color: AppColors.textColorDark),
    super.inputPlaceholder = const TextStyle(
        fontSize: 12,
        height: 24 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.textColorDark),
    super.inputHint = const TextStyle(
        fontSize: 12,
        height: 24 / 24,
        fontWeight: FontWeight.w300,
        color: AppColors.textColorDark),
    super.inputLabel = const TextStyle(
        fontSize: 12,
        height: 24 / 24,
        fontWeight: FontWeight.w300,
        color: AppColors.textColorDark),
    super.navigationBarLabelStyle = const TextStyle(
        fontSize: 18,
        height: 24 / 24,
        fontWeight: FontWeight.w600,
        color: AppColors.navigationBarLabel),
    super.dateTimeStyle = const TextStyle(
        fontSize: 16,
        height: 24 / 24,
        fontWeight: FontWeight.w600,
        color: AppColors.textColorDark,
        fontFeatures: [FontFeature.tabularFigures()]),
    super.actionSliderStyle = const TextStyle(
      fontSize: 18,
      height: 24 / 16,
      fontWeight: FontWeight.w400,
      color: AppColors.textColorDark,
    ),
  });
}
