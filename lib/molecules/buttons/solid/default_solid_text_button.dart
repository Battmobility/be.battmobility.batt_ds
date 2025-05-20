import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

import '../batt_text_button.dart';

/// {@template primary_text_button}
/// A custom primary text button widget that adapts to the platform.
/// {@endtemplate}
class DefaultSolidTextButton extends BattTextButton {
  /// {@macro primary_text_button}
  const DefaultSolidTextButton({
    super.key,
    required super.label,
    super.leading,
    super.trailing,
    super.buttonSize,
    super.focusNode,
    required super.onPressed,
  });

  @override
  Color backgroundColor(BuildContext context) {
    return context.buttonTheme.primaryDefault;
  }

  @override
  Color disabledColor(BuildContext context) {
    return context.buttonTheme.primaryDisabled;
  }

  @override
  Color focusColor(BuildContext context) {
    return context.buttonTheme.primaryFocused;
  }

  @override
  Color hoverColor(BuildContext context) {
    return AppColors.skySurge;
  }

  @override
  Color textColor(BuildContext context) {
    return context.buttonTheme.primaryText;
  }
}
