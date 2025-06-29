import 'package:batt_ds/atoms/atoms.dart';
import 'package:batt_ds/organisms/appbars/app_bars.dart';
import 'package:batt_ds/theme/gradient_theme.dart';
import 'package:flutter/material.dart';

final class AppBarPage extends StatefulWidget {
  const AppBarPage({super.key});

  @override
  State<AppBarPage> createState() => _AppBarPageState();
}

class _AppBarPageState extends State<AppBarPage> {
  int appBarType = 0;
  @override
  Widget build(BuildContext context) {
    AppBar appbar = appBarType == 0
        ? buildActiveAppBar(context, title: "Active app bar")
        : appBarType == 1
            ? buildDefaultAppBar(context, title: "Default app bar")
            : buildTransparentAppBar(context,
                title: "Transparent app bar",
                contentColor: Theme.of(context).colorScheme.onSurface);

    return Scaffold(
      appBar: appbar,
      extendBodyBehindAppBar: true,
      body: Expanded(
        child: Container(
          decoration: BoxDecoration(
              gradient: GradientTheme.standard().lightBlueBackgroundGradient),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              spacing: AppSpacings.md,
              children: [
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      appBarType = 0;
                    });
                  },
                  child: Text("Active app bar"),
                ),
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      appBarType = 1;
                    });
                  },
                  child: Text("Default app bar"),
                ),
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      appBarType = 2;
                    });
                  },
                  child: Text("Transparent app bar"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
