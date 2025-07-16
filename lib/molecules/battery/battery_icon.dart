import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

final class BatteryIcon extends StatelessWidget {
  final double? chargePercentage;
  const BatteryIcon({super.key, required this.chargePercentage});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          _iconData,
          color: _iconColor,
          size: AppSpacings.lg,
        ),
        Text(
          (chargePercentage != null) ? '${chargePercentage!.toInt()}%' : "--",
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
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
        return Icons.battery_full_rounded;
      } else if (chargePercentage! >= 0.80) {
        return Icons.battery_6_bar_rounded;
      } else if (chargePercentage! >= 0.70) {
        return Icons.battery_5_bar_rounded;
      } else if (chargePercentage! >= 0.50) {
        return Icons.battery_4_bar_rounded;
      } else if (chargePercentage! >= 0.40) {
        return Icons.battery_3_bar_rounded;
      } else if (chargePercentage! >= 0.30) {
        return Icons.battery_2_bar_rounded;
      } else if (chargePercentage! >= 0.10) {
        return Icons.battery_1_bar_rounded;
      } else {
        return Icons.battery_0_bar_rounded;
      }
    } else {
      return Icons.battery_0_bar_rounded;
    }
  }

  Color get _iconColor {
    if (chargePercentage == null) {
      return AppColors.neutralColors[600]!;
    }
    if (chargePercentage! >= 0.70) {
      return AppColors.ctaBrightGreen;
    } else if (chargePercentage! >= 0.50) {
      return AppColors.ctaGreen;
    } else if (chargePercentage! >= 0.30) {
      return AppColors.warningPrimary;
    } else {
      return AppColors.errorPrimary;
    }
  }
}
