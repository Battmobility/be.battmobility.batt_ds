import 'package:batt_ds/batt_ds.dart';
import 'package:batt_ds/theme/gradient_theme.dart';
import 'package:flutter/material.dart';

final class ActiveBookingCard extends StatelessWidget {
  final String vehicleName;
  final String fromLabel;
  final String toLabel;
  final String fromDate;
  final String toDate;
  final String? imageUrl;
  final Widget? accessory;
  final Tag? tag;

  const ActiveBookingCard({
    super.key,
    required this.vehicleName,
    required this.fromLabel,
    required this.toLabel,
    required this.fromDate,
    required this.toDate,
    this.tag,
    this.imageUrl,
    this.accessory,
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(CornerRadii.s.x),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(CornerRadii.s.x),
                        child: SizedBox(
                          width: 44,
                          height: 44,
                          child: (imageUrl ?? "").isNotEmpty
                              ? Image.network(
                                  imageUrl!,
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) {
                                    return const Center(
                                      child: Icon(
                                        Icons.book_online_rounded,
                                        size: 44,
                                        color: AppColors.urbanMist,
                                      ),
                                    );
                                  },
                                  loadingBuilder:
                                      (context, child, loadingProgress) {
                                    if (loadingProgress == null) return child;
                                    return const Center(
                                        child: AnimatedLoader());
                                  },
                                )
                              : const Icon(
                                  Icons.book_online_rounded,
                                  size: 44,
                                  color: AppColors.urbanMist,
                                ),
                        ),
                      ),
                    ),
                    const SizedBox(width: AppSpacings.md),
                    Flexible(
                      child: Text(
                        vehicleName,
                        style: theme.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.surface),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (tag != null) ...[
                    Padding(
                      padding: AppPaddings.medium.horizontal,
                      child: tag!,
                    )
                  ],
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                    color: AppColors.white,
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: AppSpacings.md),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 4,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      fromLabel,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Theme.of(context)
                              .colorScheme
                              .surface
                              .withAlpha(163)),
                    ),
                    Text(
                      fromDate,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Theme.of(context).colorScheme.surface),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: AppPaddings.xxsmall.bottom,
                    child: const Icon(Icons.arrow_forward,
                        color: AppColors.white, size: AppSpacings.md),
                  ),
                  const SizedBox(width: AppSpacings.md),
                  Flexible(
                    flex: 2,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          toLabel,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .surface
                                      .withAlpha(163)),
                        ),
                        Text(
                          toDate,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(
                                  color: Theme.of(context).colorScheme.surface),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(width: AppSpacings.lg),
            ],
          ),
          if (accessory != null) ...[
            Padding(
              padding: AppPaddings.medium.top,
              child: accessory!,
            )
          ]
        ],
      ),
    );
  }
}
