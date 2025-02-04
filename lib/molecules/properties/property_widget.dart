import 'package:batt_ds/atoms/atoms.dart';
import 'package:flutter/material.dart';

final class PropertyWidget extends StatelessWidget {
  final String label;
  final String value;

  const PropertyWidget({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
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
          style: Theme.of(context).textTheme.bodyMedium!,
        ),
      ],
    );
  }
}
