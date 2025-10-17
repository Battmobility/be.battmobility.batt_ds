import 'package:batt_ds/atoms/app_colors.dart';
import 'package:flutter/material.dart';

import 'default_outlined_text_button.dart';

class RedOutlinedTextButton extends DefaultOutlinedTextButton {
  const RedOutlinedTextButton({
    super.key,
    required super.label,
    super.leading,
    super.trailing,
    super.buttonSize,
    super.focusNode,
    super.borderWidth,
    required super.onPressed,
  });

  @override
  BorderSide defaultBorder(BuildContext context) =>
      BorderSide(color: AppColors.errorDark, width: borderWidth);

  @override
  Color backgroundColor(BuildContext context) {
    return AppColors.offWhite;
  }

  @override
  Color disabledColor(BuildContext context) {
    return AppColors.errorDark;
  }

  @override
  Color focusColor(BuildContext context) {
    return AppColors.errorPrimary;
  }

  @override
  Color hoverColor(BuildContext context) {
    return AppColors.errorDark;
  }

  @override
  Color textColor(BuildContext context) {
    return AppColors.errorDark;
  }
}
