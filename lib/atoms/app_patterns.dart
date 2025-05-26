import 'dart:math';
import 'package:flutter/material.dart';
import 'app_colors.dart';

class HatchPatternPainter extends CustomPainter {
  final double spacing;
  final double strokeWidth;
  final Color color;
  final bool horizontal;
  final bool vertical;
  final bool diagonalLeft;
  final bool diagonalRight;

  HatchPatternPainter({
    this.spacing = 10.0,
    this.strokeWidth = 1.0,
    this.color = AppColors.urbanMist,
    this.horizontal = true,
    this.vertical = true,
    this.diagonalLeft = true,
    this.diagonalRight = false,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    // Draw horizontal lines
    if (horizontal) {
      for (double y = 0; y < size.height; y += spacing) {
        canvas.drawLine(
          Offset(0, y),
          Offset(size.width, y),
          paint,
        );
      }
    }

    // Draw vertical lines
    if (vertical) {
      for (double x = 0; x < size.width; x += spacing) {
        canvas.drawLine(
          Offset(x, 0),
          Offset(x, size.height),
          paint,
        );
      }
    }

    // Draw diagonal lines (left to right)
    if (diagonalLeft) {
      double maxDimension = max(size.width, size.height);
      double startX = -maxDimension;
      while (startX < maxDimension * 2) {
        canvas.drawLine(
          Offset(startX, 0),
          Offset(startX + maxDimension, maxDimension),
          paint,
        );
        startX += spacing;
      }
    }

    // Draw diagonal lines (right to left)
    if (diagonalRight) {
      double maxDimension = max(size.width, size.height);
      double startX = -maxDimension;
      while (startX < maxDimension * 2) {
        canvas.drawLine(
          Offset(startX + maxDimension, 0),
          Offset(startX, maxDimension),
          paint,
        );
        startX += spacing;
      }
    }
  }

  @override
  bool shouldRepaint(HatchPatternPainter oldDelegate) {
    return oldDelegate.spacing != spacing ||
        oldDelegate.strokeWidth != strokeWidth ||
        oldDelegate.color != color ||
        oldDelegate.horizontal != horizontal ||
        oldDelegate.vertical != vertical ||
        oldDelegate.diagonalLeft != diagonalLeft ||
        oldDelegate.diagonalRight != diagonalRight;
  }
}
