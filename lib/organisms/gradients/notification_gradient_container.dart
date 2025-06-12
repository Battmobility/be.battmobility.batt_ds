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
          gradient: const LinearGradient(
            colors: [
              AppColors.greenShift,
              AppColors.b2bKeyColor,
              AppColors.b2bKeyColor,
              AppColors.greenShift
            ],
            stops: [0, 0.35, 0.6, 1.0],
            transform: GradientRotation(1.1),
          ),
          borderRadius: BorderRadius.all(cornerradius)),
      child: child,
    );
  }
}
