import 'package:batt_ds/batt_ds.dart';
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
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                height: size,
                width: size,
                child: CircularProgressIndicator(
                  value: progress,
                  strokeWidth: 3.0,
                  backgroundColor: AppColors.grey[100]!,
                  color: _getProgressColor(state),
                ),
              ),
              icon ??
                  Icon(
                    Icons.car_rental,
                    color: _getIconColor(state),
                    size: size / 1.75,
                    weight: 0.5,
                    grade: 0.5,
                  ),
            ],
          ),
        ),
        if (accessory != null) SizedBox(height: size * 0.5, child: accessory!)
      ],
    );
  }

  Color _getBackgroundColor(MapMarkerState state) {
    switch (state) {
      case MapMarkerState.standard:
      case MapMarkerState.disabled:
        return AppColors.white;
      case MapMarkerState.active:
        return AppColors.green[100]!;
      case MapMarkerState.error:
        return AppColors.orange[100]!;
    }
  }

  Color _getIconColor(MapMarkerState state) {
    switch (state) {
      case MapMarkerState.standard:
        return Colors.grey[800]!;
      case MapMarkerState.disabled:
        return Colors.grey[500]!;
      case MapMarkerState.active:
        return AppColors.green[600]!;
      case MapMarkerState.error:
        return AppColors.orange[600]!;
    }
  }

  Color _getProgressColor(MapMarkerState state) {
    switch (state) {
      case MapMarkerState.standard:
      case MapMarkerState.active:
        return AppColors.green[500]!;
      case MapMarkerState.disabled:
        return Colors.grey[400]!;
      case MapMarkerState.error:
        return AppColors.orange[600]!;
    }
  }
}
