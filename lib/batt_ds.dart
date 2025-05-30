library batt_ds;

import 'package:batt_ds/theme/app_theme.dart';
import 'package:batt_ds/theme/typography_theme.dart';
import 'package:flutter/material.dart';
import 'package:batt_ds/atoms/atoms.dart';

export 'atoms/atoms.dart';
export 'molecules/molecules.dart';
export 'organisms/organisms.dart';
export 'utils/theme_scope.dart';
export 'utils/theme_scope_widget.dart';
export 'utils/context_theme.dart';

ThemeData lightTheme(BuildContext context) {
  final theme = AppTheme.light();
  return ThemeData(
    colorScheme: ColorScheme.light(
      primary: AppColors.b2bKeyColor,
      primaryContainer: AppColors.futureBlue,
      secondary: AppColors.skySurge,
      shadow: theme.shadowColorLight,
      error: theme.themeColorError,
      errorContainer: theme.themeColorError,
      onErrorContainer: theme.themeColorLight,
      surface: theme.themeColorLight,
      onSurface: AppColors.black,
      surfaceDim: AppColors.urbanMist,
      surfaceContainerLowest: AppColors.white,
      surfaceContainerLow: AppColors.white,
      surfaceContainer: AppColors.white,
      surfaceContainerHighest: AppColors.offWhite,
    ),
    brightness: Brightness.light,
    extensions: [theme],
    appBarTheme: theme.appBarThemeLight,
    bottomNavigationBarTheme: theme.bottomNavigationBarThemeLight,
    canvasColor: theme.themeColorLight,
    cardTheme: CardThemeData(color: theme.themeColorLight),
    checkboxTheme: CheckboxThemeData(
        side: const BorderSide(color: AppColors.b2bKeyColor),
        fillColor: const WidgetStatePropertyAll(AppColors.b2bKeyColor),
        checkColor: WidgetStatePropertyAll(theme.themeColorLight)),
    dividerTheme: const DividerThemeData(color: AppColors.urbanMist),
    inputDecorationTheme: theme.inputDecorationThemeLight,
    elevatedButtonTheme: const ElevatedButtonThemeData(
        style: ButtonStyle(minimumSize: WidgetStatePropertyAll(Size(12, 12)))),
    iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
            foregroundColor: WidgetStatePropertyAll(theme.themeColorLight))),
    navigationBarTheme: theme.navigationBarThemeLight,
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: AppColors.b2bKeyColor,
    ),
    sliderTheme: SliderThemeData(
        activeTrackColor: AppColors.b2bKeyColor,
        inactiveTrackColor: AppColors.b2bKeyColor.withValues(alpha: 0.5),
        thumbColor: AppColors.b2bKeyColor,
        overlayColor: AppColors.b2bKeyColor.withValues(alpha: 0.5)),
    scaffoldBackgroundColor: theme.themeColorLight,
    textTheme: theme.textThemeLight,
    textSelectionTheme: theme.textSelectionThemeLight,
  );
}

ThemeData darkTheme(BuildContext context) {
  final theme = AppTheme.dark();
  return ThemeData(
    colorScheme: ColorScheme.dark(
      primary: AppColors.b2bKeyColor,
      primaryContainer: AppColors.futureBlue,
      secondary: AppColors.futureBlue,
      shadow: AppColors.black,
      error: AppColors.rusticClay,
      errorContainer: AppColors.black,
      onErrorContainer: theme.themeColorLight,
      onPrimary: AppColors.white,
      onSecondary: AppColors.white,
      onSurfaceVariant: AppColors.white,
      onSurface: AppColors.white,
      surface: AppColors.graphiteDrive,
      surfaceDim: AppColors.urbanMist,
      surfaceContainerLowest: AppColors.black,
      surfaceContainerLow: AppColors.black,
      surfaceContainer: AppColors.graphiteDrive,
      surfaceContainerHighest: AppColors.graphiteDrive,
    ),
    brightness: Brightness.dark,
    extensions: [theme],
    appBarTheme: theme.appBarThemeDark,
    bottomNavigationBarTheme: theme.bottomNavigationBarThemeDark,
    canvasColor: theme.themeColorDark,
    cardTheme: CardThemeData(
      color: theme.themeColorDark,
      shadowColor: theme.themeColorLight,
    ),
    checkboxTheme: const CheckboxThemeData(
        side: BorderSide(color: AppColors.b2bKeyColor),
        fillColor: WidgetStatePropertyAll(AppColors.b2bKeyColor),
        checkColor: WidgetStatePropertyAll(AppColors.white)),
    dividerTheme: const DividerThemeData(color: AppColors.urbanMist),
    elevatedButtonTheme: const ElevatedButtonThemeData(
        style: ButtonStyle(minimumSize: WidgetStatePropertyAll(Size(12, 12)))),
    iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
            foregroundColor: WidgetStatePropertyAll(theme.themeColorLight))),
    inputDecorationTheme: theme.inputDecorationThemeDark,
    navigationBarTheme: theme.navigationBarThemeDark,
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: AppColors.b2bKeyColor,
    ),
    sliderTheme: SliderThemeData(
      activeTrackColor: AppColors.b2bKeyColor,
      inactiveTrackColor: AppColors.b2bKeyColor.withValues(alpha: 0.5),
      thumbColor: AppColors.b2bKeyColor,
      overlayColor: AppColors.b2bKeyColor.withValues(alpha: 0.5),
    ),
    scaffoldBackgroundColor: theme.themeColorDark,
    textTheme: theme.textThemeDark,
    textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
            textStyle:
                WidgetStatePropertyAll(AppTypographyDark().labelMedium))),
    textSelectionTheme: theme.textSelectionThemeDark,
  );
}
