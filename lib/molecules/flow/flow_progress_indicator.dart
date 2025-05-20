import 'package:batt_ds/atoms/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

enum IndicatorSize { xsmall, small, medium, large }

final class FlowProgressIndicator extends StatefulWidget {
  final double amplitude;
  final IndicatorSize size;
  const FlowProgressIndicator(
      {super.key, this.size = IndicatorSize.medium, this.amplitude = 0});
  @override
  FlowProgressIndicatorState createState() => FlowProgressIndicatorState();
}

class FlowProgressIndicatorState extends State<FlowProgressIndicator> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.size == IndicatorSize.large
          ? 200
          : widget.size == IndicatorSize.medium
              ? 100
              : widget.size == IndicatorSize.small
                  ? 50
                  : 25,
      height: widget.size == IndicatorSize.large
          ? 200
          : widget.size == IndicatorSize.medium
              ? 100
              : widget.size == IndicatorSize.small
                  ? 50
                  : 25,
      child: ClipOval(
        child: WaveWidget(
          config: CustomConfig(
            gradients: [
              [AppColors.softGrove, AppColors.skySurge],
              [AppColors.offWhite, AppColors.airFlow],
              [AppColors.skySurge, AppColors.futureBlue],
            ],
            durations: [
              9000,
              4000,
              8000,
            ],
            heightPercentages: [0.0, 0.4, 0.75],
          ),
          backgroundColor: AppColors.airFlow,
          size: const Size(double.infinity, double.infinity),
          waveAmplitude: 0,
        ),
      ),
    );
  }
}
