import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

import '../batt_text_button.dart';

/// {@template primary_text_button}
/// A custom primary text button widget that adapts to the platform.
/// {@endtemplate}
class GraySolidTextButton extends BattTextButton {
  /// {@macro primary_text_button}
  const GraySolidTextButton({
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
    return AppColors.neutralColors[100]!;
  }

  @override
  Color disabledColor(BuildContext context) {
    return AppColors.neutralColors[50]!;
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
    return AppColors.b2bKeyColor;
  }
}
