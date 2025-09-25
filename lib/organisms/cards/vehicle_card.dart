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
  final String? price1Prefix;
  final String? price1;
  final String? price1Suffix;
  final String? price2;
  final String? price2Suffix;

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
    this.price1Prefix,
    this.price1,
    this.price1Suffix,
    this.price2,
    this.price2Suffix,
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
              crossAxisAlignment: CrossAxisAlignment.stretch,
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              spacing: AppSpacings.sm,
                              children: [
                                Flexible(
                                  child: Text(
                                    name,
                                    style: theme.textTheme.titleSmall?.copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
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
                                                color: AppColors
                                                    .neutralColors[400]),
                                      ),
                                    ),
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
                    ),
                  ],
                ),
                PropertiesBar(
                  chargePercentage: chargePercentage,
                  range: range,
                  walkingDistance: walkingDistance,
                ),
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
        width: 64,
        height: 64,
        fit: BoxFit.contain,
        filterQuality: FilterQuality.low,
        isAntiAlias: false,
        gaplessPlayback: false,
        excludeFromSemantics: true,
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
          return const SizedBox(
            width: 64,
            height: 64,
            child: Center(
              child: AnimatedLoader(),
            ),
          );
        },
        frameBuilder: (BuildContext context, Widget child, int? frame,
            bool wasSynchronouslyLoaded) {
          if (wasSynchronouslyLoaded || frame != null) {
            return child;
          }
          return const SizedBox(
            width: 64,
            height: 64,
            child: Center(
              child: AnimatedLoader(),
            ),
          );
        },
      ),
    );
  }

  Widget? priceBar(BuildContext context) {
    if (price1 != null || price2 != null) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        spacing: AppSpacings.sm,
        children: [
          price1 != null ? Expanded(flex: 2, child: priceTag1(context)) : null,
          price1 != null && price2 != null
              ? Icon(PhosphorIcons.plus(), size: AppSpacings.md)
              : null,
          price2 != null ? Expanded(flex: 1, child: priceTag2(context)) : null
        ].nonNulls.toList(),
      );
    }
    return null;
  }

  Widget priceTag1(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: AppPaddings.xsmall.all.add(AppPaddings.small.horizontal),
      decoration: BoxDecoration(
        color: AppColors.offWhite,
        borderRadius: BorderRadius.circular(CornerRadii.xs.x),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (price1Prefix != null)
            Text(
              price1Prefix!,
              style: theme.textTheme.labelSmall!.copyWith(
                color: AppColors.b2bKeyColor,
              ),
            ),
          if (price1 != null)
            Text(
              price1!,
              style: theme.textTheme.labelSmall!.copyWith(
                color: AppColors.b2bKeyColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          if (price1Suffix != null)
            Text(
              price1Suffix!,
              style: theme.textTheme.labelSmall!.copyWith(
                color: AppColors.b2bKeyColor,
              ),
            ),
        ],
      ),
    );
  }

  Widget priceTag2(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: AppPaddings.xsmall.all.add(AppPaddings.small.horizontal),
      decoration: BoxDecoration(
        color: AppColors.offWhite,
        borderRadius: BorderRadius.circular(CornerRadii.xs.x),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (price2 != null)
            Text(
              price2!,
              style: theme.textTheme.labelSmall!.copyWith(
                color: AppColors.b2bKeyColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          if (price2Suffix != null)
            Text(
              price2Suffix!,
              style: theme.textTheme.labelSmall!.copyWith(
                color: AppColors.b2bKeyColor,
              ),
            ),
        ],
      ),
    );
  }
}
