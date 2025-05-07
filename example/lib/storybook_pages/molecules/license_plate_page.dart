import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

class LicensePlatePage extends StatelessWidget {
  const LicensePlatePage({super.key});

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
                    'License plate',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: const LicensePlate("2-ABC-323",
                      size: LicensePlateSize.small),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: const LicensePlate("2-ABC-323",
                      size: LicensePlateSize.medium),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: const LicensePlate("2-ABC-323",
                      size: LicensePlateSize.large),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
