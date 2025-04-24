import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

import '../batt_text_button.dart';

abstract class BattSimpleTextButton extends BattTextButton {
  const BattSimpleTextButton({
    super.key,
    required super.label,
    super.buttonSize,
    required super.onPressed,
  });

  @override
  Color disabledColor(BuildContext context) {
    return context.buttonTheme.primaryDisabled;
  }

  @override
  Color focusColor(BuildContext context) {
    return Colors.transparent;
  }

  @override
  Color hoverColor(BuildContext context) {
    return context.buttonTheme.primaryHover;
  }

  @override
  Color textColor(BuildContext context) {
    return context.buttonTheme.primaryDefault;
  }

  @override
  Widget build(BuildContext context) {
    final inputTextColor = WidgetStateProperty.resolveWith(
      (states) {
        if (states.contains(WidgetState.disabled)) {
          return disabledTextColor(context);
        }

        return textColor(context);
      },
    );

    return TextButton(
      style: ButtonStyle(
        elevation: WidgetStateProperty.all(0),
        splashFactory: NoSplash.splashFactory,
        overlayColor: WidgetStateProperty.resolveWith(
          (states) {
            if (states.contains(WidgetState.disabled)) {
              return disabledColor(context);
            }

            if (states.contains(WidgetState.hovered)) {
              return hoverColor(context);
            }

            if (states.contains(WidgetState.focused)) {
              return focusColor(context);
            }

            if (states.contains(WidgetState.pressed)) {
              return focusColor(context);
            }

            return backgroundColor(context);
          },
        ),
        foregroundColor: inputTextColor,
        fixedSize: WidgetStateProperty.all(
          switch (buttonSize) {
            BattButtonSize.small => const Size(double.infinity, 32),
            BattButtonSize.xSmall => const Size(double.infinity, 36),
            BattButtonSize.medium => const Size(double.infinity, 40),
            BattButtonSize.large => const Size(double.infinity, 44),
            BattButtonSize.xLarge => const Size(double.infinity, 52),
            BattButtonSize.xxLarge => const Size(double.infinity, 56),
          },
        ),
        padding: WidgetStateProperty.all(
          switch (buttonSize) {
            BattButtonSize.small ||
            BattButtonSize.xSmall =>
              const EdgeInsets.symmetric(horizontal: 8),
            BattButtonSize.medium => const EdgeInsets.symmetric(horizontal: 16),
            BattButtonSize.large => const EdgeInsets.symmetric(horizontal: 18),
            BattButtonSize.xLarge => const EdgeInsets.symmetric(horizontal: 22),
            BattButtonSize.xxLarge =>
              const EdgeInsets.symmetric(horizontal: 26),
          },
        ),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacings.xxs),
              child: Text(
                label,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: switch (buttonSize) {
                  BattButtonSize.xSmall => context.typographyTheme.buttonXSmall
                      .copyWith(color: textColor(context)),
                  BattButtonSize.small => context.typographyTheme.buttonSmall
                      .copyWith(color: textColor(context)),
                  BattButtonSize.medium => context.typographyTheme.buttonMedium
                      .copyWith(color: textColor(context)),
                  BattButtonSize.large => context.typographyTheme.buttonLarge
                      .copyWith(color: textColor(context)),
                  BattButtonSize.xLarge => context.typographyTheme.buttonXLarge
                      .copyWith(color: textColor(context)),
                  BattButtonSize.xxLarge => context
                      .typographyTheme.button2XLarge
                      .copyWith(color: textColor(context)),
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
