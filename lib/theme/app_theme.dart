import 'package:batt_ds/atoms/atoms.dart';
import 'package:batt_ds/molecules/borders/gradient_input_border.dart';
import 'package:batt_ds/theme/chip_theme.dart';
import 'package:batt_ds/theme/gradient_theme.dart';
import 'package:batt_ds/theme/navigation_theme.dart';
import 'package:batt_ds/theme/snackbar_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'action_slider_theme.dart';
import 'button_theme.dart';
import 'input_theme.dart';
import 'typography_theme.dart';

/// {@template app_theme}
/// Configuration class which collects all Themes of app together and provides
/// them as a single instance
/// {@endtemplate}
class AppTheme extends ThemeExtension<AppTheme> {
  /// {@macro app_theme}
  AppTheme({
    required this.appButtonTheme,
    required this.appInputTheme,
    required this.appTypographyTheme,
    required this.appNavigationTheme,
    required this.appChipTheme,
    required this.appSnackbarTheme,
    required this.actionSliderTheme,
    required this.gradientTheme,
  });

  /// {@macro app_theme}
  factory AppTheme.light() {
    return AppTheme(
      appButtonTheme: AppButtonTheme.light(),
      appInputTheme: AppInputTheme.light(),
      appTypographyTheme: AppTypography(),
      appNavigationTheme: AppNavigationTheme.light(),
      appChipTheme: AppChipTheme.standard(),
      appSnackbarTheme: SnackbarTheme.standard(),
      actionSliderTheme: ActionSliderTheme.standard(),
      gradientTheme: GradientTheme.light(),
    );
  }

  factory AppTheme.dark() {
    return AppTheme(
      appButtonTheme: AppButtonTheme.dark(),
      appInputTheme: AppInputTheme.dark(),
      appTypographyTheme: AppTypographyDark(),
      appNavigationTheme: AppNavigationTheme.dark(),
      appChipTheme: AppChipTheme.standard(),
      appSnackbarTheme: SnackbarTheme.standard(),
      actionSliderTheme: ActionSliderTheme.standard(),
      gradientTheme: GradientTheme.dark(),
    );
  }

  /// [AppButtonTheme] instance provides configuration of buttons
  final ThemeExtension<AppButtonTheme> appButtonTheme;

  /// [AppInputTheme] instance provides configuration of [AppTextField]
  final ThemeExtension<AppInputTheme> appInputTheme;

  /// [AppTypographyTheme] instance provides configuration of [AppTypography]
  final ThemeExtension<AppTypographyTheme> appTypographyTheme;

  /// [AppNavigationTheme] instance provides configuration of [AppNavigation]
  final ThemeExtension<AppNavigationTheme> appNavigationTheme;

  /// [AppChipTheme] instance provides configuration of chips
  final ThemeExtension<AppChipTheme> appChipTheme;

  /// [SnackbarTheme] instance provides configuration of buttons
  final ThemeExtension<SnackbarTheme> appSnackbarTheme;

  /// [ActionSliderTheme] instance provides configuration of lock/unlock sliders
  final ThemeExtension<ActionSliderTheme> actionSliderTheme;

  /// [GradientTheme] instance provides configuration of lock/unlock sliders
  final ThemeExtension<GradientTheme> gradientTheme;

  final themeColorLight = AppColors.white;
  final themeColorDark = AppColors.grey[900]!;

  final shadowColorLight = AppColors.shadow;
  final shadowColorDark = AppColors.shadowDark;

  final themeColorPrimary = AppColors.primaryColors[600]!;
  final themeColorPrimaryContainer = AppColors.grey[100]!;
  final themeColorPrimaryContainerLowest = AppColors.grey[500]!;

  final themeColorSecondary = AppColors.secondaryColors[500]!;
  final themeColorSecondaryContainer = AppColors.grey[200]!;
  final themeColorSecondaryContainerLowest = AppColors.grey[400]!;

  final themeColorSuccess = AppColors.green[800]!;
  final themeColorError = AppColors.red[800]!;

  final AppBarTheme appBarThemeLight = AppBarTheme(
    foregroundColor: Colors.transparent,
    shadowColor: Colors.transparent,
    scrolledUnderElevation: 0,
    elevation: 0,
    iconTheme: const IconThemeData(color: AppColors.defaultOrange),
    titleTextStyle: TextStyle(
        fontSize: 20,
        overflow: TextOverflow.fade,
        height: 24 / 24,
        fontWeight: FontWeight.w600,
        color: AppColors.secondaryColors[500]!,
        fontFamily: "LexendDeca",
        package: "batt_ds"),
  );

