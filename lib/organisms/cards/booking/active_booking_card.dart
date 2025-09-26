import 'package:batt_ds/batt_ds.dart';
import 'package:batt_ds/organisms/cards/booking/booking_card_body.dart';
import 'package:batt_ds/theme/gradient_theme.dart';
import 'package:flutter/material.dart';

final class ActiveBookingCard extends StatelessWidget {
  final String accessoryLabel;
  final Color? accessoryColor;
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
    required this.accessoryLabel,
    this.accessoryColor,
    this.tag,
    this.imageUrl,
    this.accessory,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: accessoryColor == null
            ? GradientTheme.standard().activeCardBackgroundGradient
            : null,
        color: accessoryColor,
        borderRadius: const BorderRadius.all(CornerRadii.m),
      ),
      child: Column(
        children: [
          Container(
            padding: AppPaddings.medium.all.add(AppPaddings.xsmall.vertical),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: const BorderRadius.all(CornerRadii.m)),
            child: BookingCardBody(
              vehicleName: vehicleName,
              imageUrl: imageUrl,
              fromLabel: fromLabel,
              toLabel: toLabel,
              fromDate: fromDate,
              toDate: toDate,
              accessory: accessory,
              tag: tag,
              textColor: Theme.of(context).colorScheme.onSurface,
              lightTextColor:
                  Theme.of(context).colorScheme.onSurface.withAlpha(163),
              arrowColor: AppColors.white,
              arrowBackgroundColor: AppColors.futureBlue,
              arrowShadow: false,
            ),
          ),
          Center(
              child: Padding(
            padding: AppPaddings.small.all,
            child: Text(
              accessoryLabel,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: AppColors.white),
            ),
          )),
        ],
      ),
    );
  }
}
