import 'package:batt_ds/atoms/app_colors.dart';
import 'package:batt_ds/theme/gradient_theme.dart';
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
    this.height = 48.0,
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
            gradient: GradientTheme.standard().ctaButtonGradient,
            borderRadius:
                BorderRadius.circular(height / 2), // Fully rounded corners
          ),
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                color: AppColors.white,
                fontSize: height * 0.3,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
