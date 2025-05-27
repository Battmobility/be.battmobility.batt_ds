import 'package:batt_ds/utils/context_theme.dart';
import 'package:flutter/material.dart';

import '../batt_text_button.dart';

/// {@template primary_text_button}
/// A custom primary text button widget that adapts to the platform.
/// {@endtemplate}
class DefaultOutlinedTextButton extends BattTextButton {
  /// {@macro primary_text_button}
  const DefaultOutlinedTextButton({
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
      BorderSide(color: textColor(context));

  @override
  Color backgroundColor(BuildContext context) {
    return Colors.transparent;
  }

  @override
  Color disabledColor(BuildContext context) {
    return context.buttonTheme.primaryDisabled;
  }

  @override
  Color focusColor(BuildContext context) {
    return context.buttonTheme.primaryFocused;
  }

  @override
  Color hoverColor(BuildContext context) {
    return context.buttonTheme.primaryHover;
  }

  @override
  Color textColor(BuildContext context) {
    return context.buttonTheme.primaryText;
  }
}
