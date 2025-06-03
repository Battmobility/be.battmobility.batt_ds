import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

class BattomnavigationPage extends StatelessWidget {
  const BattomnavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 800),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: AppPaddings.small.vertical,
                    child: Text(
                      'Bottom navigation bar',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                  BattomNavigationBar(
                    items: [
                      BattomNavigationBarItem(
                          icon: Icons.car_crash, label: "Auto's"),
                      BattomNavigationBarItem(
                          icon: Icons.calendar_month, label: "Boekingen"),
                      BattomNavigationBarItem(
                          icon: Icons.person, label: "Profiel")
                    ],
                    onTap: (p0) => {},
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
