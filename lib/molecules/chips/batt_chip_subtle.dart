import 'package:batt_ds/molecules/chips/batt_chip.dart';
import 'package:batt_ds/atoms/app_colors.dart';
import 'package:flutter/material.dart';

import 'batt_chip_state.dart';

final class BattChipSubtle extends BattChip {
  const BattChipSubtle(
      {super.key,
      required super.label,
      required super.onSelected,
      super.onDeleted,
      super.chipSize,
      super.leading,
      super.state});

  @override
  Color textColor(BuildContext context) {
    switch (state) {
      case BattChipState.disabled:
        return AppColors.neutralColors[600]!;
      case BattChipState.active:
        return AppColors.b2bKeyColor;
      case BattChipState.enabled:
        return AppColors.neutralColors[950]!;
    }
  }

  @override
  Color backgroundColor(BuildContext context) {
    switch (state) {
      case BattChipState.disabled:
        return AppColors.white;
      case BattChipState.active:
        return AppColors.airFlow;
      case BattChipState.enabled:
        return AppColors.white;
    }
  }

  @override
  BorderSide border(BuildContext context) {
    switch (state) {
      case BattChipState.disabled:
        return BorderSide(color: AppColors.neutralColors[600]!, width: 1);
      case BattChipState.active:
        return const BorderSide(color: AppColors.b2bKeyColor, width: 1);
      case BattChipState.enabled:
        return BorderSide(color: AppColors.neutralColors[950]!, width: 1);
    }
  }
}
