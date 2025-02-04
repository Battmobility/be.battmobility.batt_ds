import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

class HeroRadialGradientContainer extends StatelessWidget {
  final Widget child;

  const HeroRadialGradientContainer({super.key, required this.child});

  factory HeroRadialGradientContainer.orangeBlue(
      {Key? key, required Widget child}) {
    return HeroRadialGradientContainer(
      key: key,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: context.gradientTheme.heroGradient,
      ),
      child: child,
    );
  }
}
