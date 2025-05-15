import 'package:batt_ds/theme/app_theme.dart';
import 'package:batt_ds_example/storybook_pages/intro_page.dart';
import 'package:batt_ds_example/storybook_pages/organisms/booking_card_page.dart';
import 'storybook_pages/molecules/battery_icon_page.dart';
import 'storybook_pages/molecules/borders_page.dart';
import 'storybook_pages/molecules/chip_page.dart';
import 'storybook_pages/molecules/icon_text_button_page.dart';
import 'storybook_pages/molecules/inputs_page.dart';
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
      name: 'Molecules/Borders');

  final batteryIconsStory = Story(
      builder: (context) {
        return MaterialApp(
          home: const BatteryIconsPage(),
          theme: lightTheme(context),
          darkTheme: darkTheme(context),
        );
      },
      name: 'Molecules/Battery Icons');

  final inputsStory = Story(
      builder: (context) {
        return MaterialApp(
          home: const InputsPage(),
          theme: lightTheme(context),
          darkTheme: darkTheme(context),
        );
      },
      name: 'Molecules/Inputs');

  // Organisms
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

  final locationCardsStory = Story(
      builder: (context) {
        return MaterialApp(
          home: const LocationCardsPage(),
          theme: lightTheme(context),
          darkTheme: darkTheme(context),
        );
      },
      name: 'Organisms/Location cards');

  final bookingCardsStory = Story(
      builder: (context) {
        return MaterialApp(
          home: const BookingCardsPage(),
          theme: lightTheme(context),
          darkTheme: darkTheme(context),
        );
      },
      name: 'Organisms/Booking cards');

  return Storybook(
    stories: [
      introStory,
      solidButtonsStory,
      outlinedButtonsStory,
      simpleButtonsStory,
      iconTextButtonStory,
      chipStory,
      mapMarkersStory,
      licensePlateStory,
      bordersStory,
      inputsStory,
      batteryIconsStory,
      snackBarStory,
      vehicleCardsStory,
      locationCardsStory,
      bookingCardsStory
    ],
    initialStory: "Home",
    plugins: initializePlugins(
        enableThemeMode: true,
        enableCodeView: false,
        enableTimeDilation: false,
        enableDirectionality: false),
  );
}
