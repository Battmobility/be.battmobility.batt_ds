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
    required this.buttonXSmall,
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

  /// Button XSmall
  final TextStyle buttonXSmall;

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
    TextStyle? buttonXSmall,
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
      buttonXSmall: buttonXSmall ?? this.buttonXSmall,
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
      buttonXSmall: TextStyle.lerp(buttonXSmall, other.buttonXSmall, t)!,
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
        color: AppColors.textColor,
        fontFamily: "LexendDeca",
        package: "batt_ds"),
    super.mediumHeadline = const TextStyle(
        fontSize: 20,
        height: 24 / 20,
        fontWeight: FontWeight.w300,
        color: AppColors.textColor,
        fontFamily: "LexendDeca",
        package: "batt_ds"),
    super.smallHeadline = const TextStyle(
        fontSize: 16,
        height: 24 / 16,
        fontWeight: FontWeight.w300,
        color: AppColors.textColor,
        fontFamily: "LexendDeca",
        package: "batt_ds"),
    super.licensePlate = const TextStyle(
        fontSize: 14,
        height: 24 / 16,
        fontWeight: FontWeight.w700,
        color: AppColors.licensePlateBelgiumTextColor,
        fontFamily: "LicensePlate",
        package: "batt_ds"),
    super.button2XLarge = const TextStyle(
        fontSize: 20,
        height: 24 / 10,
        fontWeight: FontWeight.w700,
        color: AppColors.primaryButtonTextColor,
        fontFamily: "LexendDeca",
        package: "batt_ds"),
    super.buttonXLarge = const TextStyle(
        fontSize: 18,
        height: 24 / 12,
        fontWeight: FontWeight.w600,
        color: AppColors.primaryButtonTextColor,
        fontFamily: "LexendDeca",
        package: "batt_ds"),
    super.buttonLarge = const TextStyle(
        fontSize: 16,
        height: 24 / 16,
        fontWeight: FontWeight.w500,
        color: AppColors.primaryButtonTextColor,
        fontFamily: "LexendDeca",
        package: "batt_ds"),
    super.buttonMedium = const TextStyle(
        fontSize: 14,
        height: 20 / 14,
        color: AppColors.primaryButtonTextColor,
        fontFamily: "LexendDeca",
        package: "batt_ds"),
    super.buttonSmall = const TextStyle(
        fontSize: 12,
        height: 20 / 14,
        fontWeight: FontWeight.w500,
        color: AppColors.primaryButtonTextColor,
        fontFamily: "LexendDeca",
        package: "batt_ds"),
    super.buttonXSmall = const TextStyle(
        fontSize: 10,
        height: 20 / 14,
        fontWeight: FontWeight.w500,
        color: AppColors.primaryButtonTextColor,
        fontFamily: "LexendDeca",
        package: "batt_ds"),
    super.chipSmall = const TextStyle(
        fontSize: 12,
        height: 24 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.textColor,
        fontFamily: "LexendDeca",
        package: "batt_ds"),
    super.chipMedium = const TextStyle(
        fontSize: 14,
        height: 24 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.textColor,
        fontFamily: "LexendDeca",
        package: "batt_ds"),
    super.chipLarge = const TextStyle(
        fontSize: 16,
        height: 24 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.textColor,
        fontFamily: "LexendDeca",
        package: "batt_ds"),
    super.largeText = const TextStyle(
        fontSize: 16,
        height: 24 / 20,
        fontWeight: FontWeight.w400,
        color: AppColors.textColor,
        fontFamily: "LexendDeca",
        package: "batt_ds"),
    super.defaultText = const TextStyle(
        fontSize: 12,
        height: 24 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.textColor,
        fontFamily: "LexendDeca",
        package: "batt_ds"),
    super.disabledText = const TextStyle(
        fontSize: 12,
        height: 24 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.disabledTextColor,
        fontFamily: "LexendDeca",
        package: "batt_ds"),
    super.errorText = const TextStyle(
        fontSize: 12,
        height: 24 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.ctaSand,
        fontFamily: "LexendDeca",
        package: "batt_ds"),
    super.successText = const TextStyle(
        fontSize: 12,
        height: 24 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.ctaSand,
        fontFamily: "LexendDeca",
        package: "batt_ds"),
    super.warningText = const TextStyle(
        fontSize: 12,
        height: 24 / 24,
        fontWeight: FontWeight.w600,
        color: AppColors.ctaSand,
        fontFamily: "LexendDeca",
        package: "batt_ds"),
    super.smallText = const TextStyle(
        fontSize: 10,
        height: 32 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.textColor,
        fontFamily: "LexendDeca",
        package: "batt_ds"),
    super.smallLabel = const TextStyle(
        fontSize: 10,
        height: 32 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.textColor,
        fontFamily: "LexendDeca",
        package: "batt_ds"),
    super.mediumLabel = const TextStyle(
        fontSize: 12,
        height: 32 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.textColor,
        fontFamily: "LexendDeca",
        package: "batt_ds"),
    super.largeLabel = const TextStyle(
        fontSize: 14,
        height: 32 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.textColor,
        fontFamily: "LexendDeca",
        package: "batt_ds"),
    super.heroTitle = const TextStyle(
        fontSize: 36,
        height: 32 / 32,
        fontWeight: FontWeight.w800,
        color: AppColors.heroTextColor,
        fontFamily: "LexendDeca",
        package: "batt_ds"),
    super.largeTitle = const TextStyle(
        fontSize: 26,
        height: 32 / 24,
        fontWeight: FontWeight.w500,
        color: AppColors.textColor,
        fontFamily: "LexendDeca",
        package: "batt_ds"),
    super.mediumTitle = const TextStyle(
        fontSize: 20,
        height: 24 / 20,
        fontWeight: FontWeight.w500,
        color: AppColors.textColor,
        fontFamily: "LexendDeca",
        package: "batt_ds"),
    super.smallTitle = const TextStyle(
        fontSize: 16,
        height: 24 / 16,
        fontWeight: FontWeight.w500,
        color: AppColors.textColor,
        fontFamily: "LexendDeca",
        package: "batt_ds"),
    super.inputPlaceholder = const TextStyle(
        fontSize: 12,
        height: 24 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.primaryTextColorLight,
        fontFamily: "LexendDeca",
        package: "batt_ds"),
    super.inputHint = const TextStyle(
        fontSize: 14,
        height: 24 / 24,
        fontWeight: FontWeight.w300,
        color: AppColors.primaryTextColorLight,
        fontFamily: "LexendDeca",
        package: "batt_ds"),
    super.inputLabel = const TextStyle(
        fontSize: 12,
        height: 24 / 24,
        fontWeight: FontWeight.w300,
        color: AppColors.primaryTextColorLight,
        fontFamily: "LexendDeca",
        package: "batt_ds"),
    super.navigationBarLabelStyle = const TextStyle(
        fontSize: 18,
        height: 24 / 24,
        fontWeight: FontWeight.w600,
        color: AppColors.navigationBarLabel,
        fontFamily: "LexendDeca",
        package: "batt_ds"),
    super.dateTimeStyle = const TextStyle(
        fontSize: 14,
        height: 24 / 24,
        color: AppColors.primaryTextColorLight,
        fontFeatures: [FontFeature.tabularFigures()],
        fontFamily: "LexendDeca",
        package: "batt_ds"),
    super.actionSliderStyle = const TextStyle(
      fontSize: 18,
      height: 24 / 16,
      fontWeight: FontWeight.w400,
      color: AppColors.offWhite,
      fontFamily: "LexendDeca",
      package: "batt_ds",
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
        color: AppColors.offWhite,
        fontFamily: "LexendDeca",
        package: "batt_ds"),
    super.mediumHeadline = const TextStyle(
        fontSize: 20,
        height: 24 / 20,
        fontWeight: FontWeight.w300,
        color: AppColors.offWhite,
        fontFamily: "LexendDeca",
        package: "batt_ds"),
    super.smallHeadline = const TextStyle(
        fontSize: 16,
        height: 24 / 16,
        fontWeight: FontWeight.w300,
        color: AppColors.offWhite,
        fontFamily: "LexendDeca",
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
        fontFamily: "LexendDeca",
        package: "batt_ds"),
    super.buttonXLarge = const TextStyle(
        fontSize: 18,
        height: 24 / 16,
        fontWeight: FontWeight.w600,
        color: AppColors.primaryButtonTextColor,
        fontFamily: "LexendDeca",
        package: "batt_ds"),
    super.buttonLarge = const TextStyle(
        fontSize: 16,
        height: 24 / 16,
        fontWeight: FontWeight.w500,
        color: AppColors.primaryButtonTextColor,
        fontFamily: "LexendDeca",
        package: "batt_ds"),
    super.buttonMedium = const TextStyle(
        fontSize: 14,
        height: 20 / 14,
        color: AppColors.primaryButtonTextColor,
        fontFamily: "LexendDeca",
        package: "batt_ds"),
    super.buttonSmall = const TextStyle(
        fontSize: 12,
        height: 20 / 14,
        fontWeight: FontWeight.w500,
        color: AppColors.primaryButtonTextColor,
        fontFamily: "LexendDeca",
        package: "batt_ds"),
    super.buttonXSmall = const TextStyle(
        fontSize: 10,
        height: 20 / 14,
        fontWeight: FontWeight.w500,
        color: AppColors.primaryButtonTextColor,
        fontFamily: "LexendDeca",
        package: "batt_ds"),
    super.chipSmall = const TextStyle(
        fontSize: 12,
        height: 24 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.offWhite,
        fontFamily: "LexendDeca",
        package: "batt_ds"),
    super.chipMedium = const TextStyle(
        fontSize: 14,
        height: 24 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.offWhite,
        fontFamily: "LexendDeca",
        package: "batt_ds"),
    super.chipLarge = const TextStyle(
        fontSize: 16,
        height: 24 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.offWhite,
        fontFamily: "LexendDeca",
        package: "batt_ds"),
    super.largeText = const TextStyle(
        fontSize: 16,
        height: 24 / 20,
        fontWeight: FontWeight.w400,
        color: AppColors.offWhite,
        fontFamily: "LexendDeca",
        package: "batt_ds"),
    super.defaultText = const TextStyle(
        fontSize: 12,
        height: 24 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.offWhite,
        fontFamily: "LexendDeca",
        package: "batt_ds"),
    super.smallLabel = const TextStyle(
        fontSize: 10,
        height: 32 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.offWhite),
    super.mediumLabel = const TextStyle(
        fontSize: 12,
        height: 32 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.offWhite,
        fontFamily: "LexendDeca",
        package: "batt_ds"),
    super.largeLabel = const TextStyle(
        fontSize: 14,
        height: 32 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.offWhite),
    super.disabledText = const TextStyle(
        fontSize: 12,
        height: 24 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.disabledTextColorDark,
        fontFamily: "LexendDeca",
        package: "batt_ds"),
    super.errorText = const TextStyle(
        fontSize: 12,
        height: 24 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.ctaSand,
        fontFamily: "LexendDeca",
        package: "batt_ds"),
    super.successText = const TextStyle(
        fontSize: 12,
        height: 24 / 24,
        fontWeight: FontWeight.w400,
        color: AppColors.ctaGreen,
        fontFamily: "LexendDeca",
        package: "batt_ds"),
    super.warningText = const TextStyle(
        fontSize: 12,
        height: 24 / 24,
        fontWeight: FontWeight.w600,
        color: AppColors.ctaSand,
        fontFamily: "LexendDeca",
        package: "batt_ds"),
    super.smallText = const TextStyle(
      fontSize: 10,
      height: 16 / 16,
      fontWeight: FontWeight.w400,
      color: AppColors.offWhite,
      fontFamily: "LexendDeca",
      package: "batt_ds",
    ),
    super.heroTitle = const TextStyle(
      fontSize: 36,
      height: 38 / 32,
      fontWeight: FontWeight.w800,
      color: AppColors.heroTextColorDark,
      fontFamily: "LexendDeca",
      package: "batt_ds",
    ),
    super.largeTitle = const TextStyle(
      fontSize: 26,
      height: 32 / 24,
      fontWeight: FontWeight.w500,
      color: AppColors.offWhite,
      fontFamily: "LexendDeca",
      package: "batt_ds",
    ),
    super.mediumTitle = const TextStyle(
      fontSize: 20,
      height: 24 / 20,
      fontWeight: FontWeight.w500,
      color: AppColors.offWhite,
      fontFamily: "LexendDeca",
      package: "batt_ds",
    ),
    super.smallTitle = const TextStyle(
      fontSize: 16,
      height: 24 / 16,
      fontWeight: FontWeight.w500,
      color: AppColors.offWhite,
      fontFamily: "LexendDeca",
      package: "batt_ds",
    ),
    super.inputPlaceholder = const TextStyle(
      fontSize: 12,
      height: 24 / 24,
      fontWeight: FontWeight.w400,
      color: AppColors.offWhite,
      fontFamily: "LexendDeca",
      package: "batt_ds",
    ),
    super.inputHint = const TextStyle(
      fontSize: 14,
      height: 24 / 24,
      fontWeight: FontWeight.w300,
      color: AppColors.offWhite,
      fontFamily: "LexendDeca",
      package: "batt_ds",
    ),
    super.inputLabel = const TextStyle(
      fontSize: 12,
      height: 24 / 24,
      fontWeight: FontWeight.w300,
      color: AppColors.offWhite,
      fontFamily: "LexendDeca",
      package: "batt_ds",
    ),
    super.navigationBarLabelStyle = const TextStyle(
      fontSize: 18,
      height: 24 / 24,
      fontWeight: FontWeight.w600,
      color: AppColors.navigationBarLabel,
      fontFamily: "LexendDeca",
      package: "batt_ds",
    ),
    super.dateTimeStyle = const TextStyle(
      fontSize: 14,
      height: 24 / 24,
      color: AppColors.offWhite,
      fontFeatures: [FontFeature.tabularFigures()],
      fontFamily: "LexendDeca",
      package: "batt_ds",
    ),
    super.actionSliderStyle = const TextStyle(
      fontSize: 18,
      height: 24 / 16,
      fontWeight: FontWeight.w400,
      color: AppColors.offWhite,
      fontFamily: "LexendDeca",
      package: "batt_ds",
    ),
  });
}
