import 'package:batt_ds/utils/context_theme.dart';
import 'package:flutter/material.dart';
import '../../atoms/app_spacings.dart';
import '../../utils/icon_builder.dart';
import 'batt_text_button_size.dart';

/// {@template app_text_button}
/// A custom text button widget that adapts to the platform.
/// {@endtemplate}
abstract class BattTextButton extends StatelessWidget {
  /// {@macro app_text_button}
  const BattTextButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.leading,
    this.trailing,
    this.buttonSize = BattButtonSize.medium,
    this.focusNode,
  });

  final Function()? onPressed;

  /// The label for the text button.
  final String label;

  /// The leading icon for the text button.
  final IconBuilder? leading;

  /// The trailing icon for the text button.
  final IconBuilder? trailing;

  /// The size of the text button.
  final BattButtonSize buttonSize;

  // For menus etc
  final FocusNode? focusNode;

  /// The background color for the text button.
  Color backgroundColor(BuildContext context) {
    return context.buttonTheme.primaryDefault;
  }

  /// The focus color for the text button.
  Color focusColor(BuildContext context) {
    return context.buttonTheme.primaryFocused;
  }

  /// The hover color for the text button.
  Color hoverColor(BuildContext context) {
    return context.buttonTheme.primaryHover;
  }

  /// The disabled color for the text button.
  Color disabledColor(BuildContext context) {
    return context.buttonTheme.primaryDisabled;
  }

  /// The text color for the text button.
  Color textColor(BuildContext context) {
    return context.buttonTheme.primaryText;
  }

  /// The disabled text color for the text button.
  Color disabledTextColor(BuildContext context) {
    return context.buttonTheme.primaryDisabled;
  }

  /// The default border for the text button.
  BorderSide defaultBorder(BuildContext context) => BorderSide.none;

  /// The focused border for the text button.
  BorderSide focusedBorder(BuildContext context) => BorderSide.none;

  /// The hover border for the text button.
  BorderSide hoverBorder(BuildContext context) => BorderSide(
        width: 2,
        color: textColor(context),
      );

  /// The disabled border for the text button.
  BorderSide disabledBorder(BuildContext context) => BorderSide.none;

  BorderRadius get borderRadius =>
      BorderRadius.all(Radius.circular(buttonHeight / 4));

  double get buttonHeight {
    return switch (buttonSize) {
      BattButtonSize.xSmall => 30,
      BattButtonSize.small => 34,
      BattButtonSize.medium => 42,
      BattButtonSize.large => 48,
      BattButtonSize.xLarge => 58,
      BattButtonSize.xxLarge => 66,
    };
  }

  @override
  Widget build(BuildContext context) {
    final betweenSpace = switch (buttonSize) {
      BattButtonSize.xSmall || BattButtonSize.small => AppSpacings.xxs,
      BattButtonSize.medium => AppSpacings.xs,
      BattButtonSize.large || BattButtonSize.xLarge => AppSpacings.sm,
      BattButtonSize.xxLarge => AppSpacings.lg,
    };

    final inputTextColor = WidgetStateProperty.resolveWith(
      (states) {
        if (states.contains(WidgetState.disabled)) {
          return disabledTextColor(context);
        }

        return textColor(context);
      },
    );

    return SizedBox(
      height: buttonHeight,
      child: ElevatedButton(
        focusNode: focusNode,
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
          shape: WidgetStateProperty.resolveWith(
            (states) {
              final shape = RoundedRectangleBorder(
                  borderRadius:
                      BorderRadiusGeometry.circular(buttonHeight / 4));

              if (states.contains(WidgetState.disabled)) {
                return shape.copyWith(side: disabledBorder(context));
              }

              if (states.contains(WidgetState.focused)) {
                return shape.copyWith(side: focusedBorder(context));
              }

              if (states.contains(WidgetState.hovered)) {
                return shape.copyWith(side: hoverBorder(context));
              }

              if (states.contains(WidgetState.pressed)) {
                return shape.copyWith(side: focusedBorder(context));
              }

              return shape.copyWith(side: defaultBorder(context));
            },
          ),
          backgroundColor: WidgetStateProperty.resolveWith(
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
              BattButtonSize.small => const EdgeInsets.symmetric(horizontal: 6),
              BattButtonSize.xSmall =>
                const EdgeInsets.symmetric(horizontal: 8),
              BattButtonSize.medium =>
                const EdgeInsets.symmetric(horizontal: 16),
              BattButtonSize.large =>
                const EdgeInsets.symmetric(horizontal: 18),
              BattButtonSize.xLarge =>
                const EdgeInsets.symmetric(horizontal: 22),
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
            if (leading != null) ...[
              leading!(
                onPressed != null
                    ? textColor(context)
                    : disabledTextColor(context),
              ),
              SizedBox(width: betweenSpace),
            ],
            Flexible(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: AppSpacings.xxs),
                child: Text(
                  label,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: switch (buttonSize) {
                    BattButtonSize.xSmall =>
                      context.typographyTheme.buttonXSmall.copyWith(
                          color: textColor(context),
                          fontSize: buttonHeight * 0.3),
                    BattButtonSize.small => context.typographyTheme.buttonSmall
                        .copyWith(
                            color: textColor(context),
                            fontSize: buttonHeight * 0.3),
                    BattButtonSize.medium =>
                      context.typographyTheme.buttonMedium.copyWith(
                          color: textColor(context),
                          fontSize: buttonHeight * 0.3),
                    BattButtonSize.large => context.typographyTheme.buttonLarge
                        .copyWith(
                            color: textColor(context),
                            fontSize: buttonHeight * 0.3),
                    BattButtonSize.xLarge =>
                      context.typographyTheme.buttonXLarge.copyWith(
                          color: textColor(context),
                          fontSize: buttonHeight * 0.3),
                    BattButtonSize.xxLarge =>
                      context.typographyTheme.button2XLarge.copyWith(
                          color: textColor(context),
                          fontSize: buttonHeight * 0.3),
                  },
                ),
              ),
            ),
            if (trailing != null) ...[
              SizedBox(width: betweenSpace),
              trailing!(
                onPressed != null
                    ? textColor(context)
                    : disabledTextColor(context),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
