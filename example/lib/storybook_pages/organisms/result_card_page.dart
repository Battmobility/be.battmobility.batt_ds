import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

class ResultCardsPage extends StatelessWidget {
  const ResultCardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 800),
            child: SingleChildScrollView(
              padding: AppPaddings.medium.horizontal,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: AppPaddings.small.vertical,
                    child: Text(
                      'Result cards',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                  Padding(
                    padding: AppPaddings.small.vertical,
                    child: Text(
                      'With battery',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  Padding(
                    padding: AppPaddings.small.vertical,
                    child: Wrap(
                        spacing: AppSpacings.sm,
                        runSpacing: AppSpacings.md,
                        children: [
                          ResultCard(
                            name: "Polestar 2",
                            price: "€ 18",
                            price2: "+ €0,14/km",
                            tag: Tag("Eerste prijs", type: TagType.standard),
                            topInfoFields: [
                              InfoField(
                                icon: Icons.battery_1_bar,
                                text: "25%",
                                color: AppColors.b2cKeyColor,
                              ),
                              InfoField(
                                  icon: Icons.nordic_walking,
                                  text: "2 MIN (0.3km)",
                                  color: AppColors.neutralColors[700]),
                            ],
                            bottomInfoFields: [
                              InfoField(
                                  icon: Icons.watch,
                                  text: "12 mei 14:00 - 13 mei 15:00",
                                  color: AppColors.neutralColors[700])
                            ],
                            imageUrl:
                                "https://tuskercars.com/app/uploads/2023/02/polestate-2-no-background.png",
                          ),
                          ResultCard(
                            name: "Een auto met een lange naam",
                            price: "€ 1.000",
                            price2: "+ €0,14/km",
                            tag: Tag("Eerste prijs", type: TagType.standard),
                            topInfoFields: [
                              InfoField(
                                icon: Icons.battery_1_bar,
                                text: "25%",
                                color: AppColors.b2cKeyColor,
                              ),
                              InfoField(
                                  icon: Icons.nordic_walking,
                                  text: "2 MIN (0.3km)",
                                  color: AppColors.neutralColors[700]),
                            ],
                            bottomInfoFields: [
                              InfoField(
                                  icon: Icons.watch,
                                  text: "12 mei 14:00 - 13 mei 15:00",
                                  color: AppColors.neutralColors[700])
                            ],
                            imageUrl:
                                "https://tuskercars.com/app/uploads/2023/02/polestate-2-no-background.png",
                          ),
                          ResultCard(
                            name: "Een auto met een lange naam",
                            price: "€ 1.000",
                            price2: "€100 / uur",
                            tag: Tag("Favoriet", type: TagType.warning),
                            topInfoFields: [
                              InfoField(
                                icon: Icons.battery_1_bar,
                                text: "25%",
                                color: AppColors.b2cKeyColor,
                              ),
                              InfoField(
                                  icon: Icons.nordic_walking,
                                  text: "2 MIN (0.3km)",
                                  color: AppColors.neutralColors[700]),
                            ],
                            bottomInfoFields: [
                              InfoField(
                                  icon: Icons.watch,
                                  text: "12 mei 14:00 - 13 mei 15:00",
                                  color: AppColors.neutralColors[700])
                            ],
                            imageUrl:
                                "https://tuskercars.com/app/uploads/2023/02/polestate-2-no-background.png",
                          ),
                        ]),
                  ),
                  Padding(
                    padding: AppPaddings.small.vertical,
                    child: Text(
                      'With range',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  Padding(
                    padding: AppPaddings.small.vertical,
                    child: Wrap(
                        spacing: AppSpacings.sm,
                        runSpacing: AppSpacings.md,
                        children: [
                          ResultCard(
                            name: "Polestar 2",
                            price: "€12",
                            price2: "+ €0.16/km",
                            tag: Tag("Favoriet", type: TagType.warning),
                            topInfoFields: [
                              InfoField(
                                icon: Icons.battery_1_bar,
                                text: "25%",
                                color: AppColors.b2cKeyColor,
                              ),
                              InfoField(
                                  icon: Icons.nordic_walking,
                                  text: "2 MIN (0.3km)",
                                  color: AppColors.neutralColors[700]),
                            ],
                            bottomInfoFields: [
                              InfoField(
                                  icon: Icons.watch,
                                  text: "12 mei 14:00 - 13 mei 15:00",
                                  color: AppColors.neutralColors[700])
                            ],
                            imageUrl:
                                "https://tuskercars.com/app/uploads/2023/02/polestate-2-no-background.png",
                          ),
                          ResultCard(
                            name: "Een auto met een lange naam",
                            price: "€1.000 / dag",
                            price2: "€100 / uur",
                            tag: Tag("Favoriet", type: TagType.warning),
                            topInfoFields: [
                              InfoField(
                                icon: Icons.battery_1_bar,
                                text: "25%",
                                color: AppColors.b2cKeyColor,
                              ),
                              InfoField(
                                  icon: Icons.nordic_walking,
                                  text: "2 MIN (0.3km)",
                                  color: AppColors.neutralColors[700]),
                            ],
                            bottomInfoFields: [
                              InfoField(
                                  icon: Icons.watch,
                                  text: "12 mei 14:00 - 13 mei 15:00",
                                  color: AppColors.neutralColors[700])
                            ],
                            imageUrl:
                                "https://tuskercars.com/app/uploads/2023/02/polestate-2-no-background.png",
                          ),
                        ]),
                  ),
                  Padding(
                    padding: AppPaddings.small.vertical,
                    child: Text(
                      'Selected',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  Padding(
                    padding: AppPaddings.small.vertical,
                    child: Wrap(
                        spacing: AppSpacings.md,
                        runSpacing: AppSpacings.md,
                        children: [
                          ResultCard(
                            name: "Polestar 2",
                            price: "€ 18",
                            price2: "+ €0.16/km",
                            tag: Tag("Geboekt", type: TagType.booking),
                            topInfoFields: [
                              InfoField(
                                icon: Icons.battery_1_bar,
                                text: "25%",
                                color: AppColors.b2cKeyColor,
                              ),
                              InfoField(
                                  icon: Icons.nordic_walking,
                                  text: "2 MIN (0.3km)",
                                  color: AppColors.neutralColors[700]),
                            ],
                            bottomInfoFields: [
                              InfoField(
                                  icon: Icons.watch,
                                  text: "12 mei 14:00 - 13 mei 15:00",
                                  color: AppColors.neutralColors[700])
                            ],
                            imageUrl:
                                "https://tuskercars.com/app/uploads/2023/02/polestate-2-no-background.png",
                            selected: true,
                          ),
                          ResultCard(
                            name: "Een auto met een lange naam",
                            price: "€ 1.000",
                            price2: "€100 / uur",
                            tag: Tag("Geboekt", type: TagType.booking),
                            topInfoFields: [
                              InfoField(
                                icon: Icons.battery_1_bar,
                                text: "25%",
                                color: AppColors.b2cKeyColor,
                              ),
                              InfoField(
                                  icon: Icons.nordic_walking,
                                  text: "2 MIN (0.3km)",
                                  color: AppColors.neutralColors[700]),
                            ],
                            bottomInfoFields: [
                              InfoField(
                                  icon: Icons.watch,
                                  text: "12 mei 14:00 - 13 mei 15:00",
                                  color: AppColors.neutralColors[700])
                            ],
                            imageUrl:
                                "https://tuskercars.com/app/uploads/2023/02/polestate-2-no-background.png",
                            selected: true,
                          ),
                          ResultCard(
                            name: "Een auto met een lange naam",
                            price: "€ 1.000",
                            price2: "€100 / uur",
                            tag: Tag("Geboekt", type: TagType.booking),
                            topInfoFields: [
                              InfoField(
                                icon: Icons.battery_1_bar,
                                text: "25%",
                                color: AppColors.b2cKeyColor,
                              ),
                              InfoField(
                                  icon: Icons.nordic_walking,
                                  text: "2 MIN (0.3km)",
                                  color: AppColors.neutralColors[700]),
                            ],
                            bottomInfoFields: [
                              InfoField(
                                  icon: Icons.watch,
                                  text: "12 mei 14:00 - 13 mei 15:00",
                                  color: AppColors.neutralColors[700])
                            ],
                            imageUrl:
                                "https://tuskercars.com/app/uploads/2023/02/polestate-2-no-background.png",
                            selected: true,
                          ),
                        ]),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
