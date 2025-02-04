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
}
