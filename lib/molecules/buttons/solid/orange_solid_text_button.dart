import 'package:batt_ds/molecules/buttons/batt_text_button.dart';
import 'package:batt_ds/atoms/atoms.dart';
import 'package:flutter/material.dart';

class OrangeSolidTextButton extends BattTextButton {
  /// {@macro primary_text_button}
  const OrangeSolidTextButton({
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
    return AppColors.ctaSand;
  }

  @override
  Color disabledColor(BuildContext context) {
    return AppColors.transitSand.withAlpha(122);
  }

  @override
  Color focusColor(BuildContext context) {
    return AppColors.transitSand;
  }

  @override
  Color hoverColor(BuildContext context) {
    return AppColors.transitSand;
  }

  @override
  Color textColor(BuildContext context) {
    return AppColors.offWhite;
  }
}
