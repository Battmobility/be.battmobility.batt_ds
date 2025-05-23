import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

final class PlanCard extends StatelessWidget {
  final String title;
  final String planName;
  final String cta;

  const PlanCard({
    super.key,
    required this.title,
    required this.planName,
    required this.cta,
  });

  @override
  Widget build(BuildContext context) {
    return HeroRadialGradientContainer(
      cornerradius: CornerRadii.m,
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
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium!
                          .copyWith(color: AppColors.white)),
                  Text(planName,
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge!
                          .copyWith(color: AppColors.white)),
                  Padding(
                    padding: AppPaddings.xsmall.top,
                    child: Text(
                      cta,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: AppColors.white),
                      maxLines: 3,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(Icons.chevron_right, color: AppColors.white),
          ],
        ),
      ),
    );
  }
}
