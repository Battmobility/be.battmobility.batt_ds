import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

import 'batt_simple_text_button.dart';

/// {@template primary_text_button}
/// A custom primary text button widget that adapts to the platform.
/// {@endtemplate}
class DefaultSimpleTextButton extends BattSimpleTextButton {
  /// {@macro primary_text_button}
  const DefaultSimpleTextButton({
    super.key,
    required super.label,
    super.buttonSize,
    required super.onPressed,
  });

  @override
  Color focusColor(BuildContext context) {
    return Colors.transparent;
  }

  @override
  Color hoverColor(BuildContext context) {
    return Colors.transparent;
  }
}
