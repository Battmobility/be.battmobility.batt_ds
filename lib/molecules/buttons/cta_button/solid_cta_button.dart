import 'package:batt_ds/atoms/app_colors.dart';
import 'package:batt_ds/atoms/app_paddings.dart';
import 'package:batt_ds/molecules/loaders/animated_loader.dart';
import 'package:flutter/material.dart';

class SolidCtaButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final bool isEnabled;
  final double? width;
  final double height;
  final bool isBusy;

  const SolidCtaButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.isEnabled = true,
    this.width,
    this.height = 56.0,
    this.isBusy = false,
  });

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: isEnabled ? onPressed : null,
        child: Container(
          width: width ?? double.infinity,
          height: height,
          decoration: BoxDecoration(
            color: AppColors.futureBlue,
            borderRadius: BorderRadius.circular(height / 4),
          ),
          child: Center(
            child: isBusy
                ? Padding(
                    padding: AppPaddings.xlarge.horizontal,
                    child: const AnimatedLoader(),
                  )
                : Text(
                    label,
                    style: TextStyle(
                      color: AppColors.secondaryBlue,
                      fontSize: height * 0.35,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
