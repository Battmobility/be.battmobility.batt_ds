import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

final class BatteryIcon extends StatelessWidget {
  final double? chargePercentage;
  const BatteryIcon({super.key, required this.chargePercentage});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: AppSpacings.xs,
      children: [
        Icon(
          _iconData,
          color: _iconColor,
          size: AppSpacings.lg,
        ),
        Text(
          (chargePercentage != null) ? '${chargePercentage!.toInt()}%' : "--",
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w600,
                color: _iconColor,
              ),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }

  IconData get _iconData {
    if (chargePercentage != null) {
      if (chargePercentage! >= 0.95) {
        return PhosphorIcons.batteryVerticalFull();
      } else if (chargePercentage! >= 0.70) {
        return PhosphorIcons.batteryVerticalHigh();
      } else if (chargePercentage! >= 0.50) {
        return PhosphorIcons.batteryVerticalMedium();
      } else if (chargePercentage! >= 0.30) {
        return PhosphorIcons.batteryVerticalLow();
      } else if (chargePercentage! >= 0.10) {
        return PhosphorIcons.batteryVerticalEmpty();
      } else {
        return PhosphorIcons.batteryVerticalEmpty();
      }
    } else {
      return PhosphorIcons.batteryVerticalEmpty();
    }
  }

  Color get _iconColor {
    if (chargePercentage == null) {
      return AppColors.neutralColors[600]!;
    }
    if (chargePercentage! >= 0.70) {
      return AppColors.successDark;
    } else if (chargePercentage! >= 0.50) {
      return AppColors.futureBlue;
    } else if (chargePercentage! >= 0.30) {
      return AppColors.warningDark;
    } else {
      return AppColors.errorPrimary;
    }
  }
}
