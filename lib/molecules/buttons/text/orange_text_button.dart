import 'package:batt_ds/atoms/atoms.dart';
import 'package:batt_ds/utils/context_theme.dart';
import 'package:flutter/material.dart';

import 'batt_simple_text_button.dart';

/// {@template primary_text_button}
/// A custom primary text button widget that adapts to the platform.
/// {@endtemplate}
class OrangeSimpleTextButton extends BattSimpleTextButton {
  /// {@macro primary_text_button}
  const OrangeSimpleTextButton({
    super.key,
    required super.label,
    super.buttonSize,
    required super.onPressed,
  });

  @override
  Color disabledColor(BuildContext context) {
    return AppColors.orange.withAlpha(122);
  }

  @override
  Color focusColor(BuildContext context) {
    return context.buttonTheme.secondaryFocused;
  }

  @override
  Color hoverColor(BuildContext context) {
    return AppColors.orange[600]!;
  }

  @override
  Color textColor(BuildContext context) {
    return AppColors.orange;
  }
}
