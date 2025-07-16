import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

class SortOptioncardPage extends StatelessWidget {
  const SortOptioncardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 800),
            child: SingleChildScrollView(
              padding: AppPaddings.medium.horizontal,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: AppPaddings.small.vertical,
                    child: Text(
                      'Sort option cards',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                  Padding(
                    padding: AppPaddings.small.vertical,
                    child: Text(
                      'Selected',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  Padding(
                    padding: AppPaddings.small.vertical,
                    child: Wrap(
                        spacing: AppSpacings.sm,
                        runSpacing: AppSpacings.md,
                        children: [
                          SortOptionCard(
                            title: "Aangeraden",
                            icon: Icons.device_hub_rounded,
                            isSelected: true,
                            onTap: () => {},
                          ),
                          SortOptionCard(
                            title: "Bereik",
                            icon: Icons.route,
                            isSelected: true,
                            onTap: () => {},
                          ),
                          SortOptionCard(
                            title: "Afstand",
                            icon: Icons.message,
                            isSelected: true,
                            onTap: () => {},
                          ),
                        ]),
                  ),
                  Padding(
                    padding: AppPaddings.small.vertical,
                    child: Text(
                      'Not selected',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  Padding(
                    padding: AppPaddings.small.vertical,
                    child: Wrap(
                        spacing: AppSpacings.sm,
                        runSpacing: AppSpacings.md,
                        children: [
                          SortOptionCard(
                            title: "Aangeraden",
                            icon: Icons.device_hub_rounded,
                            isSelected: false,
                            onTap: () => {},
                          ),
                          SortOptionCard(
                            title: "Bereik",
                            icon: Icons.route,
                            isSelected: false,
                            onTap: () => {},
                          ),
                          SortOptionCard(
                            title: "Afstand",
                            icon: Icons.message,
                            isSelected: false,
                            onTap: () => {},
                          ),
                        ]),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
