import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

class BatteryIconsPage extends StatelessWidget {
  const BatteryIconsPage({super.key});

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
                    'Battery icons',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        BatteryIcon(chargePercentage: 100),
                        BatteryIcon(chargePercentage: 90),
                        BatteryIcon(chargePercentage: 80),
                        BatteryIcon(chargePercentage: 70),
                        BatteryIcon(chargePercentage: 60),
                        BatteryIcon(chargePercentage: 50),
                        BatteryIcon(chargePercentage: 40),
                        BatteryIcon(chargePercentage: 30),
                        BatteryIcon(chargePercentage: 20),
                        BatteryIcon(chargePercentage: 10),
                        BatteryIcon(chargePercentage: 0),
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
