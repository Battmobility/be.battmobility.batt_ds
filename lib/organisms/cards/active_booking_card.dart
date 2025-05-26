import 'package:batt_ds/batt_ds.dart';
import 'package:batt_ds/utils/datetime_formatter.dart';
import 'package:flutter/material.dart';

final class ActiveBookingCard extends StatelessWidget {
  final String vehicleName;
  final DateTime bookingPeriodStart;
  final DateTime bookingPeriodEnd;
  final String? price;
  final String? imageUrl;

  const ActiveBookingCard({
    super.key,
    required this.vehicleName,
    required this.bookingPeriodStart,
    required this.bookingPeriodEnd,
    this.price,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AspectRatio(
      aspectRatio: 5 / 1,
      child: HeroRadialGradientContainer(
        cornerradius: CornerRadii.m,
        child: Padding(
          padding: AppPaddings.medium.all,
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.urbanMist,
                    borderRadius: BorderRadius.circular(CornerRadii.s.x),
                  ),
                  child: (imageUrl ?? "").isNotEmpty
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(CornerRadii.s.x),
                          child: Image(
                            image: NetworkImage(imageUrl!),
                            fit: BoxFit.fitWidth,
                            errorBuilder: (context, error, stackTrace) {
                              // Show a placeholder when image fails to load
                              return Center(
                                child: Icon(
                                  Icons.book_online_rounded,
                                  size: 32,
                                  color: AppColors.grey[400],
                                ),
                              );
                            },
                            loadingBuilder: (context, child, loadingProgress) {
                              if (loadingProgress == null) return child;
                              return Center(
                                child: CircularProgressIndicator(
                                  value: loadingProgress.expectedTotalBytes !=
                                          null
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
                            Icons.book_online_rounded,
                            size: 32,
                            color: AppColors.grey[400],
                          ),
                        ),
                ),
              ),
              const SizedBox(width: AppSpacings.sm),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          FittedBox(
                            child: Text(
                              vehicleName,
                              style: theme.textTheme.titleMedium?.copyWith(
                                color: AppColors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const SizedBox(height: AppSpacings.sm),
                          Flexible(
                            child: FittedBox(
                                child: DatesFormatter.formatDates(
                                    bookingPeriodStart,
                                    bookingPeriodEnd,
                                    theme.textTheme,
                                    AppColors.white)),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: AppSpacings.md),
                    Center(
                        child: Padding(
                      padding: AppPaddings.small.horizontal,
                      child: (price == null)
                          ? const Icon(
                              Icons.chevron_right_sharp,
                              size: 24,
                              weight: 0.5,
                              color: AppColors.urbanMist,
                            )
                          : Text(
                              price!,
                              style: theme.textTheme.titleMedium?.copyWith(
                                color: AppColors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                    )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
