import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

class ProgressPage extends StatelessWidget {
  const ProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: AppPaddings.medium.horizontal,
          child: SingleChildScrollView(
            padding: AppPaddings.medium.trailing,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Text(
                    'Progress circles',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                Padding(
                  padding: AppPaddings.small.all,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        ProgressCircle(step: 1, totalSteps: 3),
                        ProgressCircle(step: 2, totalSteps: 3),
                        ProgressCircle(step: 3, totalSteps: 3),
                      ]),
                ),
                Padding(
                  padding: AppPaddings.small.all,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        ProgressCircle(step: 0, totalSteps: 7),
                        ProgressCircle(step: 1, totalSteps: 7),
                        ProgressCircle(step: 2, totalSteps: 7),
                        ProgressCircle(step: 3, totalSteps: 7),
                        ProgressCircle(step: 4, totalSteps: 7),
                        ProgressCircle(step: 5, totalSteps: 7),
                        ProgressCircle(step: 6, totalSteps: 7),
                        ProgressCircle(step: 7, totalSteps: 7),
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
