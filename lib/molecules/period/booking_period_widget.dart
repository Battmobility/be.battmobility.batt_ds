import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

final class BookingPeriodWidget extends StatelessWidget {
  final String startTitle;
  final String start;
  final String endTitle;
  final String end;
  final bool boldText;

  const BookingPeriodWidget(
      {super.key,
      required this.startTitle,
      required this.start,
      required this.endTitle,
      required this.end,
      required this.boldText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(CornerRadii.m),
          border: Border.all(color: AppColors.neutralColors[100]!)),
      child: Padding(
        padding: AppPaddings.medium.all,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: AppSpacings.md,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                spacing: AppSpacings.xs,
                children: [
                  Text(
                    startTitle,
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .copyWith(color: AppColors.neutralColors[400]),
                  ),
                  Flexible(
                    child: Text(
                      start,
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontWeight:
                              boldText ? FontWeight.w600 : FontWeight.normal),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: AppPaddings.small.horizontal,
              child: SizedBox(
                height: AppSpacings.xxxxl,
                child: VerticalDivider(
                  width: 0.5,
                  thickness: 0.5,
                  color: AppColors.neutralColors[100],
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                spacing: AppSpacings.xs,
                children: [
                  Text(
                    endTitle,
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .copyWith(color: AppColors.neutralColors[400]),
                  ),
                  Flexible(
                    child: Text(
                      end,
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontWeight:
                              boldText ? FontWeight.w600 : FontWeight.normal),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
