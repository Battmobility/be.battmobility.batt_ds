import 'package:batt_ds/atoms/app_colors.dart';
import 'package:flutter/material.dart';

import 'default_outlined_text_button.dart';

class OrangeOutlinedTextButton extends DefaultOutlinedTextButton {
  const OrangeOutlinedTextButton({
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
      BorderSide(color: AppColors.orange);

  @override
  Color backgroundColor(BuildContext context) {
    return Colors.transparent;
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
    return AppColors.orange;
  }
}
