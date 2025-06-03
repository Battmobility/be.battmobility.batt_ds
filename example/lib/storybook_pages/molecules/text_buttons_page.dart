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
                            InvertedMonochromeSimpleTextButton(
                              label: "XXLarge button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xxLarge,
                            ),
                            InvertedMonochromeSimpleTextButton(
                              label: "XLarge button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xLarge,
                            ),
                            InvertedMonochromeSimpleTextButton(
                              label: "Large button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.large,
                            ),
                            InvertedMonochromeSimpleTextButton(
                              label: "Regular button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.medium,
                            ),
                            InvertedMonochromeSimpleTextButton(
                              label: "Small button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.small,
                            ),
                            InvertedMonochromeSimpleTextButton(
                              label: "XSmall button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xSmall,
                            ),
                          ]),
                      Wrap(
                          spacing: AppSpacings.sm,
                          runSpacing: AppSpacings.md,
                          children: [
                            InvertedMonochromeSimpleTextButton(
                              underline: true,
                              label: "XXLarge button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xxLarge,
                            ),
                            InvertedMonochromeSimpleTextButton(
                              underline: true,
                              label: "XLarge button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xLarge,
                            ),
                            InvertedMonochromeSimpleTextButton(
                              underline: true,
                              label: "Large button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.large,
                            ),
                            InvertedMonochromeSimpleTextButton(
                              underline: true,
                              label: "Regular button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.medium,
                            ),
                            InvertedMonochromeSimpleTextButton(
                              underline: true,
                              label: "Small button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.small,
                            ),
                            InvertedMonochromeSimpleTextButton(
                              underline: true,
                              label: "XSmall button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xSmall,
                            ),
                          ]),
                      Wrap(children: [
                        MonochromeSimpleTextButton(
                          underline: true,
                          label: "XXLarge button",
                          onPressed: () => {},
                          buttonSize: BattButtonSize.xxLarge,
                        ),
                        MonochromeSimpleTextButton(
                          underline: true,
                          label: "XLarge button",
                          onPressed: () => {},
                          buttonSize: BattButtonSize.xLarge,
                        ),
                        MonochromeSimpleTextButton(
                          underline: true,
                          label: "Large button",
                          onPressed: () => {},
                          buttonSize: BattButtonSize.large,
                        ),
                        MonochromeSimpleTextButton(
                          underline: true,
                          label: "Regular button",
                          onPressed: () => {},
                          buttonSize: BattButtonSize.medium,
                        ),
                        MonochromeSimpleTextButton(
                          underline: true,
                          label: "Small button",
                          onPressed: () => {},
                          buttonSize: BattButtonSize.small,
                        ),
                        MonochromeSimpleTextButton(
                          underline: true,
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
                      Wrap(
                          spacing: AppSpacings.sm,
                          runSpacing: AppSpacings.md,
                          children: [
                            OrangeSimpleTextButton(
                              underline: true,
                              label: "XXLarge button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xxLarge,
                            ),
                            OrangeSimpleTextButton(
                              underline: true,
                              label: "XLarge button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.xLarge,
                            ),
                            OrangeSimpleTextButton(
                              underline: true,
                              label: "Large button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.large,
                            ),
                            OrangeSimpleTextButton(
                              underline: true,
                              label: "Regular button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.medium,
                            ),
                            OrangeSimpleTextButton(
                              underline: true,
                              label: "Small button",
                              onPressed: () => {},
                              buttonSize: BattButtonSize.small,
                            ),
                            OrangeSimpleTextButton(
                              underline: true,
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
