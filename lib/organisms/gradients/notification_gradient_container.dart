import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

class NotificationGradientContainer extends StatelessWidget {
  final Widget child;
  final Radius cornerradius;
  const NotificationGradientContainer(
      {super.key, required this.child, this.cornerradius = CornerRadii.none});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: const LinearGradient(colors: [
            AppColors.skySurge,
            AppColors.futureBlue,
            AppColors.skySurge,
            AppColors.softGrove,
          ], stops: [
            0,
            0.15,
            0.85,
            1.0
          ], transform: GradientRotation(0.25)),
          borderRadius: BorderRadius.all(cornerradius)),
      child: child,
    );
  }
}
