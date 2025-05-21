import 'package:batt_ds/atoms/atoms.dart';
import 'package:batt_ds/theme/gradient_theme.dart';
import 'package:flutter/material.dart';

class GradientBorderDecoration extends BoxDecoration {
  GradientBorderDecoration({
    required Gradient gradient,
    required double borderWidth,
    BorderRadius? super.borderRadius,
    super.color,
    super.image,
    super.shape,
    super.boxShadow,
  }) : super(
          border: GradientBorder(
            gradient: gradient,
            width: borderWidth,
          ),
        );

  factory GradientBorderDecoration.standard() {
    return GradientBorderDecoration(
        gradient: GradientTheme.standard().inputBorderGradient,
        borderWidth: 2.0,
        borderRadius: const BorderRadius.all(CornerRadii.s));
  }
}

class GradientBorder extends Border {
  final Gradient gradient;

  GradientBorder({
    required this.gradient,
    required double width,
  }) : super(
          top: GradientBorderSide(gradient: gradient, width: width),
          right: GradientBorderSide(gradient: gradient, width: width),
          bottom: GradientBorderSide(gradient: gradient, width: width),
          left: GradientBorderSide(gradient: gradient, width: width),
        );

  @override
  void paint(
    Canvas canvas,
    Rect rect, {
    TextDirection? textDirection,
    BoxShape shape = BoxShape.rectangle,
    BorderRadius? borderRadius,
  }) {
    Path path;
    if (shape == BoxShape.circle) {
      path = Path()..addOval(rect);
    } else if (borderRadius != null) {
      path = Path()..addRRect(borderRadius.toRRect(rect));
    } else {
      path = Path()..addRect(rect);
    }

    final Paint paint = Paint()
      ..shader = gradient.createShader(rect)
      ..strokeWidth = top.width
      ..style = PaintingStyle.stroke;

    canvas.drawPath(path, paint);
  }
}

class GradientBorderSide extends BorderSide {
  final Gradient gradient;

  const GradientBorderSide({
    required this.gradient,
    required super.width,
  }) : super(
          style: BorderStyle.solid,
        );

  void paint(
    Canvas canvas,
    Path path, {
    double strokeAlign = BorderSide.strokeAlignCenter,
    TextDirection? textDirection,
  }) {
    final Paint paint = Paint()
      ..shader = gradient.createShader(path.getBounds())
      ..strokeWidth = width
      ..style = PaintingStyle.stroke;

    canvas.drawPath(path, paint);
  }
}
