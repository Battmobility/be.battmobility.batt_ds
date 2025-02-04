import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

class GradientTheme extends ThemeExtension<GradientTheme> {
  const GradientTheme({
    required this.cardBackgroundGradient,
    required this.heroGradient,
  });

  /// {@macro app_button_theme}
  factory GradientTheme.light() {
    return GradientTheme(
      cardBackgroundGradient: LinearGradient(
        begin: Alignment.bottomLeft,
        end: Alignment.topCenter,
        stops: const [0, 1],
        colors: [
          AppColors.grey[200]!,
          AppColors.grey[100]!,
        ],
      ),
      heroGradient: RadialGradient(
        colors: [
          AppColors.orange[500]!,
          AppColors.primaryColors[500]!,
        ],
        center: const Alignment(-0.65, 0),
        radius: 3.0,
      ),
    );
  }

  factory GradientTheme.dark() {
    return GradientTheme(
      cardBackgroundGradient: LinearGradient(
        begin: Alignment.bottomLeft,
        end: Alignment.topCenter,
        stops: const [0, 1],
        colors: [
          AppColors.grey[400]!,
          AppColors.grey[200]!,
        ],
      ),
      heroGradient: RadialGradient(
        colors: [
          AppColors.orange[500]!,
          AppColors.primaryColors[500]!,
        ],
        center: const Alignment(-0.65, 0),
        radius: 3.0,
      ),
    );
  }

  /// The gradient for cards and cells.
  final Gradient cardBackgroundGradient;

  /// The gradient for hero headers.
  final Gradient heroGradient;

  @override
  ThemeExtension<GradientTheme> copyWith({
    Gradient? cardBackgroundGradient,
    Gradient? heroGradient,
  }) {
    return GradientTheme(
      cardBackgroundGradient:
          cardBackgroundGradient ?? this.cardBackgroundGradient,
      heroGradient: heroGradient ?? this.heroGradient,
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
    );
  }
}
