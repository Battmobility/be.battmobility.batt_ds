import 'package:batt_ds/batt_ds.dart';
import 'package:batt_ds/utils/svg_icon.dart';
import 'package:flutter/material.dart';

final class VehicleCard extends StatelessWidget {
  final String name;
  final double? chargePercentage;
  final String? range;

  final String? walkingDuration;
  final String? walkingDistance;
  final String? tag;
  final String? price;
  final String? price2;
  final String? imageUrl;

  final String? licensePlate;
  final bool showBorder;

  const VehicleCard({
    super.key,
    required this.name,
    this.chargePercentage,
    this.range,
    this.walkingDuration,
    this.walkingDistance,
    this.tag,
    this.price,
    this.price2,
    this.imageUrl,
    this.licensePlate,
    this.showBorder = true,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: showBorder ? AppPaddings.medium.all : AppPaddings.none.all,
      decoration: showBorder
          ? BoxDecoration(
              color: Theme.of(context).canvasColor,
              borderRadius: BorderRadius.circular(CornerRadii.m.x),
              border: Border.all(color: AppColors.urbanMist, width: 1),
            )
          : null,
      child: LayoutBuilder(builder: (context, constraints) {
        return IntrinsicHeight(
          child: Row(
            children: [
              SizedBox(
                width: constraints.maxWidth / 2.5,
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surfaceDim,
                        borderRadius: BorderRadius.circular(CornerRadii.s.x),
                      ),
                      child: (imageUrl ?? "").isNotEmpty
                          ? ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(CornerRadii.s.x),
                              child: Image(
                                image: NetworkImage(imageUrl!),
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  // Show a placeholder when image fails to load
                                  return const Center(child: carIcon);
                                },
                                loadingBuilder:
                                    (context, child, loadingProgress) {
                                  if (loadingProgress == null) return child;
                                  return const Center(
                                    child: FlowProgressIndicator(
                                        size: IndicatorSize.small),
                                  );
                                },
                              ),
                            )
                          : const Center(child: carIcon),
                    ),
                    if (licensePlate != null) ...[
                      Padding(
                        padding: AppPaddings.xsmall.bottom
                            .add(AppPaddings.xsmall.leading),
                        child: LicensePlate(
                          licensePlate!,
                          size: LicensePlateSize.small,
                        ),
                      )
                    ]
                  ],
                ),
              ),
              const SizedBox(width: AppSpacings.lg),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: AppSpacings.md,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            name,
                            style: theme.textTheme.titleSmall?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(
                          width: AppSpacings.sm,
                        ),
                        if (tag != null)
                          Container(
                            padding: AppPaddings.small.all
                                .add(AppPaddings.small.horizontal),
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.primary,
                              borderRadius:
                                  BorderRadius.circular(CornerRadii.s.x),
                            ),
                            child: Text(
                              tag!,
                              style: theme.textTheme.bodySmall?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: AppColors.white,
                              ),
                            ),
                          ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              _rangeInfo(theme),
                              _walkingInfo(theme),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            if (price != null)
                              Text(
                                price!,
                                style: theme.textTheme.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            if (price2 != null)
                              Text(
                                price2!,
                                style: theme.textTheme.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }

  Widget _rangeInfo(ThemeData theme) {
    return Row(
      children: [
        if (range != null)
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              rangeIcon.colored(AppColors.greenShift),
              const SizedBox(width: AppSpacings.xs),
              Flexible(
                child: Text(
                  range!,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: AppColors.greenShift,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        if (chargePercentage != null && range == null) // never show both
          BatteryIcon(chargePercentage: chargePercentage!),
        const SizedBox(width: AppSpacings.xs),
      ],
    );
  }

  Widget _walkingInfo(ThemeData theme) {
    return Flexible(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (walkingDuration != null)
            walkIcon.colored(theme.colorScheme.onSurface),
          if (walkingDuration != null) const SizedBox(width: AppSpacings.xs),
          if (walkingDuration != null)
            Flexible(
              child: Text(
                walkingDuration!,
                style: theme.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          if (walkingDuration != null)
            const SizedBox(
                width: AppSpacings.xs), // No spacing if no element before
          if (walkingDistance != null)
            Flexible(
              child: Text(
                walkingDistance!,
                style: theme.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w200,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
        ],
      ),
    );
  }
}
