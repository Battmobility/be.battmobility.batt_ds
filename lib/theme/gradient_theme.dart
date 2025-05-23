import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

class GradientTheme extends ThemeExtension<GradientTheme> {
  const GradientTheme({
    required this.cardBackgroundGradient,
    required this.heroGradient,
    required this.inputBorderGradient,
    required this.canvasBackgroundGradient,
    required this.progressGradient,
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
        colors: [AppColors.futureBlue, AppColors.b2bKeyColor],
        center: Alignment(-0.6, 0),
        radius: 2.0,
      ),
      inputBorderGradient: LinearGradient(
        colors: [
          AppColors.futureBlue,
          AppColors.b2cKeyColor,
          AppColors.greenShift,
          AppColors.skySurge,
          AppColors.futureBlue
        ],
        transform: GradientRotation(-0.79),
      ),
      canvasBackgroundGradient: LinearGradient(
        colors: [AppColors.offWhite, AppColors.softGrove],
        transform: GradientRotation(-0.79),
      ),
      progressGradient: LinearGradient(
        colors: [
          AppColors.futureBlue,
          AppColors.greenShift,
          AppColors.skySurge
        ],
        stops: [0.35, 0.65, 1.0],
        transform: GradientRotation(1.5),
      ),
    );
  }

  /// The gradient for cards and cells.
  final Gradient cardBackgroundGradient;

  /// The gradient for hero headers.
  final Gradient heroGradient;

// The gradient for input borders
  final Gradient inputBorderGradient;

  final Gradient progressGradient;

  // The background gradient
  final Gradient canvasBackgroundGradient;

  @override
  ThemeExtension<GradientTheme> copyWith({
    Gradient? cardBackgroundGradient,
    Gradient? heroGradient,
    Gradient? inputBorderGradient,
    Gradient? canvasBackgroundGradient,
    Gradient? progressGradient,
  }) {
    return GradientTheme(
      cardBackgroundGradient:
          cardBackgroundGradient ?? this.cardBackgroundGradient,
      heroGradient: heroGradient ?? this.heroGradient,
      inputBorderGradient: inputBorderGradient ?? this.inputBorderGradient,
      canvasBackgroundGradient:
          canvasBackgroundGradient ?? this.canvasBackgroundGradient,
      progressGradient: progressGradient ?? this.progressGradient,
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
      progressGradient:
          Gradient.lerp(progressGradient, other.progressGradient, t)!,
    );
  }
}
