import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

class PlanCardsPage extends StatelessWidget {
  const PlanCardsPage({super.key});

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
                      'Plan cards',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                  Padding(
                    padding: AppPaddings.small.vertical,
                    child: Text(
                      'With edit',
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
                            width: 300,
                            child: PlanCard(
                              title: "Jouw plan",
                              planName: "BattFun",
                              cta: "Bekijk details en beheer je plan",
                            ),
                          ),
                          SizedBox(
                            width: 300,
                            child: PlanCard(
                              title: "Jouw plan",
                              planName: "BattFun",
                              cta:
                                  "Bekijk details en beheer je plan maar wat als deze beschrijving nu eens veel langer was",
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
