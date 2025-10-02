import 'package:batt_ds_example/storybook_pages/atoms/icons_page.dart';
import 'package:batt_ds_example/storybook_pages/atoms/progress_page.dart';
import 'package:batt_ds_example/storybook_pages/atoms/typography_page.dart';
import 'package:batt_ds_example/storybook_pages/intro_page.dart';
import 'package:batt_ds_example/storybook_pages/molecules/cta_buttons_page.dart';
import 'package:batt_ds_example/storybook_pages/molecules/shadows_page.dart';
import 'package:batt_ds_example/storybook_pages/organisms/app_bar_page.dart';
import 'package:batt_ds_example/storybook_pages/organisms/battom_navigation_page.dart';
import 'package:batt_ds_example/storybook_pages/organisms/booking_card_page.dart';
import 'package:batt_ds_example/storybook_pages/organisms/headers_page.dart';
import 'package:batt_ds_example/storybook_pages/organisms/list_section_page.dart';
import 'package:batt_ds_example/storybook_pages/organisms/nonavailability_card_page.dart';
import 'package:batt_ds_example/storybook_pages/organisms/plan_card_page.dart';
import 'package:batt_ds_example/storybook_pages/organisms/rating_bar_page.dart';
import 'package:batt_ds_example/storybook_pages/organisms/result_card_page.dart';
import 'package:batt_ds_example/storybook_pages/organisms/sort_option_card_page.dart';
import 'storybook_pages/molecules/battery_icon_page.dart';
import 'storybook_pages/molecules/borders_page.dart';
import 'storybook_pages/molecules/chip_page.dart';
import 'storybook_pages/molecules/icon_text_button_page.dart';
import 'storybook_pages/molecules/license_plate_page.dart';
import 'storybook_pages/molecules/outlined_buttons_page.dart';
import 'storybook_pages/molecules/solid_button_page.dart';
import 'storybook_pages/molecules/text_buttons_page.dart';
import 'storybook_pages/organisms/location_card_page.dart';
import 'storybook_pages/organisms/vehicle_card_page.dart';
import 'package:flutter/material.dart';
import 'package:batt_ds/batt_ds.dart';
import 'package:storybook_toolkit/storybook_toolkit.dart';

import 'storybook_pages/molecules/map_markers_page.dart';
import 'storybook_pages/organisms/snackbar_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final app = StorybookApp();
  await ThemeScopeWidget.initialize(app);
  runApp(app);
}

class StorybookApp extends StatelessWidget {
  const StorybookApp({super.key});

  @override
  Widget build(BuildContext context) => storybook;
}

