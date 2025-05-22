import 'package:batt_ds/molecules/chips/batt_chip.dart';
import 'package:batt_ds/atoms/app_colors.dart';
import 'package:batt_ds/utils/context_theme.dart';
import 'package:flutter/material.dart';

import 'batt_chip_state.dart';

final class BattChipPrimary extends BattChip {
  const BattChipPrimary(
      {super.key,
      required super.label,
      required super.onSelected,
      super.onDeleted,
      super.chipSize,
      super.leading,
      super.state});

  @override

  /// The primary color for the chip.
  Color primaryColor(BuildContext context) {
    switch (state) {
      case BattChipState.disabled:
        return AppColors.urbanMist;
      case BattChipState.active:
      case BattChipState.enabled:
        return AppColors.graphiteDrive;
    }
  }

  /// The secondary color for the chip.
  @override
  Color secondaryColor(BuildContext context) {
    switch (state) {
      case BattChipState.disabled:
        return AppColors.softGrove;
      case BattChipState.active:
        return AppColors.greenShift;
      case BattChipState.enabled:
        return AppColors.b2cKeyColor;
    }
  }
}
