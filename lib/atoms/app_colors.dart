import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const Color b2cKeyColor = Color(0xFF4F8459);
  static const Color b2bKeyColor = Color(0xFF1943A3);

  static const Color white = Color(0xffffffff);

  static const Color graphiteDrive = Color(0xFF4F4F4F);
  static const Color urbanMist = Color(0xFFD8D8D8);
  static const Color futureBlue = Color(0xFF3D73F0);
  static const Color secondaryBlue = Color(0xFFE4F3FF);
  static const Color skySurge = Color(0xFF87B7FF);
  static const Color informativeLight = Color(0xFFF1F7FE);
  static const Color airFlow = Color(0xFFBDE3FF);
  static const Color greenShift = Color(0xFF97D7A0);
  static const Color ecoHorizon = Color(0xFFD1E8D1);
  static const Color softGrove = Color(0xFFDFF4E1);
  static const Color transitSand = Color(0xFFEACAA4);
  static const Color pathClay = Color(0xFFF0E1CE);
  static const Color cloudBase = Color(0xFFF7F0E6);
  static const Color offWhite = Color(0xFFF6F9FD);
  static const Color rusticClay = Color(0xFFC45D4E);

  static const Color ctaBrightGreen = Color(0xFF4FB84F);
  static const Color ctaGreen = Color(0xFF6DD19A);
  static const Color ctaSand = Color(0xFFE6B985);

  static const Color successDark = Color(0xFF4F8459);

  static const Color warningPrimary = Color(0xFFFB923C);
  static const Color warningDark = Color(0xFFCE7612);

  static const Color dangerLight = Color(0xFFFDECEE);

  static const Color errorPrimary = Color(0xFFE93F4D);
  static const Color errorDark = Color(0xFFCA1726);

  static const Color black = Color(0xff000004);

  static const Color shadow = Color(0x4E4E4E0A);
  static const Color shadowDark = Color(0xff000000);

  static const Color textColor = Color(0xFF22232A); // neutral 950
  static const Color textColorLight = Color(0xFF545766); // neutral 600
  static const Color textColorExtraLight = Color(0x33000000);

  static const Color disabledTextColor = Color(0xff555555);
  static const Color disabledTextColorDark = Color(0xff777777);

  static const Color primaryTextColorLight = Color(0x99000004);

  static const Color primaryButtonTextColor = Color(0xFFFFFFFF);

  // License plate
  static const Color licensePlateBelgiumTextColor = Color(0xFF861a22);
  static const Color licensePlateBelgiumBoxColor = Color(0xFF053673);
  static const Color licensePlateBelgiumBackgroundColor = Color(0xFFFFFFFF);

  // Greys
  static const _neutralValue = 0xFF626678;

  static MaterialColor get neutralColors {
    return const MaterialColor(
      _neutralValue,
      <int, Color>{
        0: Color(0xFFFFFFFF),
        50: Color(0xFFF5F5F7),
        100: Color(0xFFE5E5E9),
        200: Color(0xFFCCCED6),
        300: Color(0xFFA8ABB8),
        400: Color(0xFF7C8094),
        500: Color(_neutralValue),
        600: Color(0xFF545766),
        700: Color(0xFF474A57),
        800: Color(0xFF3E404C),
        900: Color(0xFF373943),
        950: Color(0xFF22232A)
      },
    );
  }
}
