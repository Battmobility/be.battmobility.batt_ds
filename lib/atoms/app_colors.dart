import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const Color b2cKeyColor = Color(0xFF4F8459);
  static const Color b2bKeyColor = Color(0xFF1943A3);

  static const Color white = Color(0xffffffff);

  static const Color graphiteDrive = Color(0xFF4F4F4F);
  static const Color urbanMist = Color(0xFFD8D8D8);
  static const Color futureBlue = Color(0xFF3D73F0);
  static const Color skySurge = Color(0xFF87B7FF);
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

  static const int _primaryValue = 0xFF00AEED;

  static MaterialColor get primaryColors {
    return const MaterialColor(
      _primaryValue,
      <int, Color>{
        50: Color(0xFFDFF6FB),
        100: Color(0xFFADE6F6),
        200: Color(0xFF78D6F1),
        300: Color(0xFF38C7ED),
        400: Color(0xFF00BAED),
        500: Color(_primaryValue),
        600: Color(0xFF00A0DF),
        700: Color(0xFF008DCC),
        800: Color(0xFF007CBA),
        900: Color(0xFF005D9A),
      },
    );
  }

  static const int _secondaryValue = 0xFFE39A1D;
  static const int _secondaryValueMiles = 0xFFA75616;

  static MaterialColor get secondaryColors =>
      const MaterialColor(_secondaryValueMiles, <int, Color>{
        50: Color(0xFFFDFAED),
        100: Color(0xFFFAF1CB),
        200: Color(0xFFF4E193),
        300: Color(0xFFEFCD5A),
        400: Color(0xFFEBB934),
        500: Color(_secondaryValue),
        600: Color(0xFFD47D17),
        700: Color(_secondaryValueMiles),
        800: Color(0xFF884218),
        900: Color(0xFF703717),
      });

  static const defaultGrey = Color(_greyValue);
  static const int _greyValue = 0xFF626478;

  static MaterialColor get grey => const MaterialColor(
        _greyValue,
        <int, Color>{
          50: Color(0xFFF2F2F3),
          100: Color(0xFFE4E4E9),
          200: Color(0xFFCCCDD5),
          300: Color(0xFFA9ACB7),
          400: Color(0xFF9095A4),
          500: Color(_greyValue),
          600: Color(0xFF545566),
          700: Color(0xFF484956),
          800: Color(0xFF40414A),
          900: Color(0xFF242429),
          950: Color(0xFF121214),
        },
      );

  static const defaultGreen = Color(_greenValue);
  static const int _greenValue = 0xFF5bc8af;

  static MaterialColor get green => const MaterialColor(
        _greenValue,
        <int, Color>{
          50: Color(0xFFeffaf7),
          100: Color(0xFFcfefe8),
          200: Color(0xFFafe4d8),
          300: Color(0xFF70cfb9),
          400: Color(0xFF50c4aa),
          500: Color(_greenValue),
          600: Color(0xFF308f79),
          700: Color(0xFF256f5e),
          800: Color(0xFF1b5043),
          900: Color(0xFF103028),
        },
      );

  static const int _orangeValue = 0xFFEF7225;

  static MaterialColor get orange => const MaterialColor(
        _orangeValue,
        <int, Color>{
          50: Color(0xFFFEF6EE),
          100: Color(0xFFFDECD7),
          200: Color(0xFFF9D4AF),
          300: Color(0xFFF5B57C),
          400: Color(0xFFF18C46),
          500: Color(_orangeValue),
          600: Color(0xFFC64710),
          700: Color(0xFFB83F16),
          800: Color(0xFF933319),
          900: Color(0xFF762C18),
        },
      );

  static const defaultRed = Color(_redValue);
  static const int _redValue = 0xFFFF5C74;

  static MaterialColor get red => const MaterialColor(
        _redValue,
        <int, Color>{
          50: Color(0xFFFFF0F1),
          100: Color(0xFFFFE2E5),
          200: Color(0xFFFFCAD0),
          300: Color(0xFFFF9FA9),
          400: Color(0xFFFF8595),
          500: Color(_redValue),
          600: Color(0xFFDA1039),
          700: Color(0xFFB2093C),
          800: Color(0xFF9F0A30),
          900: Color(0xFF840B2E),
        },
      );

  static const defaultPurple = Color(0xFFB030B0);
  static const int _purpleValue = 0xFFB030B0;

  static MaterialColor get purple => const MaterialColor(
        _purpleValue,
        <int, Color>{
          50: Color(0xFFFAEBFA),
          100: Color(0xFFEFC3EF),
          200: Color(0xffe49be4),
          300: Color(0xffdc7fdc),
          400: Color(0xFFcd47cd),
          500: Color(_purpleValue),
          600: Color(0xff962996),
          700: Color(0xFF752075),
          800: Color(0xFF641b64),
          900: Color(0xFF3c103c),
        },
      );

  static const Color iconColor = Color(_primaryValue);

  static const Color black = Color(0xff000004);
  static const Color brown = Color(0xffb5935e);

  static const Color shadow = Color(0xFF999999);
  static const Color shadowDark = Color(0xff000000);

  static const Color background = Color(0xFFFFFFFF);
  static const Color backgroundDark = Color(0xff000004);
  static const Color backgroundModal = Color(0xDDFFFFFF);
  static const Color cardBackground = Color(0xB3FFFFFF);
  static Color cardListBackground = const Color(0xFFF2F2F3);

  static const Color navigationBarBackground = Color(0xFF007CBA);
  static const Color navigationBarBackgroundDark = Color(0xFF005D9A);
  static const Color navigationBarLabel = Color(0xFFFFFFFF);
  static const Color navigationBarIcon = Color(0xFFFFFFFF);

  static const Color divider = Color(_greyValue);

  static const Color borderColor = Color.fromRGBO(0, 0, 0, 0.12);

  static const Color upcomingBookingCard = Color(0xFFE5F7FD);
  static const Color upcomingBookingCardBorder = Color(0xFFB6D7E2);

  static const Color textColor = Color(0xff000004);
  static const Color textColorLight = AppColors.graphiteDrive;
  static const Color textColorExtraLight = Color(0x33000000);

  static const Color heroTextColor = Color(0xFFFFFFFF);
  static const Color heroTextColorDark = Color(0xFFFFFFFF);

  static const Color disabledTextColor = Color(0xff555555);
  static const Color disabledTextColorDark = Color(0xff777777);

  static const Color primaryTextColor = Color(0xFF000004);
  static const Color primaryTextColorLight = Color(0x99000004);

  static const Color secondaryTextColor = Color(0xFF005D9A);

  static const Color primaryButtonTextColor = Color(0xFFFFFFFF);
  static const Color secondaryButtonTextColor = Color(0xFF00AEED);

  static const Color primaryButtonBackgroundColor = Color(0xFF00AEED);
  static const Color secondaryButtonBackgroundColor = Color(0xFF40414A);

  static const Color primaryIconColor = Color(0xFF000004);
  static const Color secondaryIconColor = Color(0xFF005D9A);

  static const Color accentTextColor = Color(0xFF000000);
  static const Color accentIconColor = Color.fromARGB(255, 101, 26, 26);

  static const Color checkBoxColor = Color(_orangeValue);

  // License plate
  static const Color licensePlateBelgiumTextColor = Color(0xFF861a22);
  static const Color licensePlateBelgiumBoxColor = Color(0xFF053673);
  static const Color licensePlateBelgiumBackgroundColor = Color(0xFFFFFFFF);

  // Hues: for the markers on the map
  // Use https://www.rapidtables.com/convert/color/rgb-to-hsv.html to get the hue value
  static const double primaryDarkHue = 192.0;
  static const double secondaryDarkHue = 43.0;

  // colors for the availability columns
  static const Color columnColor = Color.fromARGB(92, 255, 255, 255);
  static const Color alternateColumnColor =
      Color.fromARGB(92, 0xDF, 0xF6, 0xFB);

  // colors for the availabilities on My Vehicle (placed separately here so these can be changed easily)
  static Color bookingRightBackground = primaryColors[50]!;
  static Color bookingLeftBackground = primaryColors[800]!;
  static Color bookingRightLabel = primaryColors[800]!;

  static Color availableRightBackground = Colors.green[100]!;
  static Color availableLeftBackground = Colors.green[700]!;
  static Color availableRightLabel = Colors.green[900]!;

  static Color unavailableRightBackground = grey[200]!;
  static Color unavailableLeftBackground = grey[900]!;
  static Color unavailableRightLabel = grey[900]!;
}
