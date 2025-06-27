import 'package:batt_ds/batt_ds.dart';
import 'package:batt_ds/utils/datetime_formatter.dart';
import 'package:flutter/material.dart';

final class BookingCard extends StatelessWidget {
  final String vehicleName;
  final DateTime bookingPeriodStart;
  final DateTime bookingPeriodEnd;
  final String? price;
  final String? imageUrl;
  final String? tag;

  const BookingCard({
    super.key,
    required this.vehicleName,
    required this.bookingPeriodStart,
    required this.bookingPeriodEnd,
    this.tag,
    this.price,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: AppPaddings.medium.all,
      decoration: BoxDecoration(
        color: theme.canvasColor,
        borderRadius: BorderRadius.circular(CornerRadii.m.x),
        border: Border.all(color: AppColors.urbanMist, width: 1),
      ),
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              padding: AppPaddings.small.all,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(CornerRadii.s.x),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(CornerRadii.s.x),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: (imageUrl ?? "").isNotEmpty
                      ? Image.network(
                          imageUrl!,
                          fit: BoxFit.fitWidth,
                          errorBuilder: (context, error, stackTrace) {
                            return const Center(
                              child: Icon(
                                Icons.book_online_rounded,
                                size: 32,
                                color: AppColors.urbanMist,
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
                        )
                      : const Icon(
                          Icons.book_online_rounded,
                          size: 32,
                          color: AppColors.urbanMist,
                        ),
                ),
              ),
            ),
          ),
          const SizedBox(width: AppSpacings.md),
          Flexible(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (tag != null) ...[
                        Tag(tag!),
                        const SizedBox(height: AppSpacings.xs)
                      ],
                      FittedBox(
                        child: Text(
                          vehicleName,
                          style: theme.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(height: AppSpacings.sm),
                      Flexible(
                        child: DatesFormatter.formatDates(
                            bookingPeriodStart,
                            bookingPeriodEnd,
                            theme.textTheme,
                            Theme.of(context).colorScheme.onSurface),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: AppSpacings.md),
                Align(
                    alignment: Alignment.centerRight,
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
                              fontWeight: FontWeight.bold,
                            ),
                          )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
