import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

class BookingCardsPage extends StatelessWidget {
  const BookingCardsPage({super.key});

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
                    'Booking cards',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Text(
                    'Active',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        ActiveBookingCard(
                          tag: "Start je rit",
                          vehicleName: "Polestar 4",
                          bookingPeriodStart:
                              DateTime.now().subtract(Duration(days: 2)),
                          bookingPeriodEnd:
                              DateTime.now().subtract(Duration(hours: 5)),
                          imageUrl:
                              "https://res.cloudinary.com/directlease/image/fetch/t_transp,f_png,dpr_auto/https://images.directlease.be/jato_be/Photo400/POLESTAR/4/2025/5OD-4_315.JPG",
                        ),
                        ActiveBookingCard(
                          tag: "Start je rit",
                          vehicleName: "Polestar 4",
                          bookingPeriodStart:
                              DateTime.now().add(Duration(hours: 1)),
                          bookingPeriodEnd:
                              DateTime.now().add(Duration(hours: 5)),
                          imageUrl:
                              "https://res.cloudinary.com/directlease/image/fetch/t_transp,f_png,dpr_auto/https://images.directlease.be/jato_be/Photo400/POLESTAR/4/2025/5OD-4_315.JPG",
                        ),
                        ActiveBookingCard(
                          tag: "Nu actief",
                          vehicleName: "Polestar 4 in past and with long name",
                          bookingPeriodStart:
                              DateTime.now().add(Duration(days: 100)),
                          bookingPeriodEnd:
                              DateTime.now().add(Duration(days: 90)),
                          imageUrl:
                              "https://res.cloudinary.com/directlease/image/fetch/t_transp,f_png,dpr_auto/https://images.directlease.be/jato_be/Photo400/POLESTAR/4/2025/5OD-4_315.JPG",
                        ),
                      ]),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Text(
                    'With price',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        BookingCard(
                          vehicleName: "Polestar 4",
                          bookingPeriodStart:
                              DateTime.now().subtract(Duration(days: 2)),
                          bookingPeriodEnd:
                              DateTime.now().subtract(Duration(hours: 5)),
                          price: "€ 105",
                          imageUrl:
                              "https://res.cloudinary.com/directlease/image/fetch/t_transp,f_png,dpr_auto/https://images.directlease.be/jato_be/Photo400/POLESTAR/4/2025/5OD-4_315.JPG",
                        ),
                        BookingCard(
                          vehicleName: "Polestar 4",
                          bookingPeriodStart:
                              DateTime.now().add(Duration(hours: 1)),
                          bookingPeriodEnd:
                              DateTime.now().add(Duration(hours: 5)),
                          price: "€ 105",
                          imageUrl:
                              "https://res.cloudinary.com/directlease/image/fetch/t_transp,f_png,dpr_auto/https://images.directlease.be/jato_be/Photo400/POLESTAR/4/2025/5OD-4_315.JPG",
                          tag: Tag("Verlopen", type: TagType.warning),
                        ),
                        BookingCard(
                          vehicleName: "Polestar 4 in past and with long name",
                          bookingPeriodStart:
                              DateTime.now().add(Duration(days: 100)),
                          bookingPeriodEnd:
                              DateTime.now().add(Duration(days: 90)),
                          price: "€ 105",
                          imageUrl:
                              "https://res.cloudinary.com/directlease/image/fetch/t_transp,f_png,dpr_auto/https://images.directlease.be/jato_be/Photo400/POLESTAR/4/2025/5OD-4_315.JPG",
                        ),
                      ]),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Text(
                    'Without price',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        BookingCard(
                          vehicleName: "Polestar 4",
                          bookingPeriodStart:
                              DateTime.now().subtract(Duration(days: 2)),
                          bookingPeriodEnd:
                              DateTime.now().subtract(Duration(hours: 5)),
                          imageUrl:
                              "https://res.cloudinary.com/directlease/image/fetch/t_transp,f_png,dpr_auto/https://images.directlease.be/jato_be/Photo400/POLESTAR/4/2025/5OD-4_315.JPG",
                        ),
                        BookingCard(
                          vehicleName: "Polestar 4 no image",
                          bookingPeriodStart:
                              DateTime.now().add(Duration(hours: 1)),
                          bookingPeriodEnd:
                              DateTime.now().add(Duration(hours: 5)),
                        ),
                        BookingCard(
                          vehicleName: "Polestar 4 in past and with long name",
                          bookingPeriodStart:
                              DateTime.now().add(Duration(days: 100)),
                          bookingPeriodEnd:
                              DateTime.now().add(Duration(days: 90)),
                          imageUrl:
                              "https://res.cloudinary.com/directlease/image/fetch/t_transp,f_png,dpr_auto/https://images.directlease.be/jato_be/Photo400/POLESTAR/4/2025/5OD-4_315.JPG",
                        ),
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
