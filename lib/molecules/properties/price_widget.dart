import 'package:batt_ds/atoms/atoms.dart';
import 'package:flutter/material.dart';

class PriceWidget extends StatelessWidget {
  final String label;
  final String value;
  final bool bold;

  const PriceWidget({
    super.key,
    required this.label,
    required this.value,
    this.bold = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
            color: Theme.of(context).colorScheme.secondary.withAlpha(122),
            width: 1,
            style: BorderStyle.solid),
        borderRadius: const BorderRadius.all(CornerRadii.s),
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppSpacings.sm),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              label,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
            ),
            const SizedBox(height: AppSpacings.sm),
            Text(
              value,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontWeight: bold ? FontWeight.bold : FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}
