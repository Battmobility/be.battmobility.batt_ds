import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

final class GreyIconTextButton extends BattIconTextButton {
  const GreyIconTextButton({
    super.key,
    required super.icon,
    required super.label,
    required super.onPressed,
    super.buttonSize,
  });

  @override
  Color textColor(BuildContext context) {
    return AppColors.grey;
  }

  @override
  Color iconColor(BuildContext context) {
    return AppColors.grey;
  }

  @override
  Color iconBackgroundColor(BuildContext context) {
    return context.buttonTheme.primaryText;
  }

  @override
  Color iconBorderColor(BuildContext context) {
    return AppColors.grey;
  }
}
