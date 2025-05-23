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
        primary: theme.themeColorPrimary,
        primaryContainer: theme.themeColorPrimaryContainer,
        secondary: theme.themeColorSecondary,
        shadow: theme.shadowColorLight,
        error: theme.themeColorError,
        errorContainer: theme.themeColorError,
        onErrorContainer: theme.themeColorLight,
        surface: theme.themeColorLight,
        onSurface: AppColors.grey[700]!,
        surfaceDim: theme.themeColorSecondaryContainer,
        surfaceContainerLowest: theme.themeColorSecondaryContainerLowest),
    brightness: Brightness.light,
    extensions: [theme],
    appBarTheme: theme.appBarThemeLight,
    navigationBarTheme: theme.navigationBarThemeLight,
    bottomNavigationBarTheme: theme.bottomNavigationBarThemeLight,
    cardTheme: CardThemeData(color: theme.themeColorLight),
    textTheme: theme.textThemeLight,
    textSelectionTheme: theme.textSelectionThemeLight,
    inputDecorationTheme: theme.inputDecorationThemeLight,
    sliderTheme: SliderThemeData(
        activeTrackColor: theme.themeColorPrimary,
        inactiveTrackColor: theme.themeColorPrimary.withValues(alpha: 0.5),
        thumbColor: theme.themeColorPrimary,
        overlayColor: theme.themeColorPrimary.withValues(alpha: 0.5)),
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: theme.themeColorPrimary,
    ),
    elevatedButtonTheme: const ElevatedButtonThemeData(
        style: ButtonStyle(minimumSize: WidgetStatePropertyAll(Size(12, 12)))),
    iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
            foregroundColor: WidgetStatePropertyAll(theme.themeColorLight))),
    scaffoldBackgroundColor: theme.themeColorLight,
    dividerColor: theme.themeColorPrimary,
    canvasColor: theme.themeColorLight,
  );
}

ThemeData darkTheme(BuildContext context) {
  final theme = AppTheme.dark();
  return ThemeData(
    colorScheme: ColorScheme.dark(
        primary: theme.themeColorPrimary,
        primaryContainer: theme.themeColorPrimaryContainer,
        secondary: theme.themeColorSecondary,
        shadow: theme.shadowColorLight,
        error: theme.themeColorError,
        errorContainer: theme.themeColorError,
        onErrorContainer: theme.themeColorLight,
        surface: theme.themeColorDark,
        onSurface: AppColors.grey[300]!,
        surfaceDim: theme.themeColorDark,
        surfaceContainerLowest: theme.themeColorSecondaryContainerLowest),
    brightness: Brightness.dark,
    extensions: [theme],
    appBarTheme: theme.appBarThemeDark,
    navigationBarTheme: theme.navigationBarThemeDark,
    bottomNavigationBarTheme: theme.bottomNavigationBarThemeDark,
    cardTheme: CardThemeData(
      color: theme.themeColorDark,
      shadowColor: theme.themeColorLight,
    ),
    checkboxTheme: CheckboxThemeData(
        side: BorderSide(color: theme.themeColorPrimary),
        fillColor: WidgetStatePropertyAll(theme.themeColorPrimary),
        checkColor: WidgetStatePropertyAll(theme.themeColorLight)),
    textTheme: theme.textThemeDark,
    textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
            textStyle:
                WidgetStatePropertyAll(AppTypographyDark().labelMedium))),
    textSelectionTheme: theme.textSelectionThemeDark,
    inputDecorationTheme: theme.inputDecorationThemeDark,
    sliderTheme: SliderThemeData(
      activeTrackColor: theme.themeColorPrimary,
      inactiveTrackColor: theme.themeColorPrimary.withValues(alpha: 0.5),
      thumbColor: theme.themeColorPrimary,
      overlayColor: theme.themeColorPrimary.withValues(alpha: 0.5),
    ),
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: theme.themeColorPrimary,
    ),
    elevatedButtonTheme: const ElevatedButtonThemeData(
        style: ButtonStyle(minimumSize: WidgetStatePropertyAll(Size(12, 12)))),
    iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
            foregroundColor: WidgetStatePropertyAll(theme.themeColorLight))),
    scaffoldBackgroundColor: theme.themeColorDark,
    canvasColor: theme.themeColorDark,
    dividerColor: theme.themeColorPrimary,
  );
}
