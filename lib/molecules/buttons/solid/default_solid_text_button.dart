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
    return AppColors.b2bKeyColor;
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
    return AppColors.futureBlue;
  }

  @override
  Color textColor(BuildContext context) {
    return AppColors.offWhite;
  }
}
