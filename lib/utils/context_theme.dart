import 'package:batt_ds/theme/action_slider_theme.dart';
import 'package:batt_ds/theme/chip_theme.dart';
import 'package:batt_ds/theme/gradient_theme.dart';
import 'package:batt_ds/theme/snackbar_theme.dart';
import 'package:flutter/material.dart';

import '../theme/app_theme.dart';
import '../theme/button_theme.dart';
import '../theme/input_theme.dart';
import '../theme/navigation_theme.dart';
import '../theme/typography_theme.dart';

/// An extension on [BuildContext] that provides access to the current theme.
extension ThemeExt on BuildContext {
  /// The current theme.
  ThemeData get theme => Theme.of(this);

  ///the current app theme
  AppTheme get appTheme => theme.extension<AppTheme>() as AppTheme;

  ///the current button theme
  AppButtonTheme get buttonTheme =>
      theme.extension<AppTheme>()!.appButtonTheme as AppButtonTheme;

  ///the current chip theme
  AppChipTheme get chipTheme =>
      theme.extension<AppTheme>()!.appChipTheme as AppChipTheme;

  ///the current snackbar theme
  SnackbarTheme get appSnackbarTheme =>
      theme.extension<AppTheme>()!.appSnackbarTheme as SnackbarTheme;

  /// The current app inputTheme.
  AppInputTheme get inputTheme =>
      theme.extension<AppTheme>()!.appInputTheme as AppInputTheme;

  /// The current app typographyTheme.
  AppTypographyTheme get typographyTheme =>
      theme.extension<AppTheme>()!.appTypographyTheme as AppTypographyTheme;

  /// The current app navigationTheme.
  AppNavigationTheme get navigationTheme =>
      theme.extension<AppTheme>()!.appNavigationTheme as AppNavigationTheme;

  /// The current app actionSliderTheme.
  ActionSliderTheme get actionSliderTheme =>
      theme.extension<AppTheme>()!.actionSliderTheme as ActionSliderTheme;

  /// The current app gradientTheme.
  GradientTheme get gradientTheme =>
      theme.extension<AppTheme>()!.gradientTheme as GradientTheme;
  /*
  /// The current app checkboxTheme.
  AppCheckboxTheme get checkboxTheme =>
      theme.extension<AppTheme>()!.appCheckboxTheme as AppCheckboxTheme;

  /// The current app iconTheme.
  AppIconTheme get iconTheme =>
      theme.extension<AppTheme>()!.appIconTheme as AppIconTheme;


  /// The current app radioTheme.
  AppRadioTheme get radioTheme =>
      theme.extension<AppTheme>()!.appRadioTheme as AppRadioTheme;

  /// The current app toggleTheme.
  AppToggleTheme get toggleTheme =>
      theme.extension<AppTheme>()!.appToggleTheme as AppToggleTheme;


  /// The current app avatarTheme.
  AppAvatarTheme get avatarTheme =>
      theme.extension<AppTheme>()!.appAvatarTheme as AppAvatarTheme;

  /// The current app layoutTheme.
  AppLayoutTheme get layoutTheme =>
      theme.extension<AppTheme>()!.appLayoutTheme as AppLayoutTheme;

  /// The current app badgeTheme.
  AppBadgeTheme get badgeTheme =>
      theme.extension<AppTheme>()!.appBadgeTheme as AppBadgeTheme;

  /// The current app breadcrumbTheme.
  AppBreadCrumbTheme get appBreadCrumbTheme =>
      theme.extension<AppTheme>()!.appBreadCrumbTheme as AppBreadCrumbTheme;

  /// The current app appDropdownTheme.
  AppDropdownTheme get appDropdownTheme =>
      theme.extension<AppTheme>()!.appDropdownTheme as AppDropdownTheme;
      */
}
