import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

final class BookingCardBody extends StatelessWidget {
  final String vehicleName;
  final String fromLabel;
  final String toLabel;
  final String fromDate;
  final String toDate;
  final String? imageUrl;
  final Widget? accessory;
  final Tag? tag;
  final Color textColor;
  final Color lightTextColor;

  const BookingCardBody({
    super.key,
    required this.vehicleName,
    required this.fromLabel,
    required this.toLabel,
    required this.fromDate,
    required this.toDate,
    required this.textColor,
    required this.lightTextColor,
    this.tag,
    this.imageUrl,
    this.accessory,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
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
                        color: AppColors.neutralColors[100]),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(CornerRadii.s.x),
                      child: SizedBox(
                        width: 44,
                        height: 44,
                        child: (imageUrl ?? "").isNotEmpty
                            ? Image.network(
                                imageUrl!,
                                fit: BoxFit.contain,
                                errorBuilder: (context, error, stackTrace) {
                                  return Center(
                                    child: Icon(
                                      Icons.list_alt,
                                      size: AppSpacings.xxl,
                                      color: AppColors.neutralColors[950],
                                    ),
                                  );
                                },
                                loadingBuilder:
                                    (context, child, loadingProgress) {
                                  if (loadingProgress == null) return child;
                                  return const Center(child: AnimatedLoader());
                                },
                              )
                            : Icon(
                                Icons.list_alt,
                                size: AppSpacings.xxl,
                                color: AppColors.neutralColors[950],
                              ),
                      ),
                    ),
                  ),
                  const SizedBox(width: AppSpacings.md),
                  Flexible(
                    child: Text(
                      vehicleName,
                      style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold, color: textColor),
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (tag != null) ...[
                  Padding(
                    padding: AppPaddings.medium.horizontal,
                    child: tag!,
                  )
                ],
                Icon(Icons.arrow_forward_ios,
                    size: AppSpacings.lg, color: textColor),
              ],
            )
          ],
        ),
        const SizedBox(height: AppSpacings.md),
        LayoutBuilder(builder: (context, constraints) {
          return Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: SizedBox(
                  width: constraints.maxWidth / 2,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        fromLabel,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(color: lightTextColor),
                      ),
                      const SizedBox(width: AppSpacings.xs),
                      Text(
                        fromDate,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(color: textColor),
                      )
                    ],
                  ),
                ),
              ),
              Flexible(
                child: SizedBox(
                  width: constraints.maxWidth / 2,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(Icons.arrow_forward,
                          color: textColor, size: AppSpacings.lg),
                      const SizedBox(width: AppSpacings.md),
                      Flexible(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              toLabel,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(color: lightTextColor),
                            ),
                            const SizedBox(width: AppSpacings.xs),
                            Text(
                              toDate,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(color: textColor),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          );
        }),
        if (accessory != null) ...[
          Padding(
            padding: AppPaddings.medium.top,
            child: accessory!,
          )
        ]
      ],
    );
  }
}
