import 'package:batt_ds/molecules/buttons/batt_text_button.dart';
import 'package:batt_ds/atoms/atoms.dart';
import 'package:flutter/material.dart';

class BlueSolidTextButton extends BattTextButton {
  /// {@macro primary_text_button}
  const BlueSolidTextButton({
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
