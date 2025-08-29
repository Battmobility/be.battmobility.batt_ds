import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

final class InfoField extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color? color;

  const InfoField({
    super.key,
    required this.icon,
    required this.text,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final effectiveColor = color ?? theme.colorScheme.onSurface;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          size: AppSpacings.lg,
          color: effectiveColor,
        ),
        const SizedBox(width: AppSpacings.xs),
        Flexible(
          child: Text(
            text,
            style: theme.textTheme.labelSmall?.copyWith(
              color: effectiveColor,
            ),
            maxLines: 1,
            overflow: TextOverflow.fade,
          ),
        ),
      ],
    );
  }
}
