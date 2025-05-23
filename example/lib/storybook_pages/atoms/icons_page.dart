import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

class IconsPage extends StatelessWidget {
  const IconsPage({super.key});

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
                    'Icons',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ),
                Wrap(
                  children: [
                    Padding(
                        padding: AppPaddings.small.all,
                        child: BattIcon(
                          battIcon: BattIcons.car,
                        )),
                    Padding(
                        padding: AppPaddings.small.all,
                        child: BattIcon(
                          battIcon: BattIcons.walk,
                        )),
                    Padding(
                        padding: AppPaddings.small.all,
                        child: BattIcon(
                          battIcon: BattIcons.range,
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
