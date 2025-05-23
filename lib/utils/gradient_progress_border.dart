import 'dart:math' show pi;
import 'package:flutter/material.dart';
import '../theme/gradient_theme.dart'; // Assuming gradient_theme.dart is in lib/theme/

class GradientProgressBorder extends StatelessWidget {
  final double progress; // Value between 0.0 and 1.0
  final double strokeWidth;
  final double size;

  const GradientProgressBorder({
    super.key,
    required this.progress,
    this.strokeWidth = 6.0,
    this.size = 100.0,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(size, size),
      painter: _GradientProgressPainter(
        progress: progress,
        strokeWidth: strokeWidth,
        gradient: GradientTheme.standard().progressGradient,
      ),
    );
  }
}

class _GradientProgressPainter extends CustomPainter {
  final double progress;
  final double strokeWidth;
  final Gradient gradient;

  _GradientProgressPainter({
    required this.progress,
    required this.strokeWidth,
    required this.gradient,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..shader = gradient.createShader(rect);

    final center = Offset(size.width / 2, size.height / 2);
    final radius = (size.width / 2) - (strokeWidth / 2);
    const startAngle = -pi / 2;
    final sweepAngle = 2 * pi * progress;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle,
      sweepAngle,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
