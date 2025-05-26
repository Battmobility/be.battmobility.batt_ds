import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

class TextButtonsPage extends StatelessWidget {
  const TextButtonsPage({super.key});

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
                    'Simple buttons',
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
                            DefaultSimpleTextButton(
                              label: "XXLarge button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xxLarge,
                            ),
                            DefaultSimpleTextButton(
                              label: "XLarge button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xLarge,
                            ),
                            DefaultSimpleTextButton(
                              label: "Large button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.large,
                            ),
                            DefaultSimpleTextButton(
                              label: "Regular button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.medium,
                            ),
                            DefaultSimpleTextButton(
                              label: "Small button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.small,
                            ),
                            DefaultSimpleTextButton(
                              label: "XSmall button",
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
                    'Orange',
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
                            OrangeSimpleTextButton(
                              label: "XXLarge button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xxLarge,
                            ),
                            OrangeSimpleTextButton(
                              label: "XLarge button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xLarge,
                            ),
                            OrangeSimpleTextButton(
                              label: "Large button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.large,
                            ),
                            OrangeSimpleTextButton(
                              label: "Regular button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.medium,
                            ),
                            OrangeSimpleTextButton(
                              label: "Small button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.small,
                            ),
                            OrangeSimpleTextButton(
                              label: "XSmall button",
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
