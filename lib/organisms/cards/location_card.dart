import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

final class LocationCard extends StatelessWidget {
  final String description;
  final String address;
  final bool showEdit;

  const LocationCard({
    super.key,
    required this.description,
    required this.address,
    required this.showEdit,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: AppPaddings.medium.all,
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        border: const Border(
          top: BorderSide(color: AppColors.offWhite),
        ),
      ),
      child: Padding(
        padding: AppPaddings.xsmall.all,
        child: Row(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: AppPaddings.medium.horizontal,
                  child: Icon(
                    Icons.location_pin,
                    size: 24,
                    color: theme.colorScheme.onSurface,
                  ),
                ),
              ],
            ),
            const SizedBox(width: AppSpacings.sm),
            Expanded(
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            description,
                            style: theme.textTheme.titleMedium?.copyWith(),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            address,
                            style: theme.textTheme.titleMedium!
                                .copyWith(color: theme.colorScheme.onSurface),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ],
                      ),
                    ),
                    if (showEdit)
                      Center(
                        child: Padding(
                          padding: AppPaddings.medium.horizontal,
                          child: Icon(
                            Icons.mode_edit,
                            size: 24,
                            color: theme.colorScheme.onSurface,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
