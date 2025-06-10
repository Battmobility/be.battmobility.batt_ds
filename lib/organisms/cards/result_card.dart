import 'package:batt_ds/batt_ds.dart';
import 'package:batt_ds/utils/svg_icon.dart';
import 'package:flutter/material.dart';

final class ResultCard extends StatelessWidget {
  final String name;
  final String price;
  final String price2;
  final String range;
  final String? deviationInfo;
  final String? walkingDuration;
  final String? walkingDistance;
  final String? tag;

  final String? imageUrl;

  final bool selected;

  const ResultCard({
    super.key,
    required this.name,
    required this.price,
    required this.price2,
    required this.range,
    this.walkingDuration,
    this.walkingDistance,
    this.tag,
    this.imageUrl,
    this.selected = false,
    this.deviationInfo,
  });
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: AppPaddings.medium.vertical,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: AppPaddings.none.all,
            decoration: selected
                ? GradientBorderDecoration.flow()
                : BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    borderRadius: BorderRadius.circular(CornerRadii.s.x),
                    boxShadow: [softShadow],
                  ),
            child: LayoutBuilder(builder: (context, constraints) {
              return IntrinsicHeight(
                child: Padding(
                  padding: AppPaddings.medium.all,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 72,
                        height: 72,
                        child: Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.surfaceDim,
                                borderRadius:
                                    BorderRadius.circular(CornerRadii.s.x),
                              ),
                              child: (imageUrl ?? "").isNotEmpty
                                  ? ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                          CornerRadii.s.x),
                                      child: Image(
                                        image: NetworkImage(imageUrl!),
                                        fit: BoxFit.cover,
                                        errorBuilder:
                                            (context, error, stackTrace) {
                                          return const Center(child: carIcon);
                                        },
                                        loadingBuilder:
                                            (context, child, loadingProgress) {
                                          if (loadingProgress == null) {
                                            return child;
                                          }
                                          return const Center(
                                            child: FlowProgressIndicator(
                                                size: IndicatorSize.small),
                                          );
                                        },
                                      ),
                                    )
                                  : const Center(child: carIcon),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: AppSpacings.md),
                      Expanded(
                        child: Padding(
                          padding: AppPaddings.medium.vertical
                              .add(AppPaddings.xsmall.top),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                flex: 3,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  spacing: AppSpacings.md,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Flexible(
                                          child: Text(
                                            name,
                                            style: theme.textTheme.titleSmall
                                                ?.copyWith(
                                                    fontWeight: FontWeight.bold,
                                                    color: AppColors
                                                        .neutralColors[950]),
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ],
                                    ),
                                    _rangeInfo(theme),
                                    if (deviationInfo != null) ...[
                                      Text(
                                        deviationInfo!,
                                        style: theme.textTheme.bodySmall
                                            ?.copyWith(
                                                fontWeight: FontWeight.bold,
                                                color: AppColors
                                                    .neutralColors[700]),
                                        overflow: TextOverflow.fade,
                                      )
                                    ]
                                  ],
                                ),
                              ),
                              Flexible(
                                  flex: 1,
                                  child: Padding(
                                    padding: AppPaddings.xsmall.top,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      spacing: AppSpacings.xs,
                                      children: [
                                        Flexible(
                                          child: Text(
                                            price,
                                            textAlign: TextAlign.end,
                                            style: theme.textTheme.bodySmall
                                                ?.copyWith(
                                              fontWeight: FontWeight.bold,
                                              color:
                                                  AppColors.neutralColors[950],
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          child: Text(
                                            price2,
                                            textAlign: TextAlign.end,
                                            style: theme.textTheme.bodySmall
                                                ?.copyWith(
                                              color:
                                                  AppColors.neutralColors[400],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
          if (tag != null)
            Positioned(
              top: -15,
              right: 10,
              child: Container(
                padding:
                    AppPaddings.xsmall.all.add(AppPaddings.small.horizontal),
                decoration: BoxDecoration(
                  color: AppColors.futureBlue,
                  borderRadius: BorderRadius.circular(CornerRadii.xs.x),
                ),
                child: Text(
                  tag!,
                  style: theme.textTheme.labelSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColors.white,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _rangeInfo(ThemeData theme) {
    return Row(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            rangeIcon.colored(AppColors.b2cKeyColor),
            const SizedBox(width: AppSpacings.xs),
            Flexible(
              child: Text(
                range,
                style: theme.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.b2cKeyColor,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        const SizedBox(width: AppSpacings.xs),
      ],
    );
  }
}
