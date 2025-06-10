import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

final class NotificationCard extends StatelessWidget {
  final Widget content;
  final List<Widget> actions;

  const NotificationCard({
    super.key,
    required this.content,
    required this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return NotificationGradientContainer(
      cornerradius: CornerRadii.m,
      child: Padding(
        padding: AppPaddings.medium.all.add(AppPaddings.small.horizontal),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            content,
            const SizedBox(height: AppSpacings.md),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: actions,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
