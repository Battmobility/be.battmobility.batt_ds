import 'package:batt_ds/atoms/app_colors.dart';
import 'package:batt_ds/utils/context_theme.dart';
import 'package:flutter/material.dart';

import 'outlined_text_button.dart';

class PurpleOutlinedTextButton extends OutlinedTextButton {
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
    return context.buttonTheme.secondaryDefault;
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
