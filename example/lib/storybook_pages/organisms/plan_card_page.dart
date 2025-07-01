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
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 800),
              child: SingleChildScrollView(
                child: Column(
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
                        'Without tag',
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
                                title: "Naam gebruiker",
                                icon: Icons.abc,
                                isActive: false,
                              ),
                            ),
                            SizedBox(
                              width: 300,
                              child: PlanCard(
                                title: "Uitzonderlijk lange naam gebruiker",
                                icon: Icons.abc,
                                isActive: false,
                              ),
                            ),
                            SizedBox(
                              width: 300,
                              child: PlanCard(
                                title: "Uitzonderlijk lange naam gebruiker",
                                icon: Icons.abc,
                                isActive: true,
                              ),
                            ),
                            SizedBox(
                              width: 300,
                              child: PlanCard(
                                title: "Uitzonderlijk lange naam gebruiker",
                                icon: Icons.abc,
                                isActive: true,
                              ),
                            ),
                          ]),
                    ),
                    Padding(
                      padding: AppPaddings.small.vertical,
                      child: Text(
                        'With tag',
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
                                title: "Naam gebruiker",
                                icon: Icons.abc,
                                isActive: false,
                                tag: "KONHEF",
                              ),
                            ),
                            SizedBox(
                              width: 300,
                              child: PlanCard(
                                title: "Uitzonderlijk lange naam gebruiker",
                                icon: Icons.abc,
                                isActive: false,
                                tag: "LONG COMPANY NAME",
                              ),
                            ),
                            SizedBox(
                              width: 300,
                              child: PlanCard(
                                title: "Uitzonderlijk lange naam gebruiker",
                                icon: Icons.abc,
                                isActive: true,
                                tag: "KONHEF",
                              ),
                            ),
                            SizedBox(
                              width: 300,
                              child: PlanCard(
                                title: "Uitzonderlijk lange naam gebruiker",
                                icon: Icons.abc,
                                isActive: true,
                                tag: "LONG COMPANY NAME",
                              ),
                            ),
                          ]),
                    ),
                    Padding(
                      padding: AppPaddings.small.vertical,
                      child: Text(
                        'With subtitle',
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
                                title: "Naam gebruiker",
                                icon: Icons.abc,
                                isActive: false,
                                tag: "KONHEF",
                                subtitle: "Managed by KONHEF",
                              ),
                            ),
                            SizedBox(
                              width: 300,
                              child: PlanCard(
                                title: "Uitzonderlijk lange naam gebruiker",
                                icon: Icons.abc,
                                isActive: false,
                                tag: "LONG COMPANY NAME",
                                subtitle: "Managed by LONG COMPANY NAME",
                              ),
                            ),
                            SizedBox(
                              width: 300,
                              child: PlanCard(
                                title: "Uitzonderlijk lange naam gebruiker",
                                icon: Icons.abc,
                                isActive: true,
                                tag: "KONHEF",
                                subtitle: "Managed by LONG COMPANY NAME",
                              ),
                            ),
                            SizedBox(
                              width: 300,
                              child: PlanCard(
                                title: "Uitzonderlijk lange naam gebruiker",
                                icon: Icons.abc,
                                isActive: true,
                                tag: "LONG COMPANY NAME",
                                subtitle: "Managed by LONG COMPANY NAME",
                              ),
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
