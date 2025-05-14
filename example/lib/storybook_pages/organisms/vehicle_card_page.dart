import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

class VehicleCardsPage extends StatelessWidget {
  const VehicleCardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: AppPaddings.medium.horizontal,
          child: SingleChildScrollView(
            padding: AppPaddings.medium.trailing,
            child: LayoutBuilder(builder: (context, constraints) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: AppPaddings.small.vertical,
                    child: Text(
                      'Vehicle cards',
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
                          SizedBox(
                            width: constraints.maxWidth * 0.5,
                            height: constraints.maxWidth * 0.15,
                            child: VehicleCard(
                              name: "Polestar 2",
                              chargePercentage: 75,
                              price: "€ 18",
                              tag: "Eerste prijs",
                              walkingDistance: "20",
                              walkingDuration: "10 min",
                              displayPriority:
                                  VehiclePropertyDisplayPriority.charge,
                              imageUrl:
                                  "https://tuskercars.com/app/uploads/2023/02/polestate-2-no-background.png",
                            ),
                          ),
                          SizedBox(
                            width: constraints.maxWidth * 0.5,
                            height: constraints.maxWidth * 0.15,
                            child: VehicleCard(
                              name: "Een auto met een lange naam",
                              chargePercentage: 100,
                              price: "€ 1.000",
                              tag: "Een lange tag",
                              walkingDistance: "200m.",
                              walkingDuration: "2h",
                              displayPriority:
                                  VehiclePropertyDisplayPriority.charge,
                              imageUrl:
                                  "https://tuskercars.com/app/uploads/2023/02/polestate-2-no-background.png",
                            ),
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
                          SizedBox(
                            width: constraints.maxWidth * 0.5,
                            height: constraints.maxWidth * 0.15,
                            child: VehicleCard(
                              name: "Polestar 2",
                              chargePercentage: 75,
                              price: "€12",
                              tag: "Eerste prijs",
                              walkingDistance: "2km.",
                              walkingDuration: "10 min",
                              displayPriority:
                                  VehiclePropertyDisplayPriority.range,
                              imageUrl:
                                  "https://tuskercars.com/app/uploads/2023/02/polestate-2-no-background.png",
                            ),
                          ),
                          SizedBox(
                            width: constraints.maxWidth * 0.5,
                            height: constraints.maxWidth * 0.15,
                            child: VehicleCard(
                              name: "Een auto met een lange naam",
                              chargePercentage: 100,
                              price: "€1.000",
                              tag: "Een lange tag",
                              walkingDistance: "200m.",
                              walkingDuration: "2h",
                              displayPriority:
                                  VehiclePropertyDisplayPriority.range,
                              imageUrl:
                                  "https://tuskercars.com/app/uploads/2023/02/polestate-2-no-background.png",
                            ),
                          ),
                        ]),
                  ),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}
