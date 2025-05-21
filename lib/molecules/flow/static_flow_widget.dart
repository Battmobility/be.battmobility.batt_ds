import 'package:batt_ds/atoms/app_colors.dart';
import 'package:flutter/material.dart';

final class StaticFlowWidget extends StatelessWidget {
  /// The size of the widget
  final Size size;

  /// Optional background color
  final Color? backgroundColor;

  /// Child widget to display on top of the waves
  final Widget? child;

  /// Custom gradients for each wave layer
  final List<List<Color>>? gradients;

  /// Custom height percentages for wave positioning
  final List<double>? heightPercentages;

  static const _defaultBackgroundColor = AppColors.offWhite;

  static const _defaultGradients = [
    [AppColors.airFlow, AppColors.skySurge, AppColors.airFlow],
    [AppColors.softGrove, AppColors.ecoHorizon, AppColors.softGrove],
    [AppColors.cloudBase, AppColors.offWhite],
  ];

  // These match the image - top blue wave, middle green wave, bottom beige wave
  static const _defaultHeightPercentages = [0.35, 0.55, 0.75];

  const StaticFlowWidget({
    super.key,
    this.size = const Size(double.infinity, double.infinity),
    this.backgroundColor,
    this.child,
    this.gradients,
    this.heightPercentages,
  });

  @override
  Widget build(BuildContext context) {
    final effectiveGradients = gradients ?? _defaultGradients;
    final effectiveHeightPercentages =
        heightPercentages ?? _defaultHeightPercentages;
    final effectiveBackgroundColor = backgroundColor ?? _defaultBackgroundColor;

    return Stack(
      children: [
        Container(
          width: size.width,
          height: size.height,
          color: effectiveBackgroundColor,
          child: CustomPaint(
            size: size,
            painter: _StaticFlowPainter(
              gradients: effectiveGradients,
              heightPercentages: effectiveHeightPercentages,
            ),
          ),
        ),
        if (child != null) child!,
      ],
    );
  }
}

class _StaticFlowPainter extends CustomPainter {
  final List<List<Color>> gradients;
  final List<double> heightPercentages;

  _StaticFlowPainter({
    required this.gradients,
    required this.heightPercentages,
  });

  @override
  void paint(Canvas canvas, Size size) {
    // Create the waves from bottom to top (reversed order to layer correctly)
    for (int i = gradients.length - 1; i >= 0; i--) {
      final paint = Paint()..style = PaintingStyle.fill;

      // Calculate where this wave's base should be
      final waveY = size.height * heightPercentages[i];

      // Create the wave path
      final path = createWavePath(size, waveY);

      // Set the gradient for this wave
      paint.shader = LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: gradients[i],
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

      // Draw the wave
      canvas.drawPath(path, paint);
    }
  }

  Path createWavePath(Size size, double baseY) {
    final path = Path();

    // Start at the left edge of the wave
    path.moveTo(0, baseY);

    // Create a wave shape using cubic bezier curves
    final controlPoint1 =
        Offset(size.width * 0.25, baseY - (size.height * 0.03));
    final controlPoint2 =
        Offset(size.width * 0.75, baseY + (size.height * 0.03));
    path.cubicTo(controlPoint1.dx, controlPoint1.dy, controlPoint2.dx,
        controlPoint2.dy, size.width, baseY);

    // Complete the path by extending to bottom corners
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
