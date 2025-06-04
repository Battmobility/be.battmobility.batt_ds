import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

final class BattListTile extends StatelessWidget {
  final String title;
  final String? subtitle;
  final BattIcon leading;
  final Widget? trailing;
  final Function? onTap;

  const BattListTile({
    super.key,
    required this.title,
    this.subtitle,
    required this.leading,
    this.trailing,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.medium.all,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: AppSpacings.sm,
        children: [
          leading,
          GestureDetector(
            onTap: () => onTap != null ? onTap!() : null,
            child: Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: AppSpacings.xs,
                children: [
                  const SizedBox(height: AppSpacings.xxs),
                  Text(title,
                      style: Theme.of(context).listTileTheme.titleTextStyle),
                  if (subtitle != null) ...[
                    Text(subtitle!,
                        style:
                            Theme.of(context).listTileTheme.subtitleTextStyle),
                  ]
                ],
              ),
            ),
          ),
          if (trailing != null) ...[
            Padding(
              padding: AppPaddings.xxsmall.top,
              child: trailing!,
            )
          ]
        ],
      ),
    );
  }
}
