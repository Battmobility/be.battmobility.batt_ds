import 'package:batt_ds/molecules/buttons/batt_text_button.dart';
import 'package:batt_ds/atoms/atoms.dart';
import 'package:batt_ds/utils/context_theme.dart';
import 'package:flutter/material.dart';

class PurpleSolidTextButton extends BattTextButton {
  /// {@macro primary_text_button}
  const PurpleSolidTextButton({
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
    return AppColors.purple;
  }

  @override
  Color disabledColor(BuildContext context) {
    return AppColors.purple.withAlpha(122);
  }

  @override
  Color focusColor(BuildContext context) {
    return AppColors.purple[800]!;
  }

  @override
  Color hoverColor(BuildContext context) {
    return AppColors.purple[600]!;
  }

  @override
  Color textColor(BuildContext context) {
    return context.buttonTheme.primaryText;
  }
}
