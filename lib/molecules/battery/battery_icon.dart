import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

final class BatteryIcon extends StatelessWidget {
  final double chargePercentage;
  const BatteryIcon({super.key, required this.chargePercentage});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          _iconData(chargePercentage),
          color: _iconColor(chargePercentage),
          size: AppSpacings.lg,
        ),
        Text(
          '${chargePercentage.toInt()}%',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w600,
                color: _iconColor(chargePercentage),
              ),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }

  IconData _iconData(double percentage) {
    if (chargePercentage >= 95) {
      return Icons.battery_full_rounded;
    } else if (chargePercentage >= 80) {
      return Icons.battery_6_bar_rounded;
    } else if (chargePercentage >= 70) {
      return Icons.battery_5_bar_rounded;
    } else if (chargePercentage >= 50) {
      return Icons.battery_4_bar_rounded;
    } else if (chargePercentage >= 40) {
      return Icons.battery_3_bar_rounded;
    } else if (chargePercentage >= 30) {
      return Icons.battery_2_bar_rounded;
    } else if (chargePercentage >= 10) {
      return Icons.battery_1_bar_rounded;
    } else {
      return Icons.battery_0_bar_rounded;
    }
  }

  Color _iconColor(double percentage) {
    if (percentage >= 70) {
      return AppColors.greenShift;
    } else if (percentage >= 30) {
      return AppColors.ecoHorizon;
    } else {
      return AppColors.transitSand;
    }
  }
}
