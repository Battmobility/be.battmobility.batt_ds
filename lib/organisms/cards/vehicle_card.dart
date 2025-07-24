import 'package:batt_ds/batt_ds.dart';
import 'package:batt_ds/utils/svg_icon.dart';
import 'package:flutter/material.dart';

final class VehicleCard extends StatelessWidget {
  final String name;
  final double? chargePercentage;
  final String? range;

  final String? walkingDuration;
  final String? walkingDistance;
  final String? tag;
  final String? price;
  final String? price2;
  final String? imageUrl;

  final String? licensePlate;
  final bool showBorder;
  final bool selected;

  final bool showIndicator;

  const VehicleCard({
    super.key,
    required this.name,
    this.chargePercentage,
    this.range,
    this.walkingDuration,
    this.walkingDistance,
    this.tag,
    this.price,
    this.price2,
    this.imageUrl,
    this.licensePlate,
    this.showBorder = true,
    this.selected = false,
    this.showIndicator = true,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: AppPaddings.medium.all.add(-AppPaddings.small.trailing),
      decoration: selected
          ? GradientBorderDecoration.flow()
          : showBorder
              ? BoxDecoration(
                  borderRadius: BorderRadius.circular(CornerRadii.m.x),
                  border: Border.all(color: AppColors.urbanMist, width: 1),
                )
              : BoxDecoration(
                  borderRadius: BorderRadius.circular(CornerRadii.m.x),
                  border: Border.all(color: Colors.transparent, width: 1),
                ),
      child: LayoutBuilder(builder: (context, constraints) {
        return IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: constraints.maxWidth / 4,
                child: AspectRatio(
                  aspectRatio: 1.5,
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    fit: StackFit.expand,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(CornerRadii.s.x),
                        ),
                        child: (imageUrl != null)
                            ? ClipRRect(
                                borderRadius:
                                    BorderRadius.circular(CornerRadii.s.x),
                                child: Center(
                                  child: Image(
                                    image: NetworkImage(imageUrl!),
                                    fit: BoxFit.cover,
                                    errorBuilder: (context, error, stackTrace) {
                                      return const Center(child: carIcon);
                                    },
                                    loadingBuilder:
                                        (context, child, loadingProgress) {
                                      if (loadingProgress == null) return child;
                                      return const Center(
                                        child: CircularProgressIndicator
                                            .adaptive(),
                                      );
                                    },
                                  ),
                                ),
                              )
                            : const Center(child: carIcon),
                      ),
                      if (licensePlate != null) ...[
                        Positioned(
                          bottom: AppSpacings.xs,
                          left: AppSpacings.xs,
                          child: ConstrainedBox(
                            constraints: BoxConstraints(
                                maxHeight: constraints.maxWidth /
                                    16), // 1/4 of the height
                            child: LicensePlate(
                              licensePlate!,
                              size: LicensePlateSize.small,
                            ),
                          ),
                        )
                      ]
                    ],
                  ),
                ),
              ),
              const SizedBox(width: AppSpacings.lg),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: AppSpacings.sm,
                  children: [
                    if (tag != null)
                      Container(
                        padding: AppPaddings.xxsmall.all
                            .add(AppPaddings.small.horizontal),
                        decoration: BoxDecoration(
                          color: AppColors.airFlow,
                          borderRadius: BorderRadius.circular(CornerRadii.xs.x),
                        ),
                        child: Text(
                          tag!,
                          style: theme.textTheme.labelSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: AppColors.b2bKeyColor,
                          ),
                        ),
                      ),
                    Flexible(
                      child: Text(
                        name,
                        style: theme.textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        _rangeInfo(theme),
                        _walkingInfo(theme),
                      ],
                    ),
                    Row(
                      children: [
                        if (price != null)
                          Flexible(
                            child: Text(
                              price!,
                              style: theme.textTheme.labelMedium,
                            ),
                          ),
                        if (price2 != null)
                          Flexible(
                            child: Padding(
                              padding: price == null
                                  ? AppPaddings.none.leading
                                  : AppPaddings.small.leading,
                              child: Text(
                                price2!,
                                style: theme.textTheme.labelSmall?.copyWith(
                                    color: AppColors.neutralColors[400]),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
              if (showIndicator)
                Padding(
                  padding: AppPaddings.small.leading,
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: AppColors.neutralColors[600],
                  ),
                )
            ],
          ),
        );
      }),
    );
  }

  Widget _rangeInfo(ThemeData theme) {
    return Row(
      children: [
        if (range != null)
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              rangeIcon.colored(AppColors.b2cKeyColor),
              const SizedBox(width: AppSpacings.xs),
              Flexible(
                child: Text(
                  range!,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: AppColors.b2cKeyColor,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        if (chargePercentage != null && range == null) ...[
          BatteryIcon(chargePercentage: chargePercentage!),
          const SizedBox(width: AppSpacings.xs),
        ]
      ],
    );
  }

  Widget _walkingInfo(ThemeData theme) {
    return Flexible(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (walkingDuration != null)
            walkIcon.colored(theme.colorScheme.onSurface),
          if (walkingDuration != null) const SizedBox(width: AppSpacings.xs),
          if (walkingDuration != null)
            Flexible(
              child: Text(
                walkingDuration!,
                style: theme.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          if (walkingDuration != null) const SizedBox(width: AppSpacings.xs),
          if (walkingDistance != null)
            Flexible(
              child: Text(
                walkingDistance!,
                style: theme.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w200,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
        ],
      ),
    );
  }
}
