import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

final class BattListTile extends StatelessWidget {
  final String title;
  final String? subtitle;
  final BattIcon leading;
  final Widget? trailing;
  final Function? onTap;
  final EdgeInsetsGeometry? padding;

  const BattListTile({
    super.key,
    required this.title,
    this.subtitle,
    required this.leading,
    this.trailing,
    this.onTap,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? AppPaddings.small.all,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: AppSpacings.sm,
        children: [
          leading,
          Expanded(
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () => onTap != null ? onTap!() : null,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: AppSpacings.xs,
                  children: [
                    Text(title,
                        style: Theme.of(context).listTileTheme.titleTextStyle),
                    if (subtitle != null) ...[
                      Text(subtitle!,
                          style: Theme.of(context)
                              .listTileTheme
                              .subtitleTextStyle),
                    ]
                  ],
                ),
              ),
            ),
          ),
          if (trailing != null) ...[trailing!]
        ],
      ),
    );
  }
}
