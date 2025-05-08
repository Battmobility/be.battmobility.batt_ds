import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

class LocationCardsPage extends StatelessWidget {
  const LocationCardsPage({super.key});

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
                      'Location cards',
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
                            width: constraints.maxWidth * 0.5,
                            height: constraints.maxWidth * 0.125,
                            child: LocationCard(
                              description: "Afhaallocatie",
                              address: "Miriam Makebaplein 4",
                              showEdit: true,
                            ),
                          ),
                          SizedBox(
                            width: constraints.maxWidth * 0.5,
                            height: constraints.maxWidth * 0.125,
                            child: LocationCard(
                              description: "Afzetlocatie",
                              address:
                                  "Miriam Makebaplein 4, maar met nog een beschrijving erbij",
                              showEdit: true,
                            ),
                          ),
                          SizedBox(
                            width: constraints.maxWidth * 0.5,
                            height: constraints.maxWidth * 0.125,
                            child: LocationCard(
                              description: "Afzetlocatie",
                              address:
                                  "Miriam Makebaplein 4, maar met nog een beschrijving die zeker gaat overflowen erbij",
                              showEdit: true,
                            ),
                          ),
                        ]),
                  ),
                  Padding(
                    padding: AppPaddings.small.vertical,
                    child: Text(
                      'Without edit',
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
                            height: constraints.maxWidth * 0.125,
                            child: LocationCard(
                              description: "Afhaallocatie",
                              address: "Miriam Makebaplein 4",
                              showEdit: false,
                            ),
                          ),
                          SizedBox(
                            width: constraints.maxWidth * 0.5,
                            height: constraints.maxWidth * 0.125,
                            child: LocationCard(
                              description: "Afzetlocatie",
                              address:
                                  "Miriam Makebaplein 4, maar met nog een beschrijving erbij",
                              showEdit: false,
                            ),
                          ),
                          SizedBox(
                            width: constraints.maxWidth * 0.5,
                            height: constraints.maxWidth * 0.125,
                            child: LocationCard(
                              description: "Afzetlocatie",
                              address:
                                  "Miriam Makebaplein 4, maar met nog een beschrijving die zeker gaat overflowen erbij",
                              showEdit: true,
                            ),
                          )
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
