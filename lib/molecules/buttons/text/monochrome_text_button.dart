import 'package:flutter/material.dart';
import 'batt_simple_text_button.dart';

/// {@template primary_text_button}
/// A custom primary text button widget that adapts to the platform.
/// {@endtemplate}
class MonochromeSimpleTextButton extends BattSimpleTextButton {
  final Color? color;

  /// {@macro primary_text_button}
  const MonochromeSimpleTextButton({
    this.color,
    super.underline = false,
    super.key,
    required super.label,
    super.buttonSize,
    required super.onPressed,
  });

  @override
  Color disabledColor(BuildContext context) {
    return color != null
        ? color!.withAlpha(120)
        : Theme.of(context).colorScheme.surfaceDim;
  }

  @override
  Color focusColor(BuildContext context) {
    return color != null
        ? color!.withAlpha(200)
        : Theme.of(context).colorScheme.onSurface;
  }

  @override
  Color hoverColor(BuildContext context) {
    return color != null
        ? color!.withAlpha(200)
        : Theme.of(context).colorScheme.onSurfaceVariant;
  }

  @override
  Color textColor(BuildContext context) {
    return color ?? Theme.of(context).colorScheme.onSurface;
  }
}
