import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

class CtaButtonsPage extends StatelessWidget {
  const CtaButtonsPage({super.key});

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
                      'CTA buttons',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                  Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: AppPaddings.small.vertical,
                          child: Text(
                            'Solid',
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                        ),
                        Wrap(
                          spacing: AppSpacings.sm,
                          runSpacing: AppSpacings.md,
                          children: [
                            SolidCtaButton(
                              label: "Plan je rit",
                              onPressed: () => {},
                            ),
                            SolidCtaButton(
                              label: "Plan je rit",
                              onPressed: () => {},
                              width: 200,
                            ),
                            SolidCtaButton(
                              label: "Plan je rit",
                              onPressed: () => {},
                              height: 98,
                            ),
                            SolidCtaButton(
                              label: "Plan je rit",
                              onPressed: () => {},
                              width: 200,
                              height: 98,
                            ),
                          ],
                        ),
                      ]
                          .map((e) => Padding(
                                padding: AppPaddings.small.vertical,
                                child: e,
                              ))
                          .toList()),
                  Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: AppPaddings.small.vertical,
                          child: Text(
                            'Solid',
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                        ),
                        Wrap(
                          spacing: AppSpacings.sm,
                          runSpacing: AppSpacings.md,
                          children: [
                            OutlinedCtaButton(
                              label: "Plan je rit",
                              onPressed: () => {},
                            ),
                            OutlinedCtaButton(
                              label: "Plan je rit",
                              onPressed: () => {},
                              width: 200,
                            ),
                            OutlinedCtaButton(
                              label: "Plan je rit",
                              onPressed: () => {},
                              height: 98,
                            ),
                            OutlinedCtaButton(
                              label: "Plan je rit",
                              onPressed: () => {},
                              width: 200,
                              height: 98,
                            ),
                          ],
                        ),
                      ]
                          .map((e) => Padding(
                                padding: AppPaddings.small.vertical,
                                child: e,
                              ))
                          .toList()),
                ]),
          ),
        ),
      ),
    );
  }
}