  final AppBarTheme appBarThemeDark = AppBarTheme(
    color: AppColors.primaryColors[800]!,
    elevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle.dark,
    iconTheme: const IconThemeData(color: AppColors.defaultOrange),
    titleTextStyle: TextStyle(
        fontSize: 20,
        overflow: TextOverflow.fade,
        height: 24 / 24,
        fontWeight: FontWeight.w600,
        color: AppColors.primaryColors[50]!,
        fontFamily: "LexendDeca",
        package: "batt_ds"),
  );

  final NavigationBarThemeData navigationBarThemeLight = NavigationBarThemeData(
    backgroundColor: AppColors.primaryColors[800]!,
    indicatorColor: AppColors.grey[50]!,
    labelTextStyle: WidgetStateProperty.all<TextStyle>(TextStyle(
      fontSize: 18,
      height: 24 / 24,
      fontWeight: FontWeight.w600,
      color: AppColors.primaryColors[50]!,
      fontFamily: "LexendDeca",
      package: "batt_ds",
    )),
  );

  final NavigationBarThemeData navigationBarThemeDark = NavigationBarThemeData(
    backgroundColor: AppColors.primaryColors[800]!,
    indicatorColor: AppColors.grey[50]!,
    labelTextStyle: WidgetStateProperty.all<TextStyle>(TextStyle(
        fontSize: 18,
        height: 24 / 24,
        fontWeight: FontWeight.w600,
        color: AppColors.primaryColors[50]!,
        fontFamily: "LexendDeca",
        package: "batt_ds")),
  );

  final TextTheme textThemeLight = TextTheme(
    bodyLarge: AppTypography().largeText,
    bodySmall: AppTypography().smallText,
    bodyMedium: AppTypography().defaultText,
    titleLarge: AppTypography().largeTitle,
    titleMedium: AppTypography().mediumTitle,
    titleSmall: AppTypography().smallTitle,
    displayLarge: AppTypography().heroTitle,
    displayMedium: AppTypography().mediumTitle,
    displaySmall: AppTypography().smallTitle,
    labelLarge: AppTypography().largeLabel,
    labelMedium: AppTypography().mediumLabel,
    labelSmall: AppTypography().smallLabel,
    headlineLarge: AppTypography().largeHeadline,
    headlineMedium: AppTypography().mediumHeadline,
    headlineSmall: AppTypography().smallHeadline,
  );

  final TextTheme textThemeDark = TextTheme(
    bodyLarge: AppTypographyDark().largeText,
    bodySmall: AppTypographyDark().smallText,
    bodyMedium: AppTypographyDark().defaultText,
    titleLarge: AppTypographyDark().largeTitle,
    titleMedium: AppTypographyDark().mediumTitle,
    titleSmall: AppTypographyDark().smallTitle,
    displayLarge: AppTypographyDark().heroTitle,
    displayMedium: AppTypographyDark().mediumTitle,
    displaySmall: AppTypographyDark().smallTitle,
    labelLarge: AppTypographyDark().largeLabel,
    labelMedium: AppTypographyDark().mediumLabel,
    labelSmall: AppTypographyDark().smallLabel,
    headlineLarge: AppTypographyDark().largeHeadline,
    headlineMedium: AppTypographyDark().mediumHeadline,
    headlineSmall: AppTypographyDark().smallHeadline,
  );

