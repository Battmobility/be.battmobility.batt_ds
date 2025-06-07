import 'package:batt_ds/atoms/app_colors.dart';
import 'package:batt_ds/theme/gradient_theme.dart';
import 'package:flutter/material.dart';

class OutlinedCtaButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final bool isEnabled;
  final double? width;
  final double height;
  final double borderWidth;

  const OutlinedCtaButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.isEnabled = true,
    this.width,
    this.height = 48.0,
    this.borderWidth = 2.0,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isEnabled ? onPressed : null,
      child: Container(
        width: width ?? double.infinity,
        height: height,
        decoration: BoxDecoration(
          gradient: GradientTheme.standard().ctaButtonGradient,
          borderRadius: BorderRadius.circular(height / 2),
        ),
        child: Padding(
          padding: EdgeInsets.all(borderWidth),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius:
                  BorderRadius.circular((height / 2) - borderWidth / 2),
            ),
            child: Center(
              child: Text(
                label,
                style: TextStyle(
                  color: AppColors.b2bKeyColor,
                  fontSize: height * 0.4,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
