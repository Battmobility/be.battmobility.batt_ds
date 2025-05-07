import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

class SolidButtonsPage extends StatelessWidget {
  const SolidButtonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: AppPaddings.medium.horizontal,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Text(
                    'Solid buttons',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Text(
                    'Solid',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Wrap(
                          spacing: AppSpacings.sm,
                          runSpacing: AppSpacings.md,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            DefaultSolidTextButton(
                              label: "XXLarge button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xxLarge,
                            ),
                            DefaultSolidTextButton(
                              label: "XLarge button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xLarge,
                            ),
                            DefaultSolidTextButton(
                              label: "Large button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.large,
                            ),
                            DefaultSolidTextButton(
                              label: "Regular button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.medium,
                            ),
                            DefaultSolidTextButton(
                              label: "Small button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.small,
                            ),
                            DefaultSolidTextButton(
                              label: "XSmall button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xSmall,
                            ),
                          ]),
                      Wrap(
                          spacing: AppSpacings.sm,
                          runSpacing: AppSpacings.md,
                          children: [
                            DefaultSolidTextButton(
                              label: "XXLarge with leading icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xxLarge,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                            ),
                            DefaultSolidTextButton(
                              label: "XLarge with leading icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xLarge,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                            ),
                            DefaultSolidTextButton(
                              label: "Large with leading icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.large,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                            ),
                            DefaultSolidTextButton(
                              label: "Regular with leading icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.medium,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                            ),
                            DefaultSolidTextButton(
                              label: "Small with leading icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.small,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                            ),
                            DefaultSolidTextButton(
                              label: "XSmall with leading icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xSmall,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                            ),
                          ]),
                      Wrap(
                          spacing: AppSpacings.sm,
                          runSpacing: AppSpacings.md,
                          children: [
                            DefaultSolidTextButton(
                              label: "XXLarge with trailing icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xxLarge,
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                            DefaultSolidTextButton(
                              label: "XLarge with trailing icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xLarge,
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                            DefaultSolidTextButton(
                              label: "Large with trailing icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.large,
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                            DefaultSolidTextButton(
                              label: "Regular with trailing icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.medium,
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                            DefaultSolidTextButton(
                              label: "Small with trailing icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.small,
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                            DefaultSolidTextButton(
                              label: "XSmall with trailing icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xSmall,
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                          ]),
                      Wrap(
                          spacing: AppSpacings.sm,
                          runSpacing: AppSpacings.md,
                          children: [
                            DefaultSolidTextButton(
                              label: "XXLarge with both",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xxLarge,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                            DefaultSolidTextButton(
                              label: "XLarge with both",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xLarge,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                            DefaultSolidTextButton(
                              label: "Large with both",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.large,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                            DefaultSolidTextButton(
                              label: "Regular with both",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.medium,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                            DefaultSolidTextButton(
                              label: "Regular with both",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.medium,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                            DefaultSolidTextButton(
                              label: "XSmall with both",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.medium,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                          ]),
                    ]
                        .map((e) => Padding(
                              padding: AppPaddings.small.vertical,
                              child: e,
                            ))
                        .toList()),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Text(
                    'Solid orange',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Wrap(
                          spacing: AppSpacings.sm,
                          runSpacing: AppSpacings.md,
                          children: [
                            OrangeSolidTextButton(
                              label: "XXLarge button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xxLarge,
                            ),
                            OrangeSolidTextButton(
                              label: "XLarge button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xLarge,
                            ),
                            OrangeSolidTextButton(
                              label: "Large button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.large,
                            ),
                            OrangeSolidTextButton(
                              label: "Regular button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.medium,
                            ),
                          ]),
                      Wrap(
                          spacing: AppSpacings.sm,
                          runSpacing: AppSpacings.md,
                          children: [
                            OrangeSolidTextButton(
                              label: "XXLarge with leading icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xxLarge,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                            ),
                            OrangeSolidTextButton(
                              label: "XLarge with leading icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xLarge,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                            ),
                            OrangeSolidTextButton(
                              label: "Large with leading icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.large,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                            ),
                            OrangeSolidTextButton(
                              label: "Regular with leading icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.medium,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                            ),
                          ]),
                      Wrap(
                          spacing: AppSpacings.sm,
                          runSpacing: AppSpacings.md,
                          children: [
                            OrangeSolidTextButton(
                              label: "XXLarge with trailing icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xxLarge,
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                            OrangeSolidTextButton(
                              label: "XLarge with trailing icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xLarge,
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                            OrangeSolidTextButton(
                              label: "Large with trailing icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.large,
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                            OrangeSolidTextButton(
                              label: "Regular with trailing icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.medium,
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                          ]),
                      Wrap(
                          spacing: AppSpacings.sm,
                          runSpacing: AppSpacings.md,
                          children: [
                            OrangeSolidTextButton(
                              label: "XXLarge with both",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xxLarge,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                            OrangeSolidTextButton(
                              label: "XLarge with both",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xLarge,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                            OrangeSolidTextButton(
                              label: "Large with both",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.large,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                            OrangeSolidTextButton(
                              label: "Regular with both",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.medium,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                          ]),
                    ]
                        .map((e) => Padding(
                              padding: AppPaddings.small.vertical,
                              child: e,
                            ))
                        .toList()),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Text(
                    'Solid purple',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Wrap(
                          spacing: AppSpacings.sm,
                          runSpacing: AppSpacings.md,
                          children: [
                            PurpleSolidTextButton(
                              label: "XXLarge button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xxLarge,
                            ),
                            PurpleSolidTextButton(
                              label: "XLarge button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xLarge,
                            ),
                            PurpleSolidTextButton(
                              label: "Large button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.large,
                            ),
                            PurpleSolidTextButton(
                              label: "Regular button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.medium,
                            ),
                          ]),
                      Wrap(
                          spacing: AppSpacings.sm,
                          runSpacing: AppSpacings.md,
                          children: [
                            PurpleSolidTextButton(
                              label: "XXLarge with leading icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xxLarge,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                            ),
                            PurpleSolidTextButton(
                              label: "XLarge with leading icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xLarge,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                            ),
                            PurpleSolidTextButton(
                              label: "Large with leading icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.large,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                            ),
                            PurpleSolidTextButton(
                              label: "Regular with leading icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.medium,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                            ),
                          ]),
                      Wrap(
                          spacing: AppSpacings.sm,
                          runSpacing: AppSpacings.md,
                          children: [
                            PurpleSolidTextButton(
                              label: "XXLarge with trailing icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xxLarge,
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                            PurpleSolidTextButton(
                              label: "XLarge with trailing icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xLarge,
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                            PurpleSolidTextButton(
                              label: "Large with trailing icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.large,
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                            PurpleSolidTextButton(
                              label: "Regular with trailing icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.medium,
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                          ]),
                      Wrap(
                          spacing: AppSpacings.sm,
                          runSpacing: AppSpacings.md,
                          children: [
                            PurpleSolidTextButton(
                              label: "XXLarge with both",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xxLarge,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                            PurpleSolidTextButton(
                              label: "XLarge with both",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xLarge,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                            PurpleSolidTextButton(
                              label: "Large with both",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.large,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                            PurpleSolidTextButton(
                              label: "Regular with both",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.medium,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                          ]),
                    ]
                        .map((e) => Padding(
                              padding: AppPaddings.small.vertical,
                              child: e,
                            ))
                        .toList()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
