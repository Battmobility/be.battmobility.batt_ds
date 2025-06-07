import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

class GradientTheme extends ThemeExtension<GradientTheme> {
  const GradientTheme({
    required this.cardBackgroundGradient,
    required this.heroGradient,
    required this.inputBorderGradient,
    required this.errorBorderGradient,
    required this.progressGradient,
    required this.ctaButtonGradient,
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
        colors: [AppColors.futureBlue, AppColors.greenShift],
        stops: [0.6, 1.0],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        transform: GradientRotation(0.6),
      ),
      errorBorderGradient: LinearGradient(
        colors: [
          AppColors.errorBorderPrimary,
          AppColors.errorBorderSecondary,
          AppColors.errorBorderPrimary
        ],
        stops: [0.6, 0.8, 1.0],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        transform: GradientRotation(0.6),
      ),
      progressGradient: LinearGradient(
        colors: [AppColors.futureBlue, AppColors.greenShift],
        stops: [0.6, 1.0],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        transform: GradientRotation(0.6),
      ),
      ctaButtonGradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          AppColors.b2bKeyColor,
          AppColors.b2bKeyColor,
          AppColors.b2bKeyColor,
          AppColors.skySurge
        ],
        transform: GradientRotation(0.05),
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
  final Gradient errorBorderGradient;

  /// The gradient for CTA buttons
  final Gradient ctaButtonGradient;

  @override
  ThemeExtension<GradientTheme> copyWith({
    Gradient? cardBackgroundGradient,
    Gradient? heroGradient,
    Gradient? inputBorderGradient,
    Gradient? errorBorderGradient,
    Gradient? progressGradient,
    Gradient? ctaButtonGradient,
  }) {
    return GradientTheme(
      cardBackgroundGradient:
          cardBackgroundGradient ?? this.cardBackgroundGradient,
      heroGradient: heroGradient ?? this.heroGradient,
      inputBorderGradient: inputBorderGradient ?? this.inputBorderGradient,
      errorBorderGradient: errorBorderGradient ?? this.errorBorderGradient,
      progressGradient: progressGradient ?? this.progressGradient,
      ctaButtonGradient: ctaButtonGradient ?? this.ctaButtonGradient,
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
      errorBorderGradient:
          Gradient.lerp(errorBorderGradient, other.errorBorderGradient, t)!,
      progressGradient:
          Gradient.lerp(progressGradient, other.progressGradient, t)!,
      ctaButtonGradient:
          Gradient.lerp(ctaButtonGradient, other.ctaButtonGradient, t)!,
    );
  }
}
