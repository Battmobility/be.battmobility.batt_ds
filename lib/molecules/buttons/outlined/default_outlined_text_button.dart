import 'package:batt_ds/atoms/atoms.dart';
import 'package:flutter/material.dart';

import '../batt_text_button.dart';

/// {@template primary_text_button}
/// A custom primary text button widget that adapts to the platform.
/// {@endtemplate}
class DefaultOutlinedTextButton extends BattTextButton {
  final double borderWidth;

  /// {@macro primary_text_button}
  const DefaultOutlinedTextButton({
    this.borderWidth = 1,
    super.key,
    required super.label,
    super.leading,
    super.trailing,
    super.buttonSize,
    super.focusNode,
    required super.onPressed,
  });

  @override
  BorderSide defaultBorder(BuildContext context) =>
      BorderSide(color: textColor(context), width: borderWidth);

  @override
  Color backgroundColor(BuildContext context) {
    return AppColors.white;
  }

  @override
  Color disabledColor(BuildContext context) {
    return AppColors.airFlow;
  }

  @override
  Color focusColor(BuildContext context) {
    return AppColors.futureBlue;
  }

  @override
  Color hoverColor(BuildContext context) {
    return AppColors.skySurge;
  }

  @override
  Color textColor(BuildContext context) {
    return AppColors.b2bKeyColor;
  }
}
