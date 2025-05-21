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
        border: Border(
          top: BorderSide(color: AppColors.grey[200]!),
        ),
      ),
      child: Padding(
        padding: AppPaddings.xsmall.all,
        child: Row(
          children: [
            Column(
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Column(
                      spacing: AppSpacings.sm,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FittedBox(
                          child: Text(
                            description,
                            style: theme.textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Flexible(
                          child: FittedBox(
                            child: Text(
                              address,
                              style: theme.textTheme.titleMedium!
                                  .copyWith(color: theme.colorScheme.onSurface),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                          ),
                        )
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
                    )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
