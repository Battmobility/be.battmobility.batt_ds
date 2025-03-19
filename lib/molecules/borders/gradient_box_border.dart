import 'package:batt_ds/theme/gradient_theme.dart';
import 'package:flutter/material.dart';

class CustomGradientBoxDecoration extends BoxDecoration {
  final double borderWidth;

  const CustomGradientBoxDecoration({
    required Gradient gradient,
    required this.borderWidth,
    BorderRadiusGeometry? borderRadius,
    BoxShape shape = BoxShape.rectangle,
    BoxBorder? border,
    List<BoxShadow>? boxShadow,
  }) : super(
          gradient: gradient,
          borderRadius: borderRadius,
          shape: shape,
          border: border,
          boxShadow: boxShadow,
        );

  factory CustomGradientBoxDecoration.standard() {
    return CustomGradientBoxDecoration(
      gradient: GradientTheme.light().inputBorderGradient,
      borderWidth: 2.0,
    );
  }

  @override
  CustomGradientBoxDecoration copyWith({
    BlendMode? backgroundBlendMode,
    BoxBorder? border,
    BorderRadiusGeometry? borderRadius,
    List<BoxShadow>? boxShadow,
    Color? color,
    Gradient? gradient,
    DecorationImage? image,
    BoxShape? shape,
    double? borderWidth,
  }) {
    return CustomGradientBoxDecoration(
      gradient: gradient ?? this.gradient!,
      borderWidth: borderWidth ?? this.borderWidth,
      borderRadius: borderRadius ?? this.borderRadius,
      shape: shape ?? this.shape,
      border: border ?? this.border,
      boxShadow: boxShadow ?? this.boxShadow,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is CustomGradientBoxDecoration &&
        other.gradient == gradient &&
        other.borderWidth == borderWidth &&
        other.borderRadius == borderRadius &&
        other.shape == shape &&
        other.border == border &&
        other.boxShadow == boxShadow;
  }

  @override
  int get hashCode {
    return Object.hash(
      gradient,
      borderWidth,
      borderRadius,
      shape,
      border,
      boxShadow,
    );
  }
}
