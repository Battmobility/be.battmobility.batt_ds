import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

final class PropertiesBar extends StatelessWidget {
  final double? chargePercentage;
  final String? range;
  final String? walkingDistance;
  final bool decorate;
  const PropertiesBar(
      {this.chargePercentage,
      this.range,
      this.walkingDistance,
      this.decorate = true,
      super.key});

  @override
  Widget build(BuildContext context) {
    if (chargePercentage != null || range != null || walkingDistance != null) {
      List<Widget> children = [];
      if (chargePercentage != null) {
        children.add(BatteryIcon(chargePercentage: chargePercentage));
      }
      if (range != null) {
        children.add(Row(
          mainAxisAlignment: MainAxisAlignment.center,
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
          mainAxisAlignment: MainAxisAlignment.center,
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
        padding: decorate ? AppPaddings.medium.top : AppPaddings.none.all,
        child: Container(
          decoration: decorate
              ? BoxDecoration(
                  border: Border.all(
                    color: AppColors.neutralColors[100]!,
                  ),
                  borderRadius: const BorderRadius.all(CornerRadii.s))
              : null,
          child: Padding(
            padding: AppPaddings.small.all,
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: children
                    .map((child) {
                      return [
                        Expanded(child: Center(child: child)),
                        if (child != children.last) ...[
                          Padding(
                            padding: AppPaddings.small.horizontal,
                            child: VerticalDivider(
                              color: AppColors.neutralColors[100],
                            ),
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
