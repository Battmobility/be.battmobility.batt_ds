library batt_ds;

import 'package:batt_ds/theme/app_theme.dart';
import 'package:batt_ds/theme/typography_theme.dart';
import 'package:flutter/material.dart';
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
        error: theme.themeColorSecondary,
        surface: theme.themeColorLight,
        onSurface: theme.themeColorDark,
        surfaceDim: theme.themeColorSecondaryContainer,
        surfaceContainerLowest: theme.themeColorSecondaryContainerLowest),
    brightness: Brightness.light,
    extensions: [theme],
    appBarTheme: theme.appBarThemeLight,
    navigationBarTheme: theme.navigationBarThemeLight,
    cardTheme: CardTheme(color: theme.themeColorLight),
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
        shadow: theme.shadowColorDark,
        error: theme.themeColorSecondary,
        surface: theme.themeColorDark,
        onSurface: theme.themeColorLight,
        surfaceDim: theme.themeColorDark,
        surfaceContainerLowest: theme.themeColorSecondaryContainerLowest),
    brightness: Brightness.dark,
    extensions: [theme],
    appBarTheme: theme.appBarThemeDark,
    navigationBarTheme: theme.navigationBarThemeDark,
    cardTheme: CardTheme(
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
                WidgetStatePropertyAll(AppTypographyDark().mediumLabel))),
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
