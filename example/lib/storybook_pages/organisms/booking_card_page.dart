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
                          accessoryLabel: "Active booking",
                          vehicleName: "Polestar 4",
                          tag: Tag(
                            "Nu actief",
                            type: TagType.standard,
                          ),
                          fromLabel: "Van",
                          fromDate: "Ma 2 jul, 14:40",
                          toLabel: "Tot",
                          toDate: "Ma 2 jul, 18:40",
                          imageUrl:
                              "https://res.cloudinary.com/directlease/image/fetch/t_transp,f_png,dpr_auto/https://images.directlease.be/jato_be/Photo400/POLESTAR/4/2025/5OD-4_315.JPG",
                          accessory: Text(
                            "Je boeking start binnen 19 minuten",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(color: AppColors.neutralColors[600]),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        ActiveBookingCard(
                          accessoryLabel: "Active booking",
                          vehicleName:
                              "Polestar 4 met nog wat extra tekens achter de naam",
                          tag: Tag(
                            "Nu actief",
                            type: TagType.standard,
                          ),
                          fromLabel: "Van",
                          fromDate: "Ma 2 jul, 14:40",
                          toLabel: "Tot",
                          toDate: "Ma 2 jul, 18:40",
                          imageUrl:
                              "https://res.cloudinary.com/directlease/image/fetch/t_transp,f_png,dpr_auto/https://images.directlease.be/jato_be/Photo400/POLESTAR/4/2025/5OD-4_315.JPG",
                        ),
                        ActiveBookingCard(
                          accessoryLabel: "Overdue booking",
                          accessoryColor: AppColors.warningPrimary,
                          vehicleName: "Polestar 4",
                          tag: Tag(
                            "Nu actief",
                            type: TagType.standard,
                          ),
                          fromLabel: "Van",
                          fromDate: "Ma 2 jul, 14:40",
                          toLabel: "Tot",
                          toDate: "Ma 2 jul, 18:40",
                          imageUrl:
                              "https://res.cloudinary.com/directlease/image/fetch/t_transp,f_png,dpr_auto/https://images.directlease.be/jato_be/Photo400/POLESTAR/4/2025/5OD-4_315.JPG",
                          accessory: SizedBox(
                            height: 48,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: AppColors.airFlow,
                                  borderRadius:
                                      BorderRadius.all(CornerRadii.s)),
                              child: Padding(
                                padding: AppPaddings.xsmall.all,
                                child: Center(
                                  child: Text(
                                    "Example accessory",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium!
                                        .copyWith(color: AppColors.b2bKeyColor),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Text(
                    'With accessory',
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
                          fromLabel: "Van",
                          fromDate: "Ma 2 jul, 14:40",
                          toLabel: "Tot",
                          toDate: "Ma 2 jul, 18:40",
                          imageUrl:
                              "https://res.cloudinary.com/directlease/image/fetch/t_transp,f_png,dpr_auto/https://images.directlease.be/jato_be/Photo400/POLESTAR/4/2025/5OD-4_315.JPG",
                          accessory: SizedBox(
                            height: 48,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: AppColors.airFlow,
                                  borderRadius:
                                      BorderRadius.all(CornerRadii.s)),
                              child: Padding(
                                padding: AppPaddings.xsmall.all,
                                child: Center(
                                  child: Text(
                                    "Example accessory",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium!
                                        .copyWith(color: AppColors.b2bKeyColor),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        BookingCard(
                          vehicleName: "Polestar 4",
                          fromLabel: "Van",
                          fromDate: "Ma 2 jul, 14:40",
                          toLabel: "Tot",
                          toDate: "Ma 2 jul, 18:40",
                          imageUrl:
                              "https://res.cloudinary.com/directlease/image/fetch/t_transp,f_png,dpr_auto/https://images.directlease.be/jato_be/Photo400/POLESTAR/4/2025/5OD-4_315.JPG",
                          tag: Tag("Verlopen", type: TagType.warning),
                          accessory: SizedBox(
                            height: 48,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: AppColors.airFlow,
                                  borderRadius:
                                      BorderRadius.all(CornerRadii.s)),
                              child: Padding(
                                padding: AppPaddings.xsmall.all,
                                child: Center(
                                  child: Text(
                                    "Example accessory",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium!
                                        .copyWith(color: AppColors.b2bKeyColor),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        BookingCard(
                          vehicleName: "Polestar 4 in past and with long name",
                          fromLabel: "Van",
                          fromDate: "Ma 2 jul, 14:40",
                          toLabel: "Tot",
                          toDate: "Ma 2 jul, 18:40",
                          imageUrl:
                              "https://res.cloudinary.com/directlease/image/fetch/t_transp,f_png,dpr_auto/https://images.directlease.be/jato_be/Photo400/POLESTAR/4/2025/5OD-4_315.JPG",
                          accessory: SizedBox(
                            height: 48,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: AppColors.airFlow,
                                  borderRadius:
                                      BorderRadius.all(CornerRadii.s)),
                              child: Padding(
                                padding: AppPaddings.xsmall.all,
                                child: Center(
                                  child: Text(
                                    "Example accessory",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium!
                                        .copyWith(color: AppColors.b2bKeyColor),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Text(
                    'Without accessory',
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
                          fromLabel: "Van",
                          fromDate: "Maandag 21 augustus, 14:40",
                          toLabel: "Tot",
                          toDate: "Maandag 21 augustus, 18:40",
                          imageUrl:
                              "https://res.cloudinary.com/directlease/image/fetch/t_transp,f_png,dpr_auto/https://images.directlease.be/jato_be/Photo400/POLESTAR/4/2025/5OD-4_315.JPG",
                        ),
                        BookingCard(
                          tag: Tag("Verlopen", type: TagType.warning),
                          vehicleName: "Polestar 4 no image",
                          fromLabel: "Van",
                          fromDate: "Ma 2 jul, 14:40",
                          toLabel: "Tot",
                          toDate: "Ma 2 jul, 18:40",
                        ),
                        BookingCard(
                          vehicleName: "Polestar 4 in past and with long name",
                          fromLabel: "Van",
                          fromDate: "Maandag 21 augustus, 14:40",
                          toLabel: "Tot",
                          toDate: "18:40",
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
