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
          gradient: LinearGradient(colors: [
            AppColors.skySurge.withAlpha(150),
            AppColors.futureBlue.withAlpha(150),
            AppColors.skySurge.withAlpha(150),
            AppColors.softGrove.withAlpha(150),
          ], stops: const [
            0,
            0.15,
            0.8,
            1.0
          ], transform: const GradientRotation(1.3)),
          borderRadius: BorderRadius.all(cornerradius)),
      child: child,
    );
  }
}
