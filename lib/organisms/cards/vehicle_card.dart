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
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: AppPaddings.medium.all,
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        borderRadius: BorderRadius.circular(CornerRadii.m.x),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).shadowColor,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.grey[100],
                borderRadius: BorderRadius.circular(CornerRadii.s.x),
              ),
              child: (imageUrl ?? "").isNotEmpty
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(CornerRadii.s.x),
                      child: Image(
                        image: NetworkImage(imageUrl!),
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          // Show a placeholder when image fails to load
                          return const Center(child: carIcon);
                        },
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) return child;
                          return Center(
                            child: CircularProgressIndicator(
                              value: loadingProgress.expectedTotalBytes != null
                                  ? loadingProgress.cumulativeBytesLoaded /
                                      loadingProgress.expectedTotalBytes!
                                  : null,
                            ),
                          );
                        },
                      ),
                    )
                  : const Center(child: carIcon),
            ),
          ),
          const SizedBox(width: AppSpacings.lg),
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: FittedBox(
                          child: Text(
                            name,
                            style: theme.textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
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
                            color: AppColors.grey[700],
                            borderRadius:
                                BorderRadius.circular(CornerRadii.s.x),
                          ),
                          child: Text(
                            tag!,
                            style: theme.textTheme.titleMedium?.copyWith(
                              color: AppColors.white,
                              fontWeight: FontWeight.bold,
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
                              style: theme.textTheme.bodyLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: AppColors.grey[700],
                              ),
                            ),
                          if (price2 != null)
                            Text(
                              price2!,
                              style: theme.textTheme.bodyLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: AppColors.grey[700],
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _rangeInfo(ThemeData theme) {
    return Row(
      children: [
        if (range != null)
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              rangeIcon.colored(AppColors.green[400]!),
              const SizedBox(width: AppSpacings.xs),
              Flexible(
                child: Text(
                  range!,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: AppColors.green[400],
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
          if (walkingDuration != null) walkIcon.colored(AppColors.grey[400]!),
          if (walkingDuration != null) const SizedBox(width: AppSpacings.xs),
          if (walkingDuration != null)
            Flexible(
              child: Text(
                walkingDuration!,
                style: theme.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.grey[400],
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
                  color: AppColors.grey[400],
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
        ],
      ),
    );
  }
}
