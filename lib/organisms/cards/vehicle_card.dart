import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

final class VehicleCard extends StatelessWidget {
  final String name;
  final String address;
  final String? imageUrl;

  final double? chargePercentage;
  final String? range;
  final String? walkingDistance;

  final Tag? tag;
  final RichText? price;
  final RichText? price2;

  final bool showBorder;
  final bool selected;

  final bool showIndicator;

  const VehicleCard({
    super.key,
    required this.name,
    required this.address,
    this.chargePercentage,
    this.range,
    this.walkingDistance,
    this.tag,
    this.price,
    this.price2,
    this.imageUrl,
    this.showBorder = true,
    this.selected = false,
    this.showIndicator = true,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: AppPaddings.medium.all,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 64,
                      height: 64,
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        fit: StackFit.expand,
                        children: [
                          Text("",
                              style: Theme.of(context).textTheme.labelSmall),
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(CornerRadii.s.x),
                                  color: AppColors.neutralColors[100]),
                              child: _imageWidget()),
                        ],
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
                          Flexible(
                            child: Text(
                              name,
                              style: theme.textTheme.titleSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.fade,
                              softWrap: false,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                PhosphorIcons.mapPin(),
                                color: AppColors.neutralColors[400],
                                size: AppSpacings.lg,
                              ),
                              const SizedBox(width: AppSpacings.xs),
                              Flexible(
                                child: Text(
                                  address,
                                  maxLines: 1,
                                  overflow: TextOverflow.fade,
                                  softWrap: false,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                          color: AppColors.neutralColors[400]),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    if (showIndicator)
                      Padding(
                        padding: AppPaddings.small.leading,
                        child: Icon(
                          PhosphorIcons.caretRight(),
                          size: 20,
                          color: AppColors.neutralColors[600],
                        ),
                      )
                  ],
                ),
                middleBar(context),
              ],
            ),
          ),
          if (priceBar(context) != null) ...[
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Divider(
                  color: AppColors.neutralColors[50],
                  height: 2,
                ),
                Padding(
                  padding: AppPaddings.medium.all,
                  child: priceBar(context),
                )
              ],
            )
          ]
        ],
      ),
    );
  }

  Widget _imageWidget() {
    final url = imageUrl;

    if (url == null || url.isEmpty) {
      return const Center(
        child: Icon(Icons.image_not_supported_sharp),
      );
    }

    return ClipRRect(
      borderRadius: BorderRadius.circular(CornerRadii.s.x),
      child: Image.network(
        url,
        fit: BoxFit.fitWidth,
        errorBuilder:
            (BuildContext context, Object error, StackTrace? stackTrace) {
          return const Center(
            child: Icon(Icons.image_not_supported_sharp),
          );
        },
        loadingBuilder: (BuildContext context, Widget child,
            ImageChunkEvent? loadingProgress) {
          if (loadingProgress == null) {
            return child;
          }
          return const Center(
            child: AnimatedLoader(),
          );
        },
        frameBuilder: (BuildContext context, Widget child, int? frame,
            bool wasSynchronouslyLoaded) {
          if (wasSynchronouslyLoaded || frame != null) {
            return child;
          }
          return const Center(
            child: AnimatedLoader(),
          );
        },
      ),
    );
  }

  Widget middleBar(BuildContext context) {
    if (chargePercentage != null || range != null || walkingDistance != null) {
      List<Widget> children = [];
      if (chargePercentage != null) {
        children.add(BatteryIcon(chargePercentage: chargePercentage));
      }
      if (range != null) {
        children.add(Row(
          spacing: AppSpacings.xs,
          children: [
            Icon(
              PhosphorIcons.roadHorizon(),
              color: AppColors.neutralColors[400],
              size: AppSpacings.lg,
            ),
            Text(range!, style: Theme.of(context).textTheme.bodySmall!),
          ],
        ));
      }
      if (walkingDistance != null) {
        children.add(Row(
          spacing: AppSpacings.xs,
          children: [
            Icon(
              PhosphorIcons.footprints(),
              color: AppColors.neutralColors[400],
              size: AppSpacings.lg,
            ),
            Text(walkingDistance!,
                style: Theme.of(context).textTheme.bodySmall!),
          ],
        ));
      }
      return Padding(
        padding: AppPaddings.medium.top,
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.neutralColors[50]!,
              ),
              borderRadius: const BorderRadius.all(CornerRadii.s)),
          child: Padding(
            padding: AppPaddings.small.all,
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: children
                    .map((child) {
                      return [
                        child,
                        if (child != children.last) ...[
                          VerticalDivider(
                            color: AppColors.neutralColors[100],
                          )
                        ]
                      ];
                    })
                    .expand((widget) => widget)
                    .toList(),
              ),
            ),
          ),
        ),
      );
    }
    return const SizedBox.shrink();
  }

  Widget? priceBar(BuildContext context) {
    if (price != null || price2 != null) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        spacing: AppSpacings.sm,
        children: [
          price != null
              ? Expanded(flex: 2, child: priceTag(price!, context))
              : null,
          price != null && price2 != null
              ? Icon(PhosphorIcons.plus(), size: AppSpacings.md)
              : null,
          price2 != null
              ? Expanded(flex: 1, child: priceTag(price2!, context))
              : null
        ].nonNulls.toList(),
      );
    }
    return null;
  }

  Widget priceTag(RichText price, BuildContext context) {
    return Container(
        padding: AppPaddings.xsmall.all.add(AppPaddings.small.horizontal),
        decoration: BoxDecoration(
          color: AppColors.offWhite,
          borderRadius: BorderRadius.circular(CornerRadii.xs.x),
        ),
        child: price);
  }
}
