import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: AppPaddings.medium.horizontal,
          child: Column(
            children: [
              Padding(
                padding: AppPaddings.small.vertical,
                child: Text(
                  'Batt DS',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        BatteryIcon(chargePercentage: 100),
                        Padding(
                          padding: AppPaddings.small.vertical,
                          child: Wrap(
                              spacing: AppSpacings.sm,
                              runSpacing: AppSpacings.md,
                              children: [
                                Container(
                                    width: 300,
                                    height: 50,
                                    decoration:
                                        GradientBorderDecoration.standard()),
                              ]),
                        ),
                        BattChipPrimary(
                          label: "Enabled medium",
                          onSelected: (_) => {},
                          chipSize: BattChipSize.medium,
                          state: BattChipState.enabled,
                        ),
                        BattIconTextButton(
                          label: "XXLarge button",
                          icon: Icons.car_crash,
                          onPressed: () => {},
                          buttonSize: BattButtonSize.xxLarge,
                        ),
                        DefaultSimpleTextButton(
                          label: "Large button",
                          onPressed: () => {},
                          buttonSize: BattButtonSize.large,
                        ),
                        SizedBox(
                          width: 360,
                          height: 120,
                          child: VehicleCard(
                            name: "Polestar 2",
                            chargePercentage: 75,
                            price: "€ 18",
                            tag: "Eerste prijs",
                            walkingDistance: "20",
                            walkingDuration: "10 min",
                            displayPriority: DisplayPriority.charge,
                            imageUrl:
                                "https://tuskercars.com/app/uploads/2023/02/polestate-2-no-background.png",
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Hint text',
                            prefixIcon: const Icon(Icons.search),
                            suffixIcon: IconButton(
                              icon: const Icon(Icons.clear),
                              onPressed: () {},
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                        DefaultSolidTextButton(
                          label: "Small button",
                          onPressed: () => {},
                          buttonSize: BattButtonSize.small,
                        ),
                        Padding(
                          padding: AppPaddings.small.vertical,
                          child: const LicensePlate("2-ABC-323",
                              size: LicensePlateSize.medium),
                        ),
                        MapMarker(
                          progress: 0.66,
                        ),
                        DefaultOutlinedTextButton(
                          label: "Large button",
                          onPressed: () => {},
                          buttonSize: BattButtonSize.large,
                        ),
                        SizedBox(
                          width: 260,
                          height: 100,
                          child: LocationCard(
                            description: "Afhaallocatie",
                            address: "Miriam Makebaplein 4",
                            showEdit: true,
                          ),
                        ),
                      ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
