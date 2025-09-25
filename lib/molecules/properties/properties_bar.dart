import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

final class PropertiesBar extends StatelessWidget {
  final double? chargePercentage;
  final String? range;
  final String? walkingDistance;
  const PropertiesBar(
      {this.chargePercentage, this.range, this.walkingDistance, super.key});

  @override
  Widget build(BuildContext context) {
    if (chargePercentage != null || range != null || walkingDistance != null) {
      List<Widget> children = [];
      if (chargePercentage != null) {
        children.add(BatteryIcon(chargePercentage: chargePercentage));
      }
      if (range != null) {
        children.add(Row(
          spacing: AppSpacings.xs,
          children: [
            Icon(
              PhosphorIcons.roadHorizon(),
              color: AppColors.neutralColors[400],
              size: AppSpacings.lg,
            ),
            Text(range!, style: Theme.of(context).textTheme.bodySmall!),
          ],
        ));
      }
      if (walkingDistance != null) {
        children.add(Row(
          spacing: AppSpacings.xs,
          children: [
            Icon(
              PhosphorIcons.footprints(),
              color: AppColors.neutralColors[400],
              size: AppSpacings.lg,
            ),
            Text(walkingDistance!,
                style: Theme.of(context).textTheme.bodySmall!),
          ],
        ));
      }
      return Padding(
        padding: AppPaddings.medium.top,
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.neutralColors[50]!,
              ),
              borderRadius: const BorderRadius.all(CornerRadii.s)),
          child: Padding(
            padding: AppPaddings.small.all,
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: children
                    .map((child) {
                      return [
                        child,
                        if (child != children.last) ...[
                          VerticalDivider(
                            color: AppColors.neutralColors[100],
                          )
                        ]
                      ];
                    })
                    .expand((widget) => widget)
                    .toList(),
              ),
            ),
          ),
        ),
      );
    }
    return const SizedBox.shrink();
  }
}
