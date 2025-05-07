import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

enum DisplayPriority { charge, range }

final class VehicleCard extends StatelessWidget {
  final String name;
  final double chargePercentage;
  final String walkingDuration;
  final double walkingDistance;
  final String tag;
  final double price;
  final String imageUrl;
  final DisplayPriority displayPriority;

  const VehicleCard({
    super.key,
    required this.name,
    required this.chargePercentage,
    required this.walkingDuration,
    required this.walkingDistance,
    required this.tag,
    required this.price,
    required this.imageUrl,
    this.displayPriority = DisplayPriority.charge,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: AppPaddings.large.all,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(CornerRadii.m.x),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(25),
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
              child: imageUrl.isNotEmpty
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(CornerRadii.s.x),
                      child: Image(
                        image: NetworkImage(imageUrl),
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          // Show a placeholder when image fails to load
                          return Center(
                            child: Icon(
                              Icons.electric_car,
                              size: 32,
                              color: AppColors.grey[400],
                            ),
                          );
                        },
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) return child;
                          // Show a loading indicator while the image loads
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
                  : Center(
                      child: Icon(
                        Icons.electric_car,
                        size: 32,
                        color: AppColors.grey[400],
                      ),
                    ),
            ),
          ),
          const SizedBox(width: AppSpacings.lg),
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          name,
                          style: theme.textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Container(
                        padding: AppPaddings.small.all
                            .add(AppPaddings.small.horizontal),
                        decoration: BoxDecoration(
                          color: AppColors.chipColorEnabledPrimary,
                          borderRadius: BorderRadius.circular(CornerRadii.s.x),
                        ),
                        child: Text(
                          tag,
                          style: theme.textTheme.titleMedium?.copyWith(
                            color: AppColors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSpacings.lg),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            if (displayPriority == DisplayPriority.charge)
                              BatteryIcon(chargePercentage: chargePercentage)
                            else
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.route,
                                    color: AppColors.green,
                                    size: AppSpacings.lg,
                                  ),
                                  const SizedBox(width: AppSpacings.xs),
                                  Flexible(
                                    child: Text(
                                      '${walkingDistance.toString()}KM',
                                      style:
                                          theme.textTheme.bodySmall?.copyWith(
                                        fontWeight: FontWeight.w200,
                                        color: AppColors.green[400],
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            const SizedBox(width: AppSpacings.sm),
                            Flexible(
                              child: _walkingInfo(theme),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        '€ ${price.toStringAsFixed(1).replaceAll('.', ',')}',
                        style: theme.textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
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

  Widget _walkingInfo(ThemeData theme) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.directions_walk,
          color: AppColors.grey[400],
          size: AppSpacings.lg,
        ),
        const SizedBox(width: AppSpacings.xs),
        Flexible(
          child: Text(
            walkingDuration,
            style: theme.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w600,
              color: AppColors.grey[400],
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(width: AppSpacings.xs),
        Flexible(
          child: Text(
            '(${walkingDistance.toString()}KM)',
            style: theme.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w200,
              color: AppColors.grey[400],
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
