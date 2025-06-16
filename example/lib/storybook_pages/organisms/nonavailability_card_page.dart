import 'package:batt_ds/batt_ds.dart';
import 'package:batt_ds/organisms/cards/non_availability_card.dart';
import 'package:flutter/material.dart';

class NonAvailabilityCardsPage extends StatelessWidget {
  const NonAvailabilityCardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: AppPaddings.medium.horizontal,
          child: SingleChildScrollView(
            padding: AppPaddings.medium.horizontal,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Text(
                    'Nonavailability cards',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        NonAvailabilityCard(
                          height: 80,
                          barColor: AppColors.ecoHorizon,
                          mainLabel: "14:00 - 16:00 (2 uur)",
                          tag: "Boeking",
                        ),
                        NonAvailabilityCard(
                          height: 200,
                          barColor: AppColors.ecoHorizon,
                          mainLabel: "14:00 - 24:00 (10 uur)",
                          tag: "Boeking",
                        ),
                        NonAvailabilityCard(
                          height: 80,
                          barColor: AppColors.b2bKeyColor,
                          mainLabel: "14:00 - 16:00 (2 uur)",
                          tag: "Blokkering",
                        ),
                        NonAvailabilityCard(
                          height: 200,
                          barColor: AppColors.b2bKeyColor,
                          mainLabel: "14:00 - 24:00 (10 uur)",
                          tag: "Blokkering",
                        ),
                        NonAvailabilityCard(
                          height: 80,
                          barColor: AppColors.b2bKeyColor,
                          mainLabel: "14:00 - 16:00 (2 uur)",
                          tag: "Blokkering",
                          recurrenceLabel: "Elke week",
                        ),
                        NonAvailabilityCard(
                          height: 200,
                          barColor: AppColors.b2bKeyColor,
                          mainLabel: "14:00 - 24:00 (10 uur)",
                          tag: "Blokkering",
                          recurrenceLabel: "Elke week",
                        ),
                        NonAvailabilityCard(
                          height: 80,
                          barColor: AppColors.b2bKeyColor,
                          mainLabel: "14:00 - 16:00 (2 uur)",
                          tag: "Blokkering",
                          recurrenceLabel: "Elke week",
                          showIndicator: true,
                        ),
                        NonAvailabilityCard(
                          height: 200,
                          barColor: AppColors.b2bKeyColor,
                          mainLabel: "14:00 - 24:00 (10 uur)",
                          tag: "Blokkering",
                          recurrenceLabel: "Elke week",
                          showIndicator: true,
                        )
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
