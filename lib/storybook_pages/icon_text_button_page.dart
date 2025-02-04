import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

class IconTextButtonPage extends StatelessWidget {
  const IconTextButtonPage({super.key});

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
                    'Icon text buttons',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Text(
                    'Default',
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
                            BattIconTextButton(
                              label: "XXLarge button",
                              icon: Icons.car_crash,
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xxLarge,
                            ),
                            BattIconTextButton(
                              label: "XLarge button",
                              icon: Icons.car_crash,
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xLarge,
                            ),
                            BattIconTextButton(
                              label: "Large button",
                              icon: Icons.car_crash,
                              onPressed: () => {},
                              buttonSize: BattButtonSize.large,
                            ),
                            BattIconTextButton(
                              label: "Regular button",
                              icon: Icons.car_crash,
                              onPressed: () => {},
                              buttonSize: BattButtonSize.medium,
                            ),
                            BattIconTextButton(
                              label: "Regular button",
                              icon: Icons.car_crash,
                              onPressed: () => {},
                              buttonSize: BattButtonSize.medium,
                            ),
                            BattIconTextButton(
                              label: "Small button",
                              icon: Icons.car_crash,
                              onPressed: () => {},
                              buttonSize: BattButtonSize.small,
                            ),
                            BattIconTextButton(
                              label: "XSmall button",
                              icon: Icons.car_crash,
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xSmall,
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
                    'Grey',
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
                            GreyIconTextButton(
                              label: "XXLarge button",
                              icon: Icons.car_crash,
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xxLarge,
                            ),
                            GreyIconTextButton(
                              label: "XLarge button",
                              icon: Icons.car_crash,
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xLarge,
                            ),
                            GreyIconTextButton(
                              label: "Large button",
                              icon: Icons.car_crash,
                              onPressed: () => {},
                              buttonSize: BattButtonSize.large,
                            ),
                            GreyIconTextButton(
                              label: "Regular button",
                              icon: Icons.car_crash,
                              onPressed: () => {},
                              buttonSize: BattButtonSize.medium,
                            ),
                            GreyIconTextButton(
                              label: "Regular button",
                              icon: Icons.car_crash,
                              onPressed: () => {},
                              buttonSize: BattButtonSize.medium,
                            ),
                            GreyIconTextButton(
                              label: "Small button",
                              icon: Icons.car_crash,
                              onPressed: () => {},
                              buttonSize: BattButtonSize.small,
                            ),
                            GreyIconTextButton(
                              label: "XSmall button",
                              icon: Icons.car_crash,
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xSmall,
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
