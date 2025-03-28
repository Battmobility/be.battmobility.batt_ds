import 'package:batt_ds/atoms/app_colors.dart';
import 'package:flutter/material.dart';

import 'default_outlined_text_button.dart';

class PurpleOutlinedTextButton extends DefaultOutlinedTextButton {
  const PurpleOutlinedTextButton({
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
      BorderSide(color: AppColors.purple);

  @override
  Color backgroundColor(BuildContext context) {
    return Colors.transparent;
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
    return AppColors.purple;
  }
}
