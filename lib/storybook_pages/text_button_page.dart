import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

class TextButtonPage extends StatelessWidget {
  const TextButtonPage({super.key});

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
                    'Buttons',
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
                          children: [
                            SolidTextButton(
                              label: "XXLarge button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xxLarge,
                            ),
                            SolidTextButton(
                              label: "XLarge button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xLarge,
                            ),
                            SolidTextButton(
                              label: "Large button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.large,
                            ),
                            SolidTextButton(
                              label: "Regular button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.medium,
                            ),
                          ]),
                      Wrap(
                          spacing: AppSpacings.sm,
                          runSpacing: AppSpacings.md,
                          children: [
                            SolidTextButton(
                              label: "XXLarge with leading icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xxLarge,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                            ),
                            SolidTextButton(
                              label: "XLarge with leading icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xLarge,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                            ),
                            SolidTextButton(
                              label: "Large with leading icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.large,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                            ),
                            SolidTextButton(
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
                            SolidTextButton(
                              label: "XXLarge with trailing icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xxLarge,
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                            SolidTextButton(
                              label: "XLarge with trailing icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xLarge,
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                            SolidTextButton(
                              label: "Large with trailing icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.large,
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                            SolidTextButton(
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
                            SolidTextButton(
                              label: "XXLarge with both",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xxLarge,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                            SolidTextButton(
                              label: "XLarge with both",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xLarge,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                            SolidTextButton(
                              label: "Large with both",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.large,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                            SolidTextButton(
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
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Text(
                    'Outlined',
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
                            OutlinedTextButton(
                              label: "XXLarge button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xxLarge,
                            ),
                            OutlinedTextButton(
                              label: "XLarge button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xLarge,
                            ),
                            OutlinedTextButton(
                              label: "Large button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.large,
                            ),
                            OutlinedTextButton(
                              label: "Regular button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.medium,
                            ),
                          ]),
                      Wrap(
                          spacing: AppSpacings.sm,
                          runSpacing: AppSpacings.md,
                          children: [
                            OutlinedTextButton(
                              label: "XXLarge with leading icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xxLarge,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                            ),
                            OutlinedTextButton(
                              label: "XLarge with leading icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xLarge,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                            ),
                            OutlinedTextButton(
                              label: "Large with leading icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.large,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                            ),
                            OutlinedTextButton(
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
                            OutlinedTextButton(
                              label: "XXLarge with trailing icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xxLarge,
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                            OutlinedTextButton(
                              label: "XLarge with trailing icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xLarge,
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                            OutlinedTextButton(
                              label: "Large with trailing icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.large,
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                            OutlinedTextButton(
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
                            OutlinedTextButton(
                              label: "XXLarge with both",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xxLarge,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                            OutlinedTextButton(
                              label: "XLarge with both",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xLarge,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                            OutlinedTextButton(
                              label: "Large with both",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.large,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                            OutlinedTextButton(
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
                    'Outlined orange',
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
                            OrangeOutlinedBattButton(
                              label: "XXLarge button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xxLarge,
                            ),
                            OrangeOutlinedBattButton(
                              label: "XLarge button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xLarge,
                            ),
                            OrangeOutlinedBattButton(
                              label: "Large button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.large,
                            ),
                            OrangeOutlinedBattButton(
                              label: "Regular button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.medium,
                            ),
                          ]),
                      Wrap(
                          alignment: WrapAlignment.start,
                          spacing: AppSpacings.sm,
                          runSpacing: AppSpacings.md,
                          children: [
                            OrangeOutlinedBattButton(
                              label: "XXLarge with leading icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xxLarge,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                            ),
                            OrangeOutlinedBattButton(
                              label: "XLarge with leading icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xLarge,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                            ),
                            OrangeOutlinedBattButton(
                              label: "Large with leading icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.large,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                            ),
                            OrangeOutlinedBattButton(
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
                            OrangeOutlinedBattButton(
                              label: "XXLarge with trailing icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xxLarge,
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                            OrangeOutlinedBattButton(
                              label: "XLarge with trailing icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xLarge,
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                            OrangeOutlinedBattButton(
                              label: "Large with trailing icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.large,
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                            OrangeOutlinedBattButton(
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
                            OrangeOutlinedBattButton(
                              label: "XXLarge with both",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xxLarge,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                            OrangeOutlinedBattButton(
                              label: "XLarge with both",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xLarge,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                            OrangeOutlinedBattButton(
                              label: "Large with both",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.large,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                            OrangeOutlinedBattButton(
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
                    'Outlined purple',
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
                            PurpleOutlinedTextButton(
                              label: "XXLarge button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xxLarge,
                            ),
                            PurpleOutlinedTextButton(
                              label: "XLarge button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xLarge,
                            ),
                            PurpleOutlinedTextButton(
                              label: "Large button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.large,
                            ),
                            PurpleOutlinedTextButton(
                              label: "Regular button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.medium,
                            ),
                          ]),
                      Wrap(
                          spacing: AppSpacings.sm,
                          runSpacing: AppSpacings.md,
                          children: [
                            PurpleOutlinedTextButton(
                              label: "XXLarge with leading icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xxLarge,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                            ),
                            PurpleOutlinedTextButton(
                              label: "XLarge with leading icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xLarge,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                            ),
                            PurpleOutlinedTextButton(
                              label: "Large with leading icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.large,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                            ),
                            PurpleOutlinedTextButton(
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
                            PurpleOutlinedTextButton(
                              label: "XXLarge with trailing icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xxLarge,
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                            PurpleOutlinedTextButton(
                              label: "XLarge with trailing icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xLarge,
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                            PurpleOutlinedTextButton(
                              label: "Large with trailing icon",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.large,
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                            PurpleOutlinedTextButton(
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
                            PurpleOutlinedTextButton(
                              label: "XXLarge with both",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xxLarge,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                            PurpleOutlinedTextButton(
                              label: "XLarge with both",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xLarge,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                            PurpleOutlinedTextButton(
                              label: "Large with both",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.large,
                              leading: (color) =>
                                  Icon(Icons.car_crash_outlined, color: color),
                              trailing: (color) =>
                                  Icon(Icons.car_repair_outlined, color: color),
                            ),
                            PurpleOutlinedTextButton(
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
                        .toList())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
