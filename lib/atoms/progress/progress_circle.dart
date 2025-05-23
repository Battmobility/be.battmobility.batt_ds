import 'package:batt_ds/utils/gradient_progress_border.dart';
import 'package:flutter/material.dart';

import '../app_colors.dart';

final class ProgressCircle extends StatelessWidget {
  final int step;
  final int totalSteps;

  const ProgressCircle({
    required this.step,
    required this.totalSteps,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        SizedBox(
            height: 48,
            width: 48,
            child: GradientProgressBorder(
                progress: (step == 0 ? 0.25 : step).toDouble() /
                    totalSteps.toDouble())),
        Container(
          constraints: const BoxConstraints(
              minHeight: 42, minWidth: 42, maxHeight: 42, maxWidth: 42),
          decoration: const BoxDecoration(
            color: AppColors.offWhite,
            shape: BoxShape.circle,
          ),
          child: Center(
              child: Text(
            "$step / $totalSteps",
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: AppColors.graphiteDrive, fontWeight: FontWeight.bold),
          )),
        ),
      ],
    );
  }
}
