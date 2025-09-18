import 'package:batt_ds/batt_ds.dart';
import 'package:batt_ds/organisms/cards/booking/booking_card_body.dart';
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
    return Container(
      padding: AppPaddings.medium.all,
      decoration: BoxDecoration(
        gradient: GradientTheme.standard().activeCardBackgroundGradient,
        borderRadius: const BorderRadius.all(CornerRadii.m),
      ),
      child: BookingCardBody(
        vehicleName: vehicleName,
        imageUrl: imageUrl,
        fromLabel: fromLabel,
        toLabel: toLabel,
        fromDate: fromDate,
        toDate: toDate,
        accessory: accessory,
        tag: tag,
        textColor: Theme.of(context).colorScheme.surface,
        lightTextColor: Theme.of(context).colorScheme.surface.withAlpha(163),
        arrowColor: AppColors.white,
        arrowBackgroundColor: AppColors.futureBlue,
        arrowShadow: false,
      ),
    );
  }
}
