import 'package:batt_ds/atoms/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

final class FlowWidget extends StatefulWidget {
  final Widget? child;
  final double amplitude;
  const FlowWidget({super.key, this.child, this.amplitude = 0});
  @override
  FlowWidgetState createState() => FlowWidgetState();
}

class FlowWidgetState extends State<FlowWidget> {
  static const _backgroundColor = AppColors.offWhite;

  static const _colors = [
    AppColors.skySurge,
    AppColors.airFlow,
    AppColors.softGrove
  ];

  static const _gradients = [
    [AppColors.airFlow, AppColors.skySurge, AppColors.airFlow],
    [AppColors.softGrove, AppColors.ecoHorizon, AppColors.softGrove],
    [AppColors.cloudBase, AppColors.offWhite]
  ];

  static const _durations = [
    20000,
    30000,
    60000,
  ];

  static const _heightPercentages = [0.0, 0.45, 0.65];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        WaveWidget(
          config: CustomConfig(
              durations: _durations,
              heightPercentages: _heightPercentages,
              gradients: _gradients,
              gradientBegin: Alignment.centerLeft,
              gradientEnd: Alignment.centerRight),
          backgroundColor: _backgroundColor,
          size: const Size(double.infinity, double.infinity),
          waveAmplitude: widget.amplitude,
        ),
      ],
    );
  }
}
