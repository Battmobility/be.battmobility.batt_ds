import 'package:batt_ds/theme/gradient_theme.dart';
import 'package:flutter/material.dart';

class GradientBorderDecoration extends BoxDecoration {
  GradientBorderDecoration({
    required Gradient gradient,
    required double borderWidth,
    BorderRadius? borderRadius,
  }) : super(
          border: _buildGradientBorder(gradient, borderWidth),
          borderRadius: borderRadius,
        );

  factory GradientBorderDecoration.standard() {
    return GradientBorderDecoration(
      gradient: GradientTheme.light().inputBorderGradient,
      borderWidth: 2.0,
    );
  }

  static Border _buildGradientBorder(Gradient gradient, double width) {
    if (gradient is LinearGradient) {
      return Border.all(
        width: width,
        color: _getGradientMainColor(gradient),
      );
    }

    return Border(
      top: _buildGradientBorderSide(gradient, width),
      right: _buildGradientBorderSide(gradient, width),
      bottom: _buildGradientBorderSide(gradient, width),
      left: _buildGradientBorderSide(gradient, width),
    );
  }

  static BorderSide _buildGradientBorderSide(Gradient gradient, double width) {
    return BorderSide(
      width: width,
      color: _getGradientMainColor(gradient),
    );
  }

  static Color _getGradientMainColor(Gradient gradient) {
    if (gradient.colors.isEmpty) {
      return Colors.transparent;
    }
    return gradient.colors.first;
  }
}
