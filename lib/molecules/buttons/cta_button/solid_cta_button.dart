import 'package:batt_ds/atoms/app_colors.dart';
import 'package:flutter/material.dart';

class SolidCtaButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final bool isEnabled;
  final double? width;
  final double height;

  const SolidCtaButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.isEnabled = true,
    this.width,
    this.height = 56.0,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isEnabled ? onPressed : null,
      child: Container(
        width: width ?? double.infinity,
        height: height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Theme.of(context).colorScheme.primary, // b2BKeyColor
              Theme.of(context).colorScheme.secondary, // skySurge
            ],
            transform:
                const GradientRotation(0.05), // Slight angle for the gradient
          ),
          borderRadius:
              BorderRadius.circular(height / 2), // Fully rounded corners
        ),
        child: Center(
          child: Text(
            label,
            style: const TextStyle(
              color: AppColors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
