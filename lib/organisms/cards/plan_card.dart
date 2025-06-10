import 'package:batt_ds/batt_ds.dart';
import 'package:batt_ds/theme/gradient_theme.dart';
import 'package:flutter/material.dart';

final class PlanCard extends StatelessWidget {
  final String title;
  final String planName;
  final String cta;
  final bool isActive;
  final bool showIndicator;

  const PlanCard({
    super.key,
    required this.title,
    required this.planName,
    required this.cta,
    required this.isActive,
    this.showIndicator = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: isActive ? GradientTheme.standard().heroGradient : null,
          color: isActive ? null : Theme.of(context).colorScheme.surface,
          boxShadow: isActive ? [] : [bottomShadow],
          borderRadius: const BorderRadius.all(
            CornerRadii.m,
          )),
      child: Padding(
        padding: AppPaddings.xlarge.all,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                spacing: AppSpacings.sm,
                children: [
                  Text(title,
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          color: isActive
                              ? AppColors.white
                              : AppColors.neutralColors[600])),
                  Text(planName,
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge!
                          .copyWith(
                              color: isActive
                                  ? AppColors.white
                                  : AppColors.neutralColors[950])),
                  Padding(
                    padding: AppPaddings.xsmall.top,
                    child: Text(
                      cta,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: isActive
                              ? AppColors.white
                              : AppColors.neutralColors[600]),
                      maxLines: 3,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ],
              ),
            ),
            if (showIndicator) ...[
              Icon(Icons.chevron_right,
                  color: isActive
                      ? AppColors.white
                      : AppColors.neutralColors[600]),
            ]
          ],
        ),
      ),
    );
  }
}
