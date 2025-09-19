import 'package:batt_ds/molecules/chips/batt_chip_size.dart';
import 'package:batt_ds/molecules/chips/batt_chip_state.dart';
import 'package:batt_ds/atoms/atoms.dart';
import 'package:batt_ds/utils/context_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class BattSquareChip extends StatelessWidget {
  final Function(bool)? onSelected;
  final Function()? onDeleted;

  final BattChipState state;

  /// The label for the chip.
  final String label;

  /// The leading icon for the chip.
  final IconData? leading;

  /// The size of the chip.
  final BattChipSize chipSize;

  final bool expand;

  const BattSquareChip({
    super.key,
    required this.label,
    required this.onSelected,
    this.onDeleted,
    this.leading,
    this.chipSize = BattChipSize.medium,
    this.state = BattChipState.enabled,
    this.expand = false,
  });

  /// The text color for the text button.
  Color textColor(BuildContext context) {
    switch (state) {
      case BattChipState.disabled:
        return primaryColor(context);
      case BattChipState.active:
        return primaryColor(context);
      case BattChipState.enabled:
        return primaryColor(context);
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
        return AppColors.urbanMist;
      case BattChipState.active:
        return AppColors.futureBlue;
      case BattChipState.enabled:
        return AppColors.graphiteDrive;
    }
  }

  /// The secondary color for the chip.
  Color secondaryColor(BuildContext context) {
    switch (state) {
      case BattChipState.disabled:
        return AppColors.neutralColors[100]!;
      case BattChipState.active:
        return AppColors.neutralColors[100]!;
      case BattChipState.enabled:
        return AppColors.neutralColors[100]!;
    }
  }

  BorderSide border(BuildContext context) {
    switch (state) {
      case BattChipState.disabled:
        return disabledBorder(context);
      case BattChipState.active:
        return activeBorder(context);
      case BattChipState.enabled:
        return defaultBorder(context);
    }
  }

  /// The default border for the text button.
  BorderSide defaultBorder(BuildContext context) =>
      BorderSide(color: secondaryColor(context), width: 1);

  /// The focused border for the text button.
  BorderSide focusedBorder(BuildContext context) =>
      BorderSide(color: secondaryColor(context), width: 3);

  /// The focused border for the text button.
  BorderSide activeBorder(BuildContext context) =>
      const BorderSide(color: AppColors.airFlow, width: 1);

  /// The hover border for the text button.
  BorderSide hoverBorder(BuildContext context) =>
      BorderSide(color: secondaryColor(context), width: 3);

  /// The disabled border for the text button.
  BorderSide disabledBorder(BuildContext context) =>
      BorderSide(color: secondaryColor(context), width: 1);

  EdgeInsetsGeometry get _padding {
    switch (chipSize) {
      case BattChipSize.small:
        return leading != null
            ? const EdgeInsets.only(
                left: AppSpacings.xs,
                right: AppSpacings.xxs,
                top: AppSpacings.xxs,
                bottom: AppSpacings.xxs)
            : const EdgeInsets.only(
                left: AppSpacings.xxs,
                right: AppSpacings.xxs,
                top: AppSpacings.xxs,
                bottom: AppSpacings.xxs);
      case BattChipSize.medium:
        return const EdgeInsets.only(
            left: AppSpacings.xs,
            right: AppSpacings.xxs,
            top: AppSpacings.xs,
            bottom: AppSpacings.xs);
      case BattChipSize.large:
        return const EdgeInsets.only(
            left: AppSpacings.xs,
            right: AppSpacings.xxs,
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

  double get cornerRadius => CornerRadii.s.x;

  @override
  Widget build(BuildContext context) {
    final textWidget = Text(
      label,
      style: switch (chipSize) {
        BattChipSize.small =>
          context.typographyTheme.chipSmall.copyWith(color: textColor(context)),
        BattChipSize.medium => context.typographyTheme.chipMedium
            .copyWith(color: textColor(context)),
        BattChipSize.large =>
          context.typographyTheme.chipLarge.copyWith(color: textColor(context)),
      },
      textAlign: expand ? TextAlign.center : null, // Center text when expanded
    );
    return FilterChip(
        label: expand
            ? Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(child: textWidget),
                ],
              )
            : textWidget,
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
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(cornerRadius)),
        side: border(context),
        deleteIcon: Icon(
          PhosphorIcons.x(),
          color: textColor(context),
          size: iconSize,
        ),
        visualDensity: VisualDensity.compact,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap);
  }
}
