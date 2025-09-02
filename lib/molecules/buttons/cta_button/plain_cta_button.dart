import 'package:batt_ds/atoms/app_colors.dart';
import 'package:batt_ds/theme/gradient_theme.dart';
import 'package:flutter/material.dart';

class PlainCtaButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final bool isEnabled;
  final double? width;
  final double height;
  final double borderWidth;

  const PlainCtaButton({
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
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: isEnabled ? onPressed : null,
        child: Container(
          width: width ?? double.infinity,
          height: height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(height / 2),
              border: Border.all(color: AppColors.b2bKeyColor)),
          child: Padding(
            padding: EdgeInsets.all(borderWidth),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.offWhite,
                borderRadius:
                    BorderRadius.circular((height / 2) - borderWidth / 2),
              ),
              child: Center(
                child: Text(
                  label,
                  style: TextStyle(
                    color: AppColors.b2bKeyColor,
                    fontSize: height * 0.3,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
