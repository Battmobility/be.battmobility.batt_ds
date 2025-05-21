import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

class GradientTheme extends ThemeExtension<GradientTheme> {
  const GradientTheme({
    required this.cardBackgroundGradient,
    required this.heroGradient,
    required this.inputBorderGradient,
    required this.canvasBackgroundGradient,
  });

  factory GradientTheme.standard() {
    return const GradientTheme(
      cardBackgroundGradient: LinearGradient(
        begin: Alignment.bottomLeft,
        end: Alignment.topCenter,
        stops: [0, 1],
        colors: [
          AppColors.offWhite,
          AppColors.urbanMist,
        ],
      ),
      heroGradient: RadialGradient(
        colors: [AppColors.softGrove, AppColors.futureBlue],
        center: Alignment(-0.6, 0),
        radius: 2.0,
      ),
      inputBorderGradient: LinearGradient(
        colors: [
          AppColors.futureBlue,
          AppColors.ecoHorizon,
          AppColors.futureBlue
        ],
        transform: GradientRotation(-0.79),
      ),
      canvasBackgroundGradient: LinearGradient(
        colors: [AppColors.background, AppColors.skySurge],
        transform: GradientRotation(-0.79),
      ),
    );
  }

  /// The gradient for cards and cells.
  final Gradient cardBackgroundGradient;

  /// The gradient for hero headers.
  final Gradient heroGradient;

// The gradient for input borders
  final Gradient inputBorderGradient;

  // The background gradient
  final Gradient canvasBackgroundGradient;

  @override
  ThemeExtension<GradientTheme> copyWith({
    Gradient? cardBackgroundGradient,
    Gradient? heroGradient,
    Gradient? inputBorderGradient,
    Gradient? canvasBackgroundGradient,
  }) {
    return GradientTheme(
      cardBackgroundGradient:
          cardBackgroundGradient ?? this.cardBackgroundGradient,
      heroGradient: heroGradient ?? this.heroGradient,
      inputBorderGradient: inputBorderGradient ?? this.inputBorderGradient,
      canvasBackgroundGradient:
          canvasBackgroundGradient ?? this.canvasBackgroundGradient,
    );
  }

  @override
  ThemeExtension<GradientTheme> lerp(
    covariant ThemeExtension<GradientTheme>? other,
    double t,
  ) {
    if (other is! GradientTheme) {
      return this;
    }

    return GradientTheme(
      cardBackgroundGradient: Gradient.lerp(
          cardBackgroundGradient, other.cardBackgroundGradient, t)!,
      heroGradient: Gradient.lerp(heroGradient, other.heroGradient, t)!,
      inputBorderGradient:
          Gradient.lerp(inputBorderGradient, other.inputBorderGradient, t)!,
      canvasBackgroundGradient: Gradient.lerp(
          canvasBackgroundGradient, other.canvasBackgroundGradient, t)!,
    );
  }
}
