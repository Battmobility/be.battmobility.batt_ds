import 'package:batt_ds/molecules/buttons/buttons.dart';
import 'package:batt_ds/atoms/atoms.dart';
import 'package:batt_ds/utils/context_theme.dart';
import 'package:flutter/material.dart';

class OrangeSolidTextButton extends DefaultSolidTextButton {
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
    return AppColors.orange;
  }

  @override
  Color disabledColor(BuildContext context) {
    return AppColors.orange.withAlpha(122);
  }

  @override
  Color focusColor(BuildContext context) {
    return AppColors.orange[800]!;
  }

  @override
  Color hoverColor(BuildContext context) {
    return AppColors.orange[600]!;
  }

  @override
  Color textColor(BuildContext context) {
    return context.buttonTheme.primaryText;
  }
}
