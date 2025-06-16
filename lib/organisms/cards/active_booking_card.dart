import 'package:batt_ds/batt_ds.dart';
import 'package:batt_ds/theme/gradient_theme.dart';
import 'package:batt_ds/utils/datetime_formatter.dart';
import 'package:flutter/material.dart';

final class ActiveBookingCard extends StatelessWidget {
  final String vehicleName;
  final DateTime bookingPeriodStart;
  final DateTime bookingPeriodEnd;
  final String? imageUrl;
  final String tag;

  const ActiveBookingCard({
    super.key,
    required this.vehicleName,
    required this.bookingPeriodStart,
    required this.bookingPeriodEnd,
    required this.tag,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: AppPaddings.medium.all,
      decoration: BoxDecoration(
        gradient: GradientTheme.standard().activeCardBackgroundGradient,
        borderRadius: const BorderRadius.all(CornerRadii.m),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            flex: 1,
            child: Container(
              padding: AppPaddings.small.all,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceDim,
                borderRadius: BorderRadius.circular(CornerRadii.s.x),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(CornerRadii.s.x),
                child: AspectRatio(
                  aspectRatio: 120 / 90,
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: (imageUrl ?? "").isNotEmpty
                        ? Image.network(
                            imageUrl!,
                            fit: BoxFit.fitWidth,
                          )
                        : const Icon(
                            Icons.book_online_rounded,
                            size: 32,
                            color: AppColors.graphiteDrive,
                          ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: AppSpacings.md),
          Flexible(
            flex: 2,
            fit: FlexFit.loose,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Tag(tag),
                    const SizedBox(height: AppSpacings.sm),
                    Text(
                      vehicleName,
                      style: theme.textTheme.titleMedium?.copyWith(
                        color: AppColors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
                const SizedBox(width: AppSpacings.md),
                DatesFormatter.formatDates(
                  bookingPeriodStart,
                  bookingPeriodEnd,
                  theme.textTheme,
                  AppColors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
