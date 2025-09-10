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

  const BookingCard({
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
    return Card(
      margin: AppPaddings.none.all,
      color: AppColors.white,
      elevation: 5,
      shadowColor: AppColors.neutralColors[100]!.withAlpha(100),
      child: Padding(
        padding: AppPaddings.medium.all,
        child: BookingCardBody(
          vehicleName: vehicleName,
          imageUrl: imageUrl,
          fromLabel: fromLabel,
          toLabel: toLabel,
          fromDate: fromDate,
          toDate: toDate,
          accessory: accessory,
          textColor: Theme.of(context).colorScheme.onSurface,
          lightTextColor:
              Theme.of(context).colorScheme.onSurface.withAlpha(163),
        ),
      ),
    );
  }
}
