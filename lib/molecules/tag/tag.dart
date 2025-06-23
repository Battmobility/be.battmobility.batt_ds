import 'package:batt_ds/atoms/atoms.dart';
import 'package:flutter/material.dart';

final class Tag extends StatelessWidget {
  final String text;

  const Tag(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPaddings.xsmall.all.add(AppPaddings.small.horizontal),
      decoration: BoxDecoration(
        color: AppColors.airFlow,
        borderRadius: BorderRadius.circular(CornerRadii.xs.x),
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.b2bKeyColor,
            ),
      ),
    );
  }
}
