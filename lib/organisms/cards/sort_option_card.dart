import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

final class SortOptionCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool isSelected;
  final Function onTap;

  const SortOptionCard({
    super.key,
    required this.title,
    required this.icon,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => onTap(),
        child: LayoutBuilder(
          builder: (context, constraints) {
            // Calculate dimensions based on content height and aspect ratio
            const iconSize = AppSpacings.xl;
            const verticalSpacing = AppSpacings.sm;
            const verticalPadding = AppPaddings.medium;

            // Estimate content height with extra padding for safety
            final textHeight =
                Theme.of(context).textTheme.bodySmall!.fontSize ?? 12;
            final contentHeight = iconSize +
                verticalSpacing +
                textHeight +
                (verticalPadding.size * 2) +
                8; // Extra padding for safety
            final width = contentHeight * 1.375;

            return SizedBox(
              width: width,
              height: contentHeight,
              child: Container(
                decoration: BoxDecoration(
                    color: isSelected ? AppColors.offWhite : Colors.transparent,
                    border: Border.all(
                        color: isSelected
                            ? AppColors.b2bKeyColor
                            : AppColors.neutralColors[200]!,
                        width: 1),
                    borderRadius: const BorderRadius.all(CornerRadii.m)),
                padding: AppPaddings.medium.all,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Icon(
                        icon,
                        size: AppSpacings.xl,
                        color: isSelected
                            ? AppColors.b2bKeyColor
                            : AppColors.neutralColors[600]!,
                      ),
                    ),
                    const SizedBox(height: AppSpacings.sm),
                    Flexible(
                      child: Text(
                        title,
                        maxLines: 1,
                        overflow: TextOverflow.fade,
                        softWrap: false,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: isSelected
                                ? AppColors.b2bKeyColor
                                : AppColors.neutralColors[600]!),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
