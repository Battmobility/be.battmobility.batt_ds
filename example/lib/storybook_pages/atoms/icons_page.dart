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
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Text(
                    'Small',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                Wrap(
                  children: [
                    Padding(
                        padding: AppPaddings.small.all,
                        child: BattIcon(
                          battIcon: BattIcons.car,
                          size: BattIconSize.small,
                        )),
                    Padding(
                        padding: AppPaddings.small.all,
                        child: BattIcon(
                          battIcon: BattIcons.walk,
                          size: BattIconSize.small,
                        )),
                    Padding(
                        padding: AppPaddings.small.all,
                        child: BattIcon(
                          battIcon: BattIcons.range,
                          size: BattIconSize.small,
                        )),
                  ],
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Text(
                    'Medium',
                    style: Theme.of(context).textTheme.headlineMedium,
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
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Text(
                    'Large',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                Wrap(
                  children: [
                    Padding(
                        padding: AppPaddings.small.all,
                        child: BattIcon(
                          battIcon: BattIcons.car,
                          size: BattIconSize.large,
                        )),
                    Padding(
                        padding: AppPaddings.small.all,
                        child: BattIcon(
                          battIcon: BattIcons.walk,
                          size: BattIconSize.large,
                        )),
                    Padding(
                        padding: AppPaddings.small.all,
                        child: BattIcon(
                          battIcon: BattIcons.range,
                          size: BattIconSize.large,
                        )),
                    Padding(
                        padding: AppPaddings.small.all,
                        child: BattIcon(
                          battIcon: BattIcons.range,
                          size: BattIconSize.large,
                        )),
                  ],
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Text(
                    'XLarge',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                Wrap(
                  children: [
                    Padding(
                        padding: AppPaddings.small.all,
                        child: BattIcon(
                          battIcon: BattIcons.car,
                          size: BattIconSize.xlarge,
                        )),
                    Padding(
                        padding: AppPaddings.small.all,
                        child: BattIcon(
                          battIcon: BattIcons.walk,
                          size: BattIconSize.xlarge,
                        )),
                    Padding(
                        padding: AppPaddings.small.all,
                        child: BattIcon(
                          battIcon: BattIcons.range,
                          size: BattIconSize.xlarge,
                        )),
                    Padding(
                        padding: AppPaddings.small.all,
                        child: BattIcon(
                          battIcon: BattIcons.range,
                          size: BattIconSize.xlarge,
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
