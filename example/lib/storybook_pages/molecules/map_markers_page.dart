import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

class MapMarkersPage extends StatelessWidget {
  const MapMarkersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: AppPaddings.medium.horizontal,
          child: SingleChildScrollView(
            padding: AppPaddings.medium.trailing,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Text(
                    'Map markers',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Text(
                    'Default',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                      spacing: AppSpacings.sm,
                      runSpacing: AppSpacings.md,
                      children: [
                        MapMarker(
                          progress: 0,
                        ),
                        MapMarker(
                          progress: 0.25,
                        ),
                        MapMarker(
                          progress: 0.66,
                        ),
                        MapMarker(
                          progress: 1,
                        ),
                      ]),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Text(
                    'Active',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                    spacing: AppSpacings.sm,
                    runSpacing: AppSpacings.md,
                    children: [
                      MapMarker(
                        progress: 0,
                        state: MapMarkerState.active,
                      ),
                      MapMarker(
                        progress: 0.25,
                        state: MapMarkerState.active,
                      ),
                      MapMarker(
                        progress: 0.66,
                        state: MapMarkerState.active,
                      ),
                      MapMarker(
                        progress: 1,
                        state: MapMarkerState.active,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Text(
                    'Error',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                    spacing: AppSpacings.sm,
                    runSpacing: AppSpacings.md,
                    children: [
                      MapMarker(
                        progress: 0,
                        state: MapMarkerState.error,
                      ),
                      MapMarker(
                        progress: 0.25,
                        state: MapMarkerState.error,
                      ),
                      MapMarker(
                        progress: 0.66,
                        state: MapMarkerState.error,
                      ),
                      MapMarker(
                        progress: 1,
                        state: MapMarkerState.error,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Text(
                    'Disabled',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                    spacing: AppSpacings.sm,
                    runSpacing: AppSpacings.md,
                    children: [
                      MapMarker(
                        progress: 0,
                        state: MapMarkerState.disabled,
                      ),
                      MapMarker(
                        progress: 0.25,
                        state: MapMarkerState.disabled,
                      ),
                      MapMarker(
                        progress: 0.66,
                        state: MapMarkerState.disabled,
                      ),
                      MapMarker(
                        progress: 1,
                        state: MapMarkerState.disabled,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Text(
                    'With accessory',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                Padding(
                  padding: AppPaddings.small.vertical,
                  child: Wrap(
                    spacing: AppSpacings.sm,
                    runSpacing: AppSpacings.md,
                    children: [
                      MapMarker(
                        progress: 0,
                        state: MapMarkerState.standard,
                        accessory: Text(
                          "...",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      MapMarker(
                        progress: 0.25,
                        state: MapMarkerState.active,
                        accessory: Text(
                          "...",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      MapMarker(
                        progress: 0.66,
                        state: MapMarkerState.error,
                        accessory: Text(
                          "...",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      MapMarker(
                        progress: 1,
                        state: MapMarkerState.disabled,
                        accessory: Text(
                          "...",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
