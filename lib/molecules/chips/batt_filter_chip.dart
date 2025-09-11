import 'package:batt_ds/molecules/chips/batt_chip_size.dart';
import 'package:batt_ds/molecules/chips/batt_chip_state.dart';
import 'package:batt_ds/atoms/atoms.dart';
import 'package:batt_ds/utils/context_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BattFilterChip extends StatelessWidget {
  /// {@macro app_text_button}
  const BattFilterChip({
    super.key,
    required this.label,
    required this.onSelected,
    this.onDeleted,
    this.leading,
    this.chipSize = BattChipSize.medium,
    this.state = BattChipState.enabled,
  });

  final Function(bool)? onSelected;
  final Function()? onDeleted;

  final BattChipState state;

  /// The label for the chip.
  final String label;

  /// The leading icon for the chip.
  final IconData? leading;

  /// The size of the chip.
  final BattChipSize chipSize;

  /// The background color for the chip
  Color backgroundColor(BuildContext context) {
    switch (state) {
      case BattChipState.disabled:
        return secondaryColor(context);
      case BattChipState.active:
        return secondaryColor(context);
      case BattChipState.enabled:
        return secondaryColor(context);
    }
  }

  /// The text color for the text button.
  Color textColor(BuildContext context) {
    switch (state) {
      case BattChipState.disabled:
        return Theme.of(context).colorScheme.onSurface;
      case BattChipState.active:
        return Theme.of(context).colorScheme.onSurface;
      case BattChipState.enabled:
        return Theme.of(context).colorScheme.onSurface;
    }
  }

  /// The focus color for the text button.
  Color focusColor(BuildContext context) {
    switch (state) {
      case BattChipState.disabled:
        return primaryColor(context);
      case BattChipState.active:
        return primaryColor(context);
      case BattChipState.enabled:
        return primaryColor(context);
    }
  }

  /// The hover color for the text button.
  Color hoverColor(BuildContext context) {
    switch (state) {
      case BattChipState.disabled:
        return primaryColor(context);
      case BattChipState.active:
        return primaryColor(context);
      case BattChipState.enabled:
        return primaryColor(context);
    }
  }

  /// The primary color for the chip.
  Color primaryColor(BuildContext context) {
    switch (state) {
      case BattChipState.disabled:
        return AppColors.neutralColors[300]!;
      case BattChipState.active:
        return AppColors.neutralColors[950]!;
      case BattChipState.enabled:
        return AppColors.neutralColors[950]!;
    }
  }

  /// The secondary color for the chip.
  Color secondaryColor(BuildContext context) {
    switch (state) {
      case BattChipState.disabled:
        return context.chipTheme.disabledBackgroundColor;
      case BattChipState.active:
        return context.chipTheme.activeBackgroundColor;
      case BattChipState.enabled:
        return context.chipTheme.enabledBackgroundColor;
    }
  }

  BorderSide border(BuildContext context) {
    switch (state) {
      case BattChipState.disabled:
        return disabledBorder(context);
      case BattChipState.active:
        return defaultBorder(context);
      case BattChipState.enabled:
        return defaultBorder(context);
    }
  }

  /// The default border for the text button.
  BorderSide defaultBorder(BuildContext context) =>
      const BorderSide(color: Colors.transparent, width: 0);

  /// The focused border for the text button.
  BorderSide focusedBorder(BuildContext context) =>
      const BorderSide(color: Colors.transparent, width: 0);

  /// The hover border for the text button.
  BorderSide hoverBorder(BuildContext context) =>
      const BorderSide(color: Colors.transparent, width: 0);

  /// The disabled border for the text button.
  BorderSide disabledBorder(BuildContext context) =>
      const BorderSide(color: Colors.transparent, width: 0);

  EdgeInsetsGeometry get _padding {
    switch (chipSize) {
      case BattChipSize.small:
        return leading != null
            ? const EdgeInsets.only(
                left: AppSpacings.sm,
                right: AppSpacings.xs,
                top: AppSpacings.xs,
                bottom: AppSpacings.xs)
            : const EdgeInsets.only(
                left: AppSpacings.xs,
                right: AppSpacings.xs,
                top: AppSpacings.xs,
                bottom: AppSpacings.xs);
      case BattChipSize.medium:
        return const EdgeInsets.only(
            left: AppSpacings.sm,
            right: AppSpacings.xs,
            top: AppSpacings.sm,
            bottom: AppSpacings.sm);
      case BattChipSize.large:
        return const EdgeInsets.only(
            left: AppSpacings.md,
            right: AppSpacings.xs,
            top: AppSpacings.sm,
            bottom: AppSpacings.sm);
    }
  }

  double get iconSize {
    switch (chipSize) {
      case BattChipSize.small:
        return 12;
      case BattChipSize.medium:
        return 14;
      case BattChipSize.large:
        return 16;
    }
  }

  double get cornerRadius {
    switch (chipSize) {
      case BattChipSize.small:
        return CornerRadii.xl.x;
      case BattChipSize.medium:
        return CornerRadii.xxl.x;
      case BattChipSize.large:
        return CornerRadii.xxxl.x;
    }
  }

  @override
  Widget build(BuildContext context) {
    return FilterChip(
        label: Row(
          mainAxisSize: MainAxisSize.min,
          spacing: AppSpacings.xxs,
          children: [
            Text(
              label,
              style: switch (chipSize) {
                BattChipSize.small => context.typographyTheme.chipSmall
                    .copyWith(color: textColor(context)),
                BattChipSize.medium => context.typographyTheme.chipMedium
                    .copyWith(color: textColor(context)),
                BattChipSize.large => context.typographyTheme.chipLarge
                    .copyWith(color: textColor(context)),
              },
            ),
            Icon(
              Icons.keyboard_arrow_down_sharp,
              color: textColor(context).withAlpha(100),
              size: iconSize * 1.5,
            ),
          ],
        ),
        avatar:
            leading != null ? Icon(leading, color: textColor(context)) : null,
        labelPadding: _padding,
        onSelected: (selected) {
          if (onSelected != null) {
            HapticFeedback.lightImpact();
            onSelected!(selected);
          }
        },
        onDeleted: onDeleted != null
            ? () {
                HapticFeedback.lightImpact();
                onDeleted!();
              }
            : null,
        backgroundColor: Theme.of(context).colorScheme.surface,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(cornerRadius)),
        side: border(context),
        deleteIcon: Icon(
          Icons.close,
          color: textColor(context),
          size: iconSize,
        ),
        visualDensity: VisualDensity.compact,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap);
  }
}
