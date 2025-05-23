import 'package:batt_ds/batt_ds.dart';
import 'package:batt_ds/utils/gradient_progress_border.dart';
import 'package:flutter/material.dart';

enum MapMarkerState { standard, active, disabled, error }

final class MapMarker extends StatelessWidget {
  final MapMarkerState state;
  final Widget? icon;
  final double progress;
  final Widget? accessory;
  final double size;

  const MapMarker({
    super.key,
    this.state = MapMarkerState.standard,
    this.icon,
    this.progress = 0.0,
    this.accessory,
    this.size = 48,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
                height: size + 6,
                width: size + 6,
                child: GradientProgressBorder(progress: progress)),
            Container(
              constraints: BoxConstraints(
                  minHeight: accessory != null ? size : size * 1.5,
                  minWidth: size,
                  maxHeight: accessory != null ? size : size * 1.5,
                  maxWidth: size),
              decoration: BoxDecoration(
                color: _getBackgroundColor(state),
                shape: BoxShape.circle,
              ),
              child: icon ??
                  Icon(
                    Icons.car_rental,
                    color: _getIconColor(state),
                    size: size / 1.75,
                    weight: 0.5,
                    grade: 0.5,
                  ),
            ),
          ],
        ),
        if (accessory != null) SizedBox(height: size * 0.5, child: accessory!)
      ],
    );
  }

  Color _getBackgroundColor(MapMarkerState state) {
    switch (state) {
      case MapMarkerState.standard:
      case MapMarkerState.disabled:
        return AppColors.offWhite;
      case MapMarkerState.active:
        return AppColors.ecoHorizon;
      case MapMarkerState.error:
        return AppColors.pathClay;
    }
  }

  Color _getIconColor(MapMarkerState state) {
    switch (state) {
      case MapMarkerState.standard:
        return AppColors.graphiteDrive;
      case MapMarkerState.disabled:
        return AppColors.urbanMist;
      case MapMarkerState.active:
        return AppColors.b2cKeyColor;
      case MapMarkerState.error:
        return AppColors.rusticClay;
    }
  }
}
