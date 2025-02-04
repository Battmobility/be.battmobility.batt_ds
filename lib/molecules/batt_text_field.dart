import 'package:batt_ds/utils/context_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../atoms/app_cornerradii.dart';

/// {@template app_text_field}
/// A customizable text field widget with various customization options.
/// {@endtemplate}
class BattTextField extends StatelessWidget {
  /// {@macro app_text_field}
  const BattTextField({
    super.key,
    this.controller,
    this.labelText,
    this.enabled = true,
    this.obscureText = false,
    this.onChanged,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.validator,
    this.helperText,
    this.errorText,
    this.suffixIcon,
    this.suffixIconConstraints =
        const BoxConstraints(minHeight: 24, minWidth: 40),
    this.prefixIcon,
    this.prefixIconConstraints =
        const BoxConstraints(minHeight: 24, minWidth: 40),
    this.autofillHints,
    this.onEditingComplete,
    this.inputFormatters,
    this.keyboardType,
    this.inputAction,
    this.maxLines = 1,
    this.autofocus = false,
  });

  /// The controller for the text field.
  final TextEditingController? controller;

  /// The label text for the text field.
  final String? labelText;

  /// Whether the text field is enabled.
  final bool enabled;

  /// Whether the text field is obscured.
  final bool obscureText;

  /// Called when the text field value changes.
  final ValueChanged<String>? onChanged;

  /// The autovalidate mode for the text field.
  final AutovalidateMode autovalidateMode;

  /// The validator for the text field.
  final FormFieldValidator<String>? validator;

  /// The helper text for the text field.
  final String? helperText;

  /// The error text for the text field.
  final String? errorText;

  /// The suffix icon for the text field.
  final Widget? suffixIcon;

  /// The constraints for the suffix icon.
  final BoxConstraints? suffixIconConstraints;

  /// The prefix icon for the text field.
  final Widget? prefixIcon;

  /// The constraints for the prefix icon.
  final BoxConstraints? prefixIconConstraints;

  /// The autofillhints for app text field.
  final Iterable<String>? autofillHints;

  /// Called when the text field value completed.
  final VoidCallback? onEditingComplete;

  /// The input formatters for the text field.
  final List<TextInputFormatter>? inputFormatters;

  /// The keyboard type for the text field.
  final TextInputType? keyboardType;

  /// the maximum lines available in text field.
  final int maxLines;

  /// the text input action
  final TextInputAction? inputAction;

  /// Whether this field autofocuses on appear of the parent
  final bool autofocus;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autofocus,
      textInputAction: inputAction,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      onEditingComplete: onEditingComplete,
      autofillHints: autofillHints,
      controller: controller,
      enabled: enabled,
      obscureText: obscureText,
      onChanged: onChanged,
      autovalidateMode: autovalidateMode,
      validator: validator,
      maxLines: maxLines,
      style: WidgetStateTextStyle.resolveWith(
        (states) {
          late final Color textColor;

          if (states.contains(WidgetState.error)) {
            textColor = context.inputTheme.focusedTextDefault;
          } else if (states.contains(WidgetState.focused)) {
            textColor = context.inputTheme.focusedTextDefault;
          } else if (states.contains(WidgetState.disabled)) {
            textColor = context.inputTheme.disabledText;
          } else {
            textColor = context.inputTheme.defaultText;
          }

          return context.typographyTheme.inputPlaceholder.copyWith(
            color: textColor,
          );
        },
      ),
      cursorColor: context.inputTheme.focusedTextDefault,
      cursorHeight: 16,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: WidgetStateTextStyle.resolveWith(
          (states) {
            late final Color textColor;

            if (states.contains(WidgetState.error)) {
              textColor = context.inputTheme.errorTextDefault;
            } else if (states.contains(WidgetState.focused)) {
              textColor = context.inputTheme.focusedOnBrand;
            } else if (states.contains(WidgetState.disabled)) {
              textColor = context.inputTheme.disabledText;
            } else {
              textColor = context.inputTheme.defaultText;
            }

            return context.typographyTheme.inputPlaceholder.copyWith(
              color: textColor,
            );
          },
        ),
        floatingLabelStyle: WidgetStateTextStyle.resolveWith(
          (states) {
            late final Color textColor;

            if (states.contains(WidgetState.error)) {
              textColor = context.inputTheme.errorTextDefault;
            } else if (states.contains(WidgetState.focused)) {
              textColor = context.inputTheme.focusedOnBrand;
            } else {
              textColor = context.inputTheme.defaultText;
            }

            return context.typographyTheme.inputLabel.copyWith(
              color: textColor,
            );
          },
        ),
        filled: true,
        fillColor: enabled
            ? context.inputTheme.defaultColor
            : context.inputTheme.disabledColor,
        border: MaterialStateOutlineInputBorder.resolveWith(
          (states) {
            late final Color borderColor;

            if (states.contains(WidgetState.error)) {
              borderColor = context.inputTheme.borderError;
            } else if (states.contains(WidgetState.focused)) {
              borderColor = context.inputTheme.borderFocused;
            } else if (states.contains(WidgetState.disabled)) {
              borderColor = context.inputTheme.borderDisabled;
            } else if (states.contains(WidgetState.hovered)) {
              borderColor = context.inputTheme.borderHover;
            } else {
              borderColor = context.inputTheme.borderDefault;
            }

            return OutlineInputBorder(
              borderRadius: const BorderRadius.all(CornerRadii.m),
              borderSide: BorderSide(
                width: (states.contains(WidgetState.focused)) ? 2 : 1,
                color: borderColor,
              ),
            );
          },
        ),
        hoverColor: context.inputTheme.borderHover,
        focusColor: context.inputTheme.borderFocused,
        helperText: helperText,
        helperStyle: WidgetStateTextStyle.resolveWith(
          (states) {
            late final Color textColor;

            if (states.contains(WidgetState.error)) {
              textColor = context.inputTheme.errorTextDefault;
            } else if (states.contains(WidgetState.focused)) {
              textColor = context.inputTheme.focusedOnBrand;
            } else if (states.contains(WidgetState.disabled)) {
              textColor = context.inputTheme.disabledText;
            } else {
              textColor = context.inputTheme.defaultText;
            }

            return context.typographyTheme.inputHint.copyWith(
              color: textColor,
            );
          },
        ),
        errorText: errorText,
        errorStyle: context.typographyTheme.inputHint.copyWith(
          color: context.inputTheme.errorTextDefault,
        ),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        suffixIconConstraints: suffixIconConstraints,
        prefixIconConstraints: prefixIconConstraints,
      ),
    );
  }
}