Storybook get storybook {
  final introStory = Story(
      builder: (context) {
        return MaterialApp(
          home: const IntroPage(),
          theme: lightTheme(context),
          darkTheme: darkTheme(context),
        );
      },
      name: 'Home');

  // Atoms
  final typographyStory = Story(
      builder: (context) {
        return MaterialApp(
          home: const Typographypage(),
          theme: lightTheme(context),
          darkTheme: darkTheme(context),
        );
      },
      name: 'Atoms/Typography');

  final iconsStory = Story(
      builder: (context) {
        return MaterialApp(
          home: const IconsPage(),
          theme: lightTheme(context),
          darkTheme: darkTheme(context),
        );
      },
      name: 'Atoms/Icons');

  final progressStory = Story(
      builder: (context) {
        return MaterialApp(
          home: const ProgressPage(),
          theme: lightTheme(context),
          darkTheme: darkTheme(context),
        );
      },
      name: 'Atoms/Progress');

  // Molecules
  final chipStory = Story(
      builder: (context) {
        return MaterialApp(
          home: const ChipPage(),
          theme: lightTheme(context),
          darkTheme: darkTheme(context),
        );
      },
      name: 'Molecules/Chips');

  final ctaButtonsStory = Story(
      builder: (context) {
        return MaterialApp(
          home: const CtaButtonsPage(),
          theme: lightTheme(context),
          darkTheme: darkTheme(context),
        );
      },
      name: 'Molecules/CTA buttons');

  final solidButtonsStory = Story(
      builder: (context) {
        return MaterialApp(
          home: const SolidButtonsPage(),
          theme: lightTheme(context),
          darkTheme: darkTheme(context),
        );
      },
      name: 'Molecules/Solid buttons');

  final simpleButtonsStory = Story(
      builder: (context) {
        return MaterialApp(
          home: const TextButtonsPage(),
          theme: lightTheme(context),
          darkTheme: darkTheme(context),
        );
      },
      name: 'Molecules/Simple buttons');

  final outlinedButtonsStory = Story(
      builder: (context) {
        return MaterialApp(
          home: const OutlinedButtonsPage(),
          theme: lightTheme(context),
          darkTheme: darkTheme(context),
        );
      },
      name: 'Molecules/Outlined buttons');

  final iconTextButtonStory = Story(
      builder: (context) {
        return MaterialApp(
          home: const IconTextButtonPage(),
          theme: lightTheme(context),
          darkTheme: darkTheme(context),
        );
      },
      name: 'Molecules/Icon text buttons');

  final mapMarkersStory = Story(
      builder: (context) {
        return MaterialApp(
          home: const MapMarkersPage(),
          theme: lightTheme(context),
          darkTheme: darkTheme(context),
        );
      },
      name: 'Molecules/Map markers');

  final licensePlateStory = Story(
      builder: (context) {
        return MaterialApp(
          home: const LicensePlatePage(),
          theme: lightTheme(context),
          darkTheme: darkTheme(context),
        );
      },
      name: 'Molecules/License plates');

  final bordersStory = Story(
      builder: (context) {
        return MaterialApp(
          home: const BordersPage(),
          theme: lightTheme(context),
          darkTheme: darkTheme(context),
        );
      },
      name: 'Molecules/Gradients');

  final shadowsStory = Story(
      builder: (context) {
        return MaterialApp(
          home: const ShadowsPage(),
          theme: lightTheme(context),
          darkTheme: darkTheme(context),
        );
      },
      name: 'Molecules/Shadows');

  final batteryIconsStory = Story(
      builder: (context) {
        return MaterialApp(
          home: const BatteryIconsPage(),
          theme: lightTheme(context),
          darkTheme: darkTheme(context),
        );
      },
      name: 'Molecules/Battery Icons');

  // Organisms
  final battomNavigationStory = Story(
      builder: (context) {
        return MaterialApp(
          home: const BattomnavigationPage(),
          theme: lightTheme(context),
          darkTheme: darkTheme(context),
        );
      },
      name: 'Organisms/Bottom navigation');

  final listSectionsStory = Story(
      builder: (context) {
        return MaterialApp(
          home: const ListSectionPage(),
          theme: lightTheme(context),
          darkTheme: darkTheme(context),
        );
      },
      name: 'Organisms/List sections');

  final snackBarStory = Story(
      builder: (context) {
        return MaterialApp(
          home: const SnackbarPage(),
          theme: lightTheme(context),
          darkTheme: darkTheme(context),
        );
      },
      name: 'Organisms/Snackbars');

  final vehicleCardsStory = Story(
      builder: (context) {
        return MaterialApp(
          home: const VehicleCardsPage(),
          theme: lightTheme(context),
          darkTheme: darkTheme(context),
        );
      },
      name: 'Organisms/Vehicle cards');

  final appBarsStory = Story(
      builder: (context) {
        return MaterialApp(
          home: const AppBarPage(),
          theme: lightTheme(context),
          darkTheme: darkTheme(context),
        );
      },
      name: 'Organisms/App bars');

  final resultCardsStory = Story(
      builder: (context) {
        return MaterialApp(
          home: const ResultCardsPage(),
          theme: lightTheme(context),
          darkTheme: darkTheme(context),
        );
      },
      name: 'Organisms/Result cards');

  final planCardsStory = Story(
      builder: (context) {
        return MaterialApp(
          home: const PlanCardsPage(),
          theme: lightTheme(context),
          darkTheme: darkTheme(context),
        );
      },
      name: 'Organisms/Plan cards');

  final sortOptionCardsStory = Story(
      builder: (context) {
        return MaterialApp(
          home: const SortOptioncardPage(),
          theme: lightTheme(context),
          darkTheme: darkTheme(context),
        );
      },
      name: 'Organisms/Sort option cards');

  final locationCardsStory = Story(
      builder: (context) {
        return MaterialApp(
          home: const LocationCardsPage(),
          theme: lightTheme(context),
          darkTheme: darkTheme(context),
        );
      },
      name: 'Organisms/Location cards');

  final ratingBarStory = Story(
      builder: (context) {
        return MaterialApp(
          home: const RatingBarPage(),
          theme: lightTheme(context),
          darkTheme: darkTheme(context),
        );
      },
      name: 'Organisms/Rating bars');

  final bookingCardsStory = Story(
      builder: (context) {
        return MaterialApp(
          home: const BookingCardsPage(),
          theme: lightTheme(context),
          darkTheme: darkTheme(context),
        );
      },
      name: 'Organisms/Booking cards');

  final nonAvailabiltyCardsStory = Story(
      builder: (context) {
        return MaterialApp(
          home: const NonAvailabilityCardsPage(),
          theme: lightTheme(context),
          darkTheme: darkTheme(context),
        );
      },
      name: 'Organisms/Nonavailability cards');

  final headersStory = Story(
      builder: (context) {
        return MaterialApp(
          home: const HeadersPage(),
          theme: lightTheme(context),
          darkTheme: darkTheme(context),
        );
      },
      name: 'Organisms/Headers');

  return Storybook(
    stories: [
      typographyStory,
      iconsStory,
      progressStory,
      introStory,
      ctaButtonsStory,
      solidButtonsStory,
      outlinedButtonsStory,
      simpleButtonsStory,
      iconTextButtonStory,
      chipStory,
      mapMarkersStory,
      licensePlateStory,
      bordersStory,
      shadowsStory,
      batteryIconsStory,
      listSectionsStory,
      snackBarStory,
      vehicleCardsStory,
      resultCardsStory,
      locationCardsStory,
      bookingCardsStory,
      nonAvailabiltyCardsStory,
      sortOptionCardsStory,
      planCardsStory,
      headersStory,
      battomNavigationStory,
      appBarsStory,
      ratingBarStory
    ],
    initialStory: "Home",
    plugins: initializePlugins(
        enableThemeMode: true,
        enableCodeView: false,
        enableTimeDilation: false,
        enableDirectionality: false),
  );
}
