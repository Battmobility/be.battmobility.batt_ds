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
      gradientTheme: GradientTheme.standard(),
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
      gradientTheme: GradientTheme.standard(),
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

  final themeColorLight = AppColors.offWhite;
  final themeColorDark = AppColors.graphiteDrive;

  final shadowColorLight = AppColors.shadow;
  final shadowColorDark = AppColors.black;

  final themeColorSuccess = AppColors.ctaGreen;
  final themeColorError = AppColors.rusticClay;

  final AppBarTheme appBarThemeLight = const AppBarTheme(
    foregroundColor: Colors.transparent,
    shadowColor: Colors.transparent,
    scrolledUnderElevation: 0,
    elevation: 0,
    iconTheme: IconThemeData(color: AppColors.graphiteDrive),
    titleTextStyle: TextStyle(
        fontSize: 20,
        overflow: TextOverflow.fade,
        height: 24 / 24,
        fontWeight: FontWeight.w600,
        color: AppColors.graphiteDrive,
        fontFamily: "Inter",
        package: "batt_ds"),
  );

  final AppBarTheme appBarThemeDark = const AppBarTheme(
    foregroundColor: Colors.transparent,
    elevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle.dark,
    iconTheme: IconThemeData(color: AppColors.transitSand),
    titleTextStyle: TextStyle(
        fontSize: 20,
        overflow: TextOverflow.fade,
        height: 24 / 24,
        fontWeight: FontWeight.w600,
        color: AppColors.transitSand,
        fontFamily: "Inter",
        package: "batt_ds"),
  );

  BottomNavigationBarThemeData bottomNavigationBarThemeLight =
      const BottomNavigationBarThemeData(
    backgroundColor: AppColors.white,
    elevation: 0,
    selectedItemColor: AppColors.b2bKeyColor,
    unselectedItemColor: AppColors.graphiteDrive,
    selectedLabelStyle: TextStyle(
      fontSize: 12,
      height: 1.2,
      fontWeight: FontWeight.w600,
      fontFamily: "Inter",
      package: "batt_ds",
    ),
    unselectedLabelStyle: TextStyle(
      fontSize: 12,
      height: 1.2,
      fontWeight: FontWeight.w400,
      fontFamily: "Inter",
      package: "batt_ds",
    ),
    type: BottomNavigationBarType.fixed,
    showSelectedLabels: true,
    showUnselectedLabels: true,
  );

  BottomNavigationBarThemeData bottomNavigationBarThemeDark =
      const BottomNavigationBarThemeData(
    backgroundColor: AppColors.graphiteDrive,
    elevation: 0,
    selectedItemColor: AppColors.b2bKeyColor,
    unselectedItemColor: AppColors.offWhite,
    selectedLabelStyle: TextStyle(
      fontSize: 12,
      height: 1.2,
      fontWeight: FontWeight.w600,
      fontFamily: "Inter",
      package: "batt_ds",
    ),
    unselectedLabelStyle: TextStyle(
      fontSize: 12,
      height: 1.2,
      fontWeight: FontWeight.w400,
      fontFamily: "Inter",
      package: "batt_ds",
    ),
    type: BottomNavigationBarType.fixed,
    showSelectedLabels: true,
    showUnselectedLabels: true,
  );

  final NavigationBarThemeData navigationBarThemeLight = NavigationBarThemeData(
    backgroundColor: AppColors.offWhite,
    height: 80,
    labelTextStyle: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return const TextStyle(
          fontSize: 12,
          height: 1.2,
          fontWeight: FontWeight.w600,
          color: AppColors.futureBlue,
          fontFamily: "Inter",
          package: "batt_ds",
        );
      }
      return const TextStyle(
        fontSize: 12,
        height: 1.2,
        fontWeight: FontWeight.w400,
        color: AppColors.graphiteDrive,
        fontFamily: "Inter",
        package: "batt_ds",
      );
    }),
    iconTheme: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return const IconThemeData(
          color: AppColors.futureBlue,
          size: 24,
        );
      }
      return const IconThemeData(
        color: AppColors.graphiteDrive,
        size: 24,
      );
    }),
    indicatorColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    elevation: 0,
  );

  final NavigationBarThemeData navigationBarThemeDark = NavigationBarThemeData(
    backgroundColor: AppColors.graphiteDrive,
    height: 80,
    labelTextStyle: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return const TextStyle(
          fontSize: 12,
          height: 1.2,
          fontWeight: FontWeight.w600,
          color: AppColors.futureBlue,
          fontFamily: "Inter",
          package: "batt_ds",
        );
      }
      return const TextStyle(
        fontSize: 12,
        height: 1.2,
        fontWeight: FontWeight.w400,
        color: AppColors.graphiteDrive,
        fontFamily: "Inter",
        package: "batt_ds",
      );
    }),
    iconTheme: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return const IconThemeData(
          color: AppColors.futureBlue,
          size: 24,
        );
      }
      return const IconThemeData(
        color: AppColors.graphiteDrive,
        size: 24,
      );
    }),
    indicatorColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    elevation: 0,
  );

  final TextTheme textThemeLight = TextTheme(
    bodyLarge: AppTypography().bodyLarge,
    bodySmall: AppTypography().bodySmall,
    bodyMedium: AppTypography().bodyMedium,
    titleLarge: AppTypography().titleLarge,
    titleMedium: AppTypography().titleMedium,
    titleSmall: AppTypography().titleSmall,
    labelLarge: AppTypography().labelLarge,
    labelMedium: AppTypography().labelMedium,
    labelSmall: AppTypography().labelSmall,
    headlineLarge: AppTypography().headlineLarge,
    headlineMedium: AppTypography().headlineMedium,
    headlineSmall: AppTypography().headlineSmall,
  );

  final TextTheme textThemeDark = TextTheme(
    bodyLarge: AppTypographyDark().bodyLarge,
    bodySmall: AppTypographyDark().bodySmall,
    bodyMedium: AppTypographyDark().bodyMedium,
    titleLarge: AppTypographyDark().titleLarge,
    titleMedium: AppTypographyDark().titleMedium,
    titleSmall: AppTypographyDark().titleSmall,
    labelLarge: AppTypographyDark().labelLarge,
    labelMedium: AppTypographyDark().labelMedium,
    labelSmall: AppTypographyDark().labelSmall,
    headlineLarge: AppTypographyDark().headlineLarge,
    headlineMedium: AppTypographyDark().headlineMedium,
    headlineSmall: AppTypographyDark().headlineSmall,
  );

  final InputDecorationTheme inputDecorationThemeLight = InputDecorationTheme(
    prefixIconColor: AppColors.urbanMist,
    suffixIconColor: AppColors.urbanMist,
    labelStyle:
        AppTypographyDark().labelMedium.copyWith(color: AppColors.black),
    hintStyle:
        AppTypographyDark().labelSmall.copyWith(color: AppColors.graphiteDrive),
    filled: true,
    fillColor: AppColors.white,
    border: const OutlineInputBorder(
      borderRadius: BorderRadius.all(CornerRadii.s),
      borderSide: BorderSide(color: AppColors.urbanMist),
    ),
    enabledBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(CornerRadii.s),
      borderSide: BorderSide(color: AppColors.urbanMist),
    ),
    focusedBorder: GradientOutlineInputBorder(
      gradient: GradientTheme.standard().inputBorderGradient,
      width: 2,
    ),
    errorBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(CornerRadii.s),
      borderSide: BorderSide(color: AppColors.ctaSand, width: 1),
    ),
    focusedErrorBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(CornerRadii.s),
      borderSide: BorderSide(color: AppColors.rusticClay, width: 2),
    ),
    errorStyle:
        AppTypographyDark().labelMedium.copyWith(color: AppColors.rusticClay),
  );

  final InputDecorationTheme inputDecorationThemeDark = InputDecorationTheme(
    prefixIconColor: AppColors.urbanMist,
    suffixIconColor: AppColors.urbanMist,
    labelStyle:
        AppTypographyDark().labelMedium.copyWith(color: AppColors.offWhite),
    hintStyle:
        AppTypographyDark().labelSmall.copyWith(color: AppColors.offWhite),
    filled: true,
    fillColor: AppColors.graphiteDrive,
    border: const OutlineInputBorder(
      borderRadius: BorderRadius.all(CornerRadii.s),
      borderSide: BorderSide(color: AppColors.urbanMist),
    ),
    enabledBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(CornerRadii.s),
      borderSide: BorderSide(color: AppColors.urbanMist),
    ),
    focusedBorder: GradientOutlineInputBorder(
      gradient: GradientTheme.standard().inputBorderGradient,
      width: 2,
    ),
    errorBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(CornerRadii.s),
      borderSide: BorderSide(color: AppColors.ctaSand, width: 1),
    ),
    focusedErrorBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(CornerRadii.s),
      borderSide: BorderSide(color: AppColors.rusticClay, width: 2),
    ),
    errorStyle:
        AppTypographyDark().labelMedium.copyWith(color: AppColors.rusticClay),
  );

  TextSelectionThemeData textSelectionThemeLight = const TextSelectionThemeData(
    cursorColor: AppColors.skySurge,
    selectionColor: AppColors.skySurge,
    selectionHandleColor: AppColors.futureBlue,
  );

  TextSelectionThemeData textSelectionThemeDark = const TextSelectionThemeData(
    cursorColor: AppColors.skySurge,
    selectionColor: AppColors.skySurge,
    selectionHandleColor: AppColors.futureBlue,
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
