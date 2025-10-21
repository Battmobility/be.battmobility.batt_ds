import 'dart:math';

import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

final class VehicleCardSkeleton extends StatefulWidget {
  final bool showBorder;
  final bool showInfoButton;
  final bool showPriceBar;

  const VehicleCardSkeleton({
    super.key,
    this.showBorder = true,
    this.showInfoButton = true,
    this.showPriceBar = true,
  });

  @override
  State<VehicleCardSkeleton> createState() => _VehicleCardSkeletonState();
}

class _VehicleCardSkeletonState extends State<VehicleCardSkeleton>
    with SingleTickerProviderStateMixin {
  late AnimationController _shimmerController;
  late bool _showSubtitle;

  @override
  void initState() {
    super.initState();
    _shimmerController = AnimationController.unbounded(vsync: this)
      ..repeat(min: -0.5, max: 1.5, period: const Duration(milliseconds: 1500));
    _showSubtitle = Random().nextBool();
  }

  @override
  void dispose() {
    _shimmerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _shimmerController,
      builder: (context, child) {
        return ShaderMask(
          blendMode: BlendMode.srcATop,
          shaderCallback: (bounds) {
            return LinearGradient(
              colors: [
                AppColors.neutralColors[100]!,
                AppColors.offWhite,
                AppColors.neutralColors[100]!,
              ],
              stops: [
                _shimmerController.value - 0.3,
                _shimmerController.value,
                _shimmerController.value + 0.3,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ).createShader(bounds);
          },
          child: child,
        );
      },
      child: _buildSkeleton(context),
    );
  }

  Widget _buildSkeleton(BuildContext context) {
    return Container(
      decoration: widget.showBorder
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
                    // Image skeleton
                    Container(
                      width: 64,
                      height: 64,
                      decoration: BoxDecoration(
                        color: AppColors.neutralColors[100],
                        border: Border.all(
                          color: AppColors.neutralColors[50]!,
                        ),
                        borderRadius: BorderRadius.circular(CornerRadii.s.x),
                      ),
                    ),
                    const SizedBox(width: AppSpacings.lg),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              spacing: AppSpacings.xs,
                              children: [
                                // Name skeleton (2 lines)
                                Container(
                                  height: 16,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: AppColors.neutralColors[100],
                                    borderRadius:
                                        BorderRadius.circular(CornerRadii.xs.x),
                                  ),
                                ),
                                if (_showSubtitle) ...[
                                  Container(
                                    height: 16,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      color: AppColors.neutralColors[100],
                                      borderRadius: BorderRadius.circular(
                                          CornerRadii.xs.x),
                                    ),
                                  ),
                                ],

                                const SizedBox(height: 4),
                                // Address skeleton
                                Container(
                                  height: 12,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    color: AppColors.neutralColors[100],
                                    borderRadius:
                                        BorderRadius.circular(CornerRadii.xs.x),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                // Properties bar skeleton
                Padding(
                  padding: AppPaddings.medium.top,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.neutralColors[50]!,
                      ),
                      borderRadius: const BorderRadius.all(CornerRadii.s),
                    ),
                    child: Padding(
                      padding: AppPaddings.small.all,
                      child: IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                                child: Center(
                              child: Container(
                                width: 40,
                                height: 12,
                                decoration: BoxDecoration(
                                  color: AppColors.neutralColors[300],
                                  borderRadius:
                                      BorderRadius.circular(CornerRadii.xs.x),
                                ),
                              ),
                            )),
                            Padding(
                              padding: AppPaddings.small.horizontal,
                              child: VerticalDivider(
                                color: AppColors.neutralColors[50],
                              ),
                            ),
                            Expanded(
                                child: Center(
                              child: Container(
                                width: 60,
                                height: 12,
                                decoration: BoxDecoration(
                                  color: AppColors.neutralColors[300],
                                  borderRadius:
                                      BorderRadius.circular(CornerRadii.xs.x),
                                ),
                              ),
                            )),
                            Padding(
                              padding: AppPaddings.small.horizontal,
                              child: VerticalDivider(
                                color: AppColors.neutralColors[50],
                              ),
                            ),
                            Expanded(
                                child: Center(
                              child: Container(
                                width: 40,
                                height: 12,
                                decoration: BoxDecoration(
                                  color: AppColors.neutralColors[300],
                                  borderRadius:
                                      BorderRadius.circular(CornerRadii.xs.x),
                                ),
                              ),
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (widget.showPriceBar) ...[
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Divider(
                  color: AppColors.neutralColors[100],
                  height: 2,
                ),
                Padding(
                  padding: AppPaddings.medium.all,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    spacing: AppSpacings.sm,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          height: 32,
                          decoration: BoxDecoration(
                            color: AppColors.neutralColors[100],
                            borderRadius:
                                BorderRadius.circular(CornerRadii.xs.x),
                            border: Border.all(
                              color: AppColors.neutralColors[100]!,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: AppSpacings.md,
                        height: AppSpacings.md,
                        decoration: BoxDecoration(
                          color: AppColors.neutralColors[100],
                          borderRadius:
                              BorderRadius.circular(AppSpacings.md / 2),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 32,
                          decoration: BoxDecoration(
                            color: AppColors.neutralColors[100],
                            borderRadius:
                                BorderRadius.circular(CornerRadii.xs.x),
                            border: Border.all(
                              color: AppColors.neutralColors[50]!,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