  final InputDecorationTheme inputDecorationThemeLight = InputDecorationTheme(
    labelStyle:
        AppTypographyDark().mediumLabel.copyWith(color: AppColors.black),
    hintStyle: AppTypographyDark().smallLabel.copyWith(color: AppColors.black),
    filled: true,
    fillColor: AppColors.defaultBlue.withAlpha(6),
    border: const OutlineInputBorder(
      borderRadius: BorderRadius.all(CornerRadii.s),
      borderSide: BorderSide(color: AppColors.defaultBlue),
    ),
    enabledBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(CornerRadii.s),
      borderSide: BorderSide(color: AppColors.defaultBlue),
    ),
    focusedBorder: GradientOutlineInputBorder(
      gradient: GradientTheme.light().inputBorderGradient,
      width: 2,
    ),
    errorBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(CornerRadii.s),
      borderSide: BorderSide(color: AppColors.defaultOrange, width: 1),
    ),
    focusedErrorBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(CornerRadii.s),
      borderSide: BorderSide(color: AppColors.defaultOrange, width: 2),
    ),
    errorStyle: AppTypographyDark()
        .mediumLabel
        .copyWith(color: AppColors.defaultOrange),
  );

  final InputDecorationTheme inputDecorationThemeDark = InputDecorationTheme(
    labelStyle:
        AppTypographyDark().mediumLabel.copyWith(color: AppColors.white),
    hintStyle: AppTypographyDark().smallLabel.copyWith(color: AppColors.white),
    filled: true,
    fillColor: AppColors.defaultBlue.withAlpha(6),
    border: const OutlineInputBorder(
      borderRadius: BorderRadius.all(CornerRadii.s),
      borderSide: BorderSide(color: AppColors.defaultBlue),
    ),
    enabledBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(CornerRadii.s),
      borderSide: BorderSide(color: AppColors.defaultBlue),
    ),
    focusedBorder: GradientOutlineInputBorder(
      gradient: GradientTheme.dark().inputBorderGradient,
      width: 2,
    ),
    errorBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(CornerRadii.s),
      borderSide: BorderSide(color: AppColors.defaultOrange, width: 1),
    ),
    focusedErrorBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(CornerRadii.s),
      borderSide: BorderSide(color: AppColors.defaultOrange, width: 2),
    ),
    errorStyle: AppTypographyDark()
        .mediumLabel
        .copyWith(color: AppColors.defaultOrange),
  );

  final TextSelectionThemeData textSelectionThemeLight = TextSelectionThemeData(
    cursorColor: AppColors.primaryColors[500],
    selectionColor: AppColors.primaryColors[500],
    selectionHandleColor: AppColors.primaryColors[800],
  );

  final TextSelectionThemeData textSelectionThemeDark = TextSelectionThemeData(
    cursorColor: AppColors.primaryColors[500],
    selectionColor: AppColors.primaryColors[500],
    selectionHandleColor: AppColors.primaryColors[800],
  );

  @override
  ThemeExtension<AppTheme> copyWith({
    ThemeExtension<AppButtonTheme>? appButtonTheme,
    ThemeExtension<AppInputTheme>? appInputTheme,
    ThemeExtension<AppTypographyTheme>? typographyTheme,
    ThemeExtension<AppNavigationTheme>? appNavigationTheme,
    ThemeExtension<AppChipTheme>? appChipTheme,
    ThemeExtension<SnackbarTheme>? appSnackbarTheme,
    ThemeExtension<ActionSliderTheme>? actionSliderTheme,
    ThemeExtension<GradientTheme>? gradientTheme,
  }) {
    return AppTheme(
      appButtonTheme: appButtonTheme ?? this.appButtonTheme,
      appInputTheme: appInputTheme ?? this.appInputTheme,
      appTypographyTheme: typographyTheme ?? appTypographyTheme,
      appNavigationTheme: appNavigationTheme ?? this.appNavigationTheme,
      appChipTheme: appChipTheme ?? this.appChipTheme,
      appSnackbarTheme: appSnackbarTheme ?? this.appSnackbarTheme,
      actionSliderTheme: actionSliderTheme ?? this.actionSliderTheme,
      gradientTheme: gradientTheme ?? this.gradientTheme,
    );
  }

  @override
  ThemeExtension<AppTheme> lerp(
    covariant ThemeExtension<AppTheme>? other,
    double t,
  ) {
    if (other is! AppTheme) {
      return this;
    }

    return AppTheme(
      appButtonTheme: appButtonTheme.lerp(other.appButtonTheme, t),
      appInputTheme: appInputTheme.lerp(other.appInputTheme, t),
      appTypographyTheme: appTypographyTheme.lerp(other.appTypographyTheme, t),
      appNavigationTheme: appNavigationTheme.lerp(other.appNavigationTheme, t),
      appChipTheme: appChipTheme.lerp(other.appChipTheme, t),
      appSnackbarTheme: appSnackbarTheme.lerp(other.appSnackbarTheme, t),
      actionSliderTheme: actionSliderTheme.lerp(other.actionSliderTheme, t),
      gradientTheme: gradientTheme.lerp(other.gradientTheme, t),
    );
  }
}
