import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

final class ListSection extends StatelessWidget {
  final Widget icon;
  final String title;
  final List<Widget> items;
  final Widget? accessory;
  final EdgeInsetsGeometry? padding;

  const ListSection(
      {super.key,
      required this.icon,
      required this.title,
      required this.items,
      this.accessory,
      this.padding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? AppPaddings.medium.all,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: AppPaddings.medium.horizontal,
            child: icon,
          ),
          const SizedBox(width: AppSpacings.sm),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(title,
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontWeight: FontWeight.w700)),
                const SizedBox(height: AppSpacings.sm),
                ...items.map((item) => Padding(
                      padding: AppPaddings.small.vertical,
                      child: item,
                    )),
              ],
            ),
          ),
          if (accessory != null) ...[accessory!]
        ],
      ),
    );
  }
}
