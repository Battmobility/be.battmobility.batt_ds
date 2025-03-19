import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

class BattIconTextButton extends StatelessWidget {
  const BattIconTextButton({
    super.key,
    required this.icon,
    required this.label,
    required this.onPressed,
    this.labelStyle,
    this.buttonSize = BattButtonSize.medium,
  });

  final IconData icon;
  final String label;
  final VoidCallback onPressed;
  final TextStyle? labelStyle;
  final BattButtonSize buttonSize;

  BorderRadius get borderRadius => switch (buttonSize) {
        BattButtonSize.xSmall ||
        BattButtonSize.small =>
          const BorderRadius.all(CornerRadii.xl),
        BattButtonSize.medium => const BorderRadius.all(CornerRadii.xxl),
        BattButtonSize.large ||
        BattButtonSize.xLarge =>
          const BorderRadius.all(CornerRadii.xxxl),
        BattButtonSize.xxLarge => const BorderRadius.all(CornerRadii.xxxxl),
      };

  double get iconSize => switch (buttonSize) {
        BattButtonSize.xSmall || BattButtonSize.small => AppSpacings.lg,
        BattButtonSize.medium => AppSpacings.xl,
        BattButtonSize.large || BattButtonSize.xLarge => AppSpacings.xxl,
        BattButtonSize.xxLarge => AppSpacings.xxxl,
      };

  EdgeInsetsGeometry get padding => switch (buttonSize) {
        BattButtonSize.xSmall ||
        BattButtonSize.small =>
          AppPaddings.xxsmall.all,
        BattButtonSize.medium => AppPaddings.small.all,
        BattButtonSize.large || BattButtonSize.xLarge => AppPaddings.medium.all,
        BattButtonSize.xxLarge => AppPaddings.large.all,
      };

  EdgeInsetsGeometry get iconPadding => switch (buttonSize) {
        BattButtonSize.xSmall || BattButtonSize.small => AppPaddings.xsmall.all,
        BattButtonSize.medium => AppPaddings.medium.all,
        BattButtonSize.large || BattButtonSize.xLarge => AppPaddings.large.all,
        BattButtonSize.xxLarge => AppPaddings.xlarge.all,
      };

  /// The text color for the icontext button.
  Color textColor(BuildContext context) {
    return context.buttonTheme.primaryDefault;
  }

  Color backgroundColor(BuildContext context) {
    return context.buttonTheme.primaryText;
  }

  Color iconColor(BuildContext context) {
    return context.buttonTheme.iconButtonColor;
  }

  Color iconBackgroundColor(BuildContext context) {
    return context.buttonTheme.primaryDefault;
  }

  Color iconBorderColor(BuildContext context) {
    return context.buttonTheme.primaryDefault;
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      onPressed: onPressed,
      child: IntrinsicWidth(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: iconSize,
              color: iconColor(context),
            ),
            FittedBox(
              child: Text(label,
                  overflow: TextOverflow.clip,
                  textAlign: TextAlign.center,
                  textScaler: const TextScaler.linear(1.0),
                  maxLines: 1,
                  style: switch (buttonSize) {
                    BattButtonSize.small ||
                    BattButtonSize.xSmall =>
                      context.typographyTheme.buttonSmall.copyWith(
                          color: textColor(context),
                          overflow: TextOverflow.ellipsis),
                    BattButtonSize.medium =>
                      context.typographyTheme.buttonMedium.copyWith(
                          color: textColor(context),
                          overflow: TextOverflow.ellipsis),
                    BattButtonSize.large => context.typographyTheme.buttonLarge
                        .copyWith(
                            color: textColor(context),
                            overflow: TextOverflow.ellipsis),
                    BattButtonSize.xLarge =>
                      context.typographyTheme.buttonXLarge.copyWith(
                          color: textColor(context),
                          overflow: TextOverflow.ellipsis),
                    BattButtonSize.xxLarge =>
                      context.typographyTheme.button2XLarge.copyWith(
                          color: textColor(context),
                          overflow: TextOverflow.ellipsis),
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
