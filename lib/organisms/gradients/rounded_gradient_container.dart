import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

class RoundedGradientContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final Color? borderColor;
  final double? borderWidth;

  const RoundedGradientContainer({
    super.key,
    required this.child,
    this.padding,
    this.color,
    this.borderColor,
    this.borderWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? EdgeInsets.zero,
      decoration: BoxDecoration(
          gradient: context.gradientTheme.cardBackgroundGradient,
          boxShadow: [
            BoxShadow(
                color: Theme.of(context).colorScheme.shadow,
                blurRadius: 10,
                offset: const Offset(0, 6))
          ],
          borderRadius: const BorderRadius.all(CornerRadii.m),
          border: Border.all(
              color: borderColor ?? Colors.transparent,
              width: borderWidth ?? 0),
          color: color ?? Theme.of(context).colorScheme.surface),
      child: child,
    );
  }
}
