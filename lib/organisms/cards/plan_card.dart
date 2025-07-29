import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

final class PlanCard extends StatelessWidget {
  final String title;
  final Tag? tag;
  final String? subtitle;
  final IconData? icon;
  final bool isActive;

  const PlanCard({
    super.key,
    required this.title,
    required this.isActive,
    required this.icon,
    this.tag,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceContainerHighest,
          borderRadius: const BorderRadius.all(
            CornerRadii.s,
          ),
          border: isActive
              ? (subtitle != null)
                  ? Border.all(width: 1.0, color: AppColors.urbanMist)
                  : null
              : Border.all(width: 1.0, color: AppColors.urbanMist)),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: isActive
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.surfaceContainer,
              borderRadius: const BorderRadius.all(
                CornerRadii.s,
              ),
              border: const Border(
                bottom: BorderSide(width: 1, color: AppColors.urbanMist),
              ),
            ),
            child: Padding(
              padding: AppPaddings.large.all,
              child: LayoutBuilder(builder: (context, constraints) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  spacing: AppSpacings.sm,
                  children: [
                    SizedBox(
                      width: 24,
                      child: Icon(icon,
                          size: AppSpacings.md,
                          color: isActive
                              ? AppColors.white
                              : AppColors.neutralColors[600]),
                    ),
                    Expanded(
                      child: Text(title,
                          textAlign: TextAlign.start,
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(
                                  color: isActive
                                      ? AppColors.white
                                      : AppColors.neutralColors[950])),
                    ),
                    tag != null
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                                ConstrainedBox(
                                    constraints: BoxConstraints(
                                        maxWidth: constraints.maxWidth / 3),
                                    child: tag)
                              ])
                        : const SizedBox.shrink()
                  ],
                );
              }),
            ),
          ),
          if (subtitle != null) ...[
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceContainerHighest,
                borderRadius: const BorderRadius.only(
                    bottomLeft: CornerRadii.s, bottomRight: CornerRadii.s),
              ),
              child: Padding(
                padding: AppPaddings.large.all,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  spacing: AppSpacings.sm,
                  children: [
                    SizedBox(
                      width: 24,
                      child: Icon(Icons.info_outline,
                          size: AppSpacings.md,
                          grade: 0.5,
                          weight: 0.5,
                          color: AppColors.neutralColors[400]),
                    ),
                    Flexible(
                      child: Text(
                        subtitle!,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontStyle: FontStyle.italic,
                            color: AppColors.neutralColors[950]),
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ]
        ],
      ),
    );
  }
}
