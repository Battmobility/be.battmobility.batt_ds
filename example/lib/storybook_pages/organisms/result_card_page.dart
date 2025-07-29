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
                            range: "500 km",
                            price: "€ 18",
                            price2: "+ €0,14/km",
                            tag: Tag("Eerste prijs", type: TagType.standard),
                            walkingDistance: "20",
                            walkingDuration: "10 min",
                            imageUrl:
                                "https://tuskercars.com/app/uploads/2023/02/polestate-2-no-background.png",
                          ),
                          ResultCard(
                            name: "Een auto met een lange naam",
                            price: "€ 1.000",
                            price2: "+ €0,14/km",
                            range: "550km",
                            tag: Tag("Eerste prijs", type: TagType.standard),
                            walkingDistance: "200m.",
                            walkingDuration: "2h",
                            imageUrl:
                                "https://tuskercars.com/app/uploads/2023/02/polestate-2-no-background.png",
                          ),
                          ResultCard(
                            name: "Een auto met een lange naam",
                            price: "€ 1.000",
                            price2: "€100 / uur",
                            range: "550km",
                            tag: Tag("Favoriet", type: TagType.warning),
                            walkingDistance: "200m.",
                            walkingDuration: "2h",
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
                            range: "550km",
                            tag: Tag("Favoriet", type: TagType.warning),
                            walkingDistance: "2km.",
                            walkingDuration: "10 min",
                            imageUrl:
                                "https://tuskercars.com/app/uploads/2023/02/polestate-2-no-background.png",
                          ),
                          ResultCard(
                            name: "Een auto met een lange naam",
                            range: "50 km",
                            price: "€1.000 / dag",
                            price2: "€100 / uur",
                            tag: Tag("Favoriet", type: TagType.warning),
                            walkingDistance: "200m.",
                            walkingDuration: "2h",
                            imageUrl:
                                "https://tuskercars.com/app/uploads/2023/02/polestate-2-no-background.png",
                            deviationInfo: "12 mei 14:00 - 13 mei 15:00",
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
                            range: "500 km",
                            price: "€ 18",
                            price2: "+ €0.16/km",
                            tag: Tag("Geboekt", type: TagType.booking),
                            walkingDistance: "20",
                            walkingDuration: "10 min",
                            imageUrl:
                                "https://tuskercars.com/app/uploads/2023/02/polestate-2-no-background.png",
                            selected: true,
                          ),
                          ResultCard(
                            name: "Een auto met een lange naam",
                            price: "€ 1.000",
                            price2: "€100 / uur",
                            range: "300 km",
                            tag: Tag("Geboekt", type: TagType.booking),
                            walkingDistance: "200m.",
                            walkingDuration: "2h",
                            imageUrl:
                                "https://tuskercars.com/app/uploads/2023/02/polestate-2-no-background.png",
                            selected: true,
                            deviationInfo: "12 mei 14:00 - 13 mei 15:00",
                          ),
                          ResultCard(
                            name: "Een auto met een lange naam",
                            price: "€ 1.000",
                            price2: "€100 / uur",
                            range: "300 km",
                            tag: Tag("Geboekt", type: TagType.booking),
                            walkingDistance: "200m.",
                            walkingDuration: "2h",
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
