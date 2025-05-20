import 'package:batt_ds/atoms/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

final class FlowProgressIndicator extends StatefulWidget {
  final double amplitude;
  const FlowProgressIndicator({super.key, this.amplitude = 0});
  @override
  FlowProgressIndicatorState createState() => FlowProgressIndicatorState();
}

class FlowProgressIndicatorState extends State<FlowProgressIndicator> {
  @override
  Widget build(BuildContext context) {
    return ClipOval(
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
    );
  }
}
