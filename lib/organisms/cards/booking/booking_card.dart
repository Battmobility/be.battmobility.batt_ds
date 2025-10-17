import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

import 'booking_card_body.dart';

final class BookingCard extends StatelessWidget {
  final String vehicleName;
  final String fromLabel;
  final String toLabel;
  final String fromDate;
  final String toDate;
  final String? imageUrl;
  final Widget? accessory;
  final Tag? tag;
  final bool boldPeriodText;

  const BookingCard({
    super.key,
    required this.vehicleName,
    required this.fromLabel,
    required this.toLabel,
    required this.fromDate,
    required this.toDate,
    this.boldPeriodText = false,
    this.tag,
    this.imageUrl,
    this.accessory,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: const BorderRadius.all(CornerRadii.m)),
      child: Padding(
        padding: AppPaddings.medium.all.add(AppPaddings.xsmall.vertical),
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
          arrowColor: AppColors.neutralColors[400]!,
          arrowBackgroundColor: AppColors.white,
          boldPeriodText: false,
        ),
      ),
    );
  }
}
