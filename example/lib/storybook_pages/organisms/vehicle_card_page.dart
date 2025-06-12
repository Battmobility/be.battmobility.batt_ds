import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

class VehicleCardsPage extends StatelessWidget {
  const VehicleCardsPage({super.key});

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
                          VehicleCard(
                            name: "Polestar 2",
                            range: "500 km",
                            chargePercentage: 75,
                            price: "€ 18",
                            tag: "Eerste prijs",
                            walkingDistance: "20",
                            walkingDuration: "10 min",
                            imageUrl:
                                "https://res.cloudinary.com/directlease/image/fetch/t_transp,f_png,dpr_auto/https://images.directlease.be/jato_be/Photo400/POLESTAR/4/2025/5OD-4_315.JPG",
                          ),
                          VehicleCard(
                            name: "Een auto met een lange naam",
                            chargePercentage: 100,
                            price: "€ 1.000",
                            price2: "€100 / uur",
                            tag: "Een lange tag",
                            walkingDistance: "200m.",
                            walkingDuration: "2h",
                            imageUrl:
                                "https://res.cloudinary.com/directlease/image/fetch/t_transp,f_png,dpr_auto/https://images.directlease.be/jato_be/Photo400/POLESTAR/4/2025/5OD-4_315.JPG",
                          ),
                          VehicleCard(
                            name: "Een auto met een lange naam",
                            chargePercentage: 100,
                            price: "€ 1.000",
                            price2: "€100 / uur",
                            walkingDistance: "200m.",
                            walkingDuration: "2h",
                            licensePlate: "2-ABC-123",
                            imageUrl:
                                "https://res.cloudinary.com/directlease/image/fetch/t_transp,f_png,dpr_auto/https://images.directlease.be/jato_be/Photo400/POLESTAR/4/2025/5OD-4_315.JPG",
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
                          VehicleCard(
                            name: "Polestar 2",
                            chargePercentage: 75,
                            price: "€12",
                            walkingDistance: "2km.",
                            walkingDuration: "10 min",
                            imageUrl:
                                "https://tuskercars.com/app/uploads/2023/02/polestate-2-no-background.png",
                          ),
                          VehicleCard(
                            name: "Een auto met een lange naam",
                            range: "50 km",
                            price: "€1.000 / dag",
                            price2: "€100 / uur",
                            walkingDistance: "200m.",
                            walkingDuration: "2h",
                            imageUrl:
                                "https://res.cloudinary.com/directlease/image/fetch/t_transp,f_png,dpr_auto/https://images.directlease.be/jato_be/Photo400/POLESTAR/4/2025/5OD-4_315.JPG",
                          ),
                        ]),
                  ),
                  Padding(
                    padding: AppPaddings.small.vertical,
                    child: Text(
                      'With incomplete data',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  Padding(
                    padding: AppPaddings.small.vertical,
                    child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        VehicleCard(
                          name: "Polestar 2",
                          price: "€12",
                          walkingDistance: "2km.",
                          walkingDuration: "10 min",
                          imageUrl:
                              "https://tuskercars.com/app/uploads/2023/02/polestate-2-no-background.png",
                        ),
                        VehicleCard(
                          name: "Polestar 2",
                          price: "€12",
                          tag: "Eerste prijs",
                          imageUrl:
                              "https://res.cloudinary.com/directlease/image/fetch/t_transp,f_png,dpr_auto/https://images.directlease.be/jato_be/Photo400/POLESTAR/4/2025/5OD-4_315.JPG",
                        ),
                        VehicleCard(
                          name: "Een auto met een lange naam",
                          chargePercentage: 100,
                          price: "€1.000 / dag",
                          price2: "€100 / uur",
                          walkingDistance: "200m.",
                          imageUrl:
                              "https://res.cloudinary.com/directlease/image/fetch/t_transp,f_png,dpr_auto/https://images.directlease.be/jato_be/Photo400/POLESTAR/4/2025/5OD-4_315.JPG",
                        ),
                        VehicleCard(
                          name: "Een auto met een lange naam",
                          range: "500 km",
                          price: "€1.000 / dag",
                          price2: "€100 / uur",
                          tag: "Een lange tag",
                          walkingDuration: "10 min",
                          imageUrl:
                              "https://tuskercars.com/app/uploads/2023/02/polestate-2-no-background.png",
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: AppPaddings.small.vertical,
                    child: Text(
                      'Without borders',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  Padding(
                    padding: AppPaddings.small.vertical,
                    child: Wrap(
                        spacing: AppSpacings.sm,
                        runSpacing: AppSpacings.md,
                        children: [
                          VehicleCard(
                            name: "Polestar 2",
                            range: "500 km",
                            chargePercentage: 75,
                            price: "€ 18",
                            tag: "Eerste prijs",
                            walkingDistance: "20",
                            walkingDuration: "10 min",
                            imageUrl:
                                "https://res.cloudinary.com/directlease/image/fetch/t_transp,f_png,dpr_auto/https://images.directlease.be/jato_be/Photo400/POLESTAR/4/2025/5OD-4_315.JPG",
                            showBorder: false,
                          ),
                          VehicleCard(
                            name: "Een auto met een lange naam",
                            chargePercentage: 100,
                            price: "€ 1.000",
                            price2: "€100 / uur",
                            walkingDistance: "200m.",
                            walkingDuration: "2h",
                            imageUrl:
                                "https://res.cloudinary.com/directlease/image/fetch/t_transp,f_png,dpr_auto/https://images.directlease.be/jato_be/Photo400/POLESTAR/4/2025/5OD-4_315.JPG",
                            showBorder: false,
                          ),
                          VehicleCard(
                            name: "Een auto met een lange naam",
                            chargePercentage: 100,
                            price: "€ 1.000",
                            price2: "€100 / uur",
                            walkingDistance: "200m.",
                            walkingDuration: "2h",
                            licensePlate: "2-ABC-123",
                            imageUrl:
                                "https://tuskercars.com/app/uploads/2023/02/polestate-2-no-background.png",
                            showBorder: false,
                          ),
                        ]),
                  ),
                  Padding(
                    padding: AppPaddings.small.vertical,
                    child: Text(
                      'With indicator',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  Padding(
                    padding: AppPaddings.small.vertical,
                    child: Wrap(
                        spacing: AppSpacings.sm,
                        runSpacing: AppSpacings.md,
                        children: [
                          VehicleCard(
                            name: "Polestar 2",
                            range: "500 km",
                            chargePercentage: 75,
                            price: "€ 18",
                            tag: "Eerste prijs",
                            walkingDistance: "20",
                            walkingDuration: "10 min",
                            imageUrl:
                                "https://res.cloudinary.com/directlease/image/fetch/t_transp,f_png,dpr_auto/https://images.directlease.be/jato_be/Photo400/POLESTAR/4/2025/5OD-4_315.JPG",
                          ),
                          VehicleCard(
                            name: "Een auto met een lange naam",
                            chargePercentage: 100,
                            price: "€ 1.000",
                            price2: "€100 / uur",
                            walkingDistance: "200m.",
                            walkingDuration: "2h",
                            imageUrl:
                                "https://res.cloudinary.com/directlease/image/fetch/t_transp,f_png,dpr_auto/https://images.directlease.be/jato_be/Photo400/POLESTAR/4/2025/5OD-4_315.JPG",
                          ),
                          VehicleCard(
                            name: "Een auto met een lange naam",
                            chargePercentage: 100,
                            price: "€ 1.000",
                            price2: "€100 / uur",
                            walkingDistance: "200m.",
                            walkingDuration: "2h",
                            licensePlate: "2-ABC-123",
                            imageUrl:
                                "https://tuskercars.com/app/uploads/2023/02/polestate-2-no-background.png",
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
