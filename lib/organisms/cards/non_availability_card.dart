import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

final class NonAvailabilityCard extends StatelessWidget {
  final String mainLabel;
  final String tag;
  final String? recurrenceLabel;
  final double height;
  final Color barColor;
  final bool showIndicator;

  const NonAvailabilityCard({
    super.key,
    required this.height,
    required this.barColor,
    required this.mainLabel,
    required this.tag,
    this.recurrenceLabel,
    this.showIndicator = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(CornerRadii.s.x),
        boxShadow: [bottomShadow],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: 6,
            decoration: BoxDecoration(
              color: barColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(CornerRadii.s.x),
                bottomLeft: Radius.circular(CornerRadii.s.x),
              ),
            ),
          ),
          Expanded(
              child: Padding(
            padding: AppPaddings.small.all,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              spacing: AppSpacings.md,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      mainLabel,
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                            color: AppColors.neutralColors[900],
                          ),
                    ),
                    if (showIndicator) ...[
                      Icon(
                        Icons.chevron_right,
                        color: AppColors.neutralColors[600],
                      ),
                    ]
                  ],
                ),
                Row(
                  children: [
                    Tag(tag),
                    if (recurrenceLabel != null) ...[
                      const SizedBox(
                        width: AppSpacings.sm,
                      ),
                      const Icon(
                        Icons.cached,
                        size: 14,
                        color: AppColors.b2bKeyColor,
                      ),
                      const SizedBox(
                        width: AppSpacings.xxs,
                      ),
                      Text(
                        recurrenceLabel!,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: AppColors.b2bKeyColor),
                      )
                    ]
                  ],
                )
              ],
            ),
          )),
        ],
      ),
    );
  }
}
