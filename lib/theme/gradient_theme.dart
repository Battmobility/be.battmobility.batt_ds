import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

class GradientTheme extends ThemeExtension<GradientTheme> {
  const GradientTheme({
    required this.cardBackgroundGradient,
    required this.heroGradient,
    required this.defaultAppBarGradient,
    required this.activeAppBarGradient,
    required this.inputBorderGradient,
    required this.warningBorderGradient,
    required this.errorBorderGradient,
    required this.flowGradient,
    required this.ctaButtonGradient,
    required this.backgroundGradient,
    required this.lightBlueBackgroundGradient,
    required this.activeCardBackgroundGradient,
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
      activeAppBarGradient: LinearGradient(
        colors: [AppColors.futureBlue, AppColors.b2bKeyColor],
        begin: Alignment.topLeft,
        end: Alignment.bottomCenter,
        transform: GradientRotation(0.6),
      ),
      defaultAppBarGradient: LinearGradient(
          colors: [AppColors.urbanMist, AppColors.offWhite],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter),
      inputBorderGradient: LinearGradient(
        colors: [AppColors.futureBlue, AppColors.b2bKeyColor],
        stops: [0.6, 1.0],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        transform: GradientRotation(0.6),
      ),
      warningBorderGradient: LinearGradient(
        colors: [
          AppColors.warningPrimary,
          AppColors.warningSecondary,
          AppColors.ctaSand
        ],
        stops: [0.6, 0.8, 1.0],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        transform: GradientRotation(0.6),
      ),
      errorBorderGradient: LinearGradient(
        colors: [
          AppColors.errorPrimary,
          AppColors.errorSecondary,
          AppColors.errorPrimary
        ],
        stops: [0.6, 0.8, 1.0],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        transform: GradientRotation(0.6),
      ),
      flowGradient: LinearGradient(
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
          AppColors.b2bKeyColor,
          AppColors.futureBlue,
          AppColors.skySurge,
          AppColors.softGrove
        ],
        transform: GradientRotation(-1),
      ),
      backgroundGradient: LinearGradient(
        colors: [
          AppColors.greenShift,
          AppColors.b2bKeyColor,
          AppColors.b2bKeyColor,
          AppColors.b2bKeyColor,
          AppColors.b2bKeyColor,
          AppColors.b2bKeyColor,
          AppColors.greenShift
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      activeCardBackgroundGradient: LinearGradient(
        colors: [
          AppColors.futureBlue,
          AppColors.b2bKeyColor,
        ],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
      ),
      lightBlueBackgroundGradient: LinearGradient(
        colors: [Color(0xFFE7EFF9), Color(0xFFF6F9FD)],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
    );
  }

  final Gradient cardBackgroundGradient;

  final Gradient activeCardBackgroundGradient;

  final Gradient heroGradient;

  final Gradient activeAppBarGradient;

  final Gradient defaultAppBarGradient;

  final Gradient inputBorderGradient;

  final Gradient flowGradient;

  final Gradient warningBorderGradient;

  final Gradient errorBorderGradient;

  final Gradient ctaButtonGradient;

  final Gradient backgroundGradient;

  final Gradient lightBlueBackgroundGradient;

  @override
  ThemeExtension<GradientTheme> copyWith({
    Gradient? cardBackgroundGradient,
    Gradient? heroGradient,
    Gradient? activeAppBarGradient,
    Gradient? defaultAppBarGradient,
    Gradient? inputBorderGradient,
    Gradient? warningBorderGradient,
    Gradient? errorBorderGradient,
    Gradient? flowGradient,
    Gradient? ctaButtonGradient,
    Gradient? backgroundGradient,
    Gradient? lightBlueBackgroundGradient,
    Gradient? activeCardBackgroundGradient,
  }) {
    return GradientTheme(
      cardBackgroundGradient:
          cardBackgroundGradient ?? this.cardBackgroundGradient,
      activeCardBackgroundGradient:
          cardBackgroundGradient ?? this.activeCardBackgroundGradient,
      heroGradient: heroGradient ?? this.heroGradient,
      activeAppBarGradient: activeAppBarGradient ?? this.activeAppBarGradient,
      defaultAppBarGradient:
          defaultAppBarGradient ?? this.defaultAppBarGradient,
      inputBorderGradient: inputBorderGradient ?? this.inputBorderGradient,
      warningBorderGradient:
          warningBorderGradient ?? this.warningBorderGradient,
      errorBorderGradient: errorBorderGradient ?? this.errorBorderGradient,
      flowGradient: flowGradient ?? this.flowGradient,
      ctaButtonGradient: ctaButtonGradient ?? this.ctaButtonGradient,
      backgroundGradient: backgroundGradient ?? this.backgroundGradient,
      lightBlueBackgroundGradient:
          lightBlueBackgroundGradient ?? this.lightBlueBackgroundGradient,
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
      activeCardBackgroundGradient: Gradient.lerp(
          activeCardBackgroundGradient, other.activeCardBackgroundGradient, t)!,
      heroGradient: Gradient.lerp(heroGradient, other.heroGradient, t)!,
      activeAppBarGradient:
          Gradient.lerp(activeAppBarGradient, other.activeAppBarGradient, t)!,
      defaultAppBarGradient:
          Gradient.lerp(defaultAppBarGradient, other.defaultAppBarGradient, t)!,
      inputBorderGradient:
          Gradient.lerp(inputBorderGradient, other.inputBorderGradient, t)!,
      warningBorderGradient:
          Gradient.lerp(warningBorderGradient, other.warningBorderGradient, t)!,
      errorBorderGradient:
          Gradient.lerp(errorBorderGradient, other.errorBorderGradient, t)!,
      flowGradient: Gradient.lerp(flowGradient, other.flowGradient, t)!,
      ctaButtonGradient:
          Gradient.lerp(ctaButtonGradient, other.ctaButtonGradient, t)!,
      backgroundGradient:
          Gradient.lerp(backgroundGradient, other.backgroundGradient, t)!,
      lightBlueBackgroundGradient: Gradient.lerp(
          lightBlueBackgroundGradient, other.lightBlueBackgroundGradient, t)!,
    );
  }
}
