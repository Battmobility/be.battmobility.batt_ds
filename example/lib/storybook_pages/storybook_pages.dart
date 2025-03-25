import 'snackbar_page.dart';
import 'rounded_button_page.dart';
import 'package:batt_ds/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:storybook_toolkit/storybook_toolkit.dart';

import 'icon_text_button_page.dart';
import 'chip_page.dart';
import 'license_plate_page.dart';

export 'chip_page.dart';
export 'icon_text_button_page.dart';

Storybook get storybook {
  final chipStory = Story(
      builder: (context) {
        return MaterialApp(
          home: const ChipPage(),
          theme: ThemeData(
            extensions: [AppTheme.light()],
            fontFamily: "SF Pro Text",
          ),
        );
      },
      name: 'Chips');

  final buttonStory = Story(
      builder: (context) {
        return MaterialApp(
          home: const RoundedButtonPage(),
          theme: ThemeData(
            extensions: [AppTheme.light()],
            fontFamily: "SF Pro Text",
          ),
        );
      },
      name: 'Rounded Buttons');

  final simpleButtonStory = Story(
      builder: (context) {
        return MaterialApp(
          home: const RoundedButtonPage(),
          theme: ThemeData(
            extensions: [AppTheme.light()],
            fontFamily: "SF Pro Text",
          ),
        );
      },
      name: 'Simple Buttons');

  final iconTextButtonStory = Story(
      builder: (context) {
        return MaterialApp(
          home: const IconTextButtonPage(),
          theme: ThemeData(
            extensions: [AppTheme.light()],
            fontFamily: "SF Pro Text",
          ),
        );
      },
      name: 'Icon text buttons');

  final licensePlateStory = Story(
      builder: (context) {
        return MaterialApp(
          home: const LicensePlatePage(),
          theme: ThemeData(
            extensions: [AppTheme.light()],
            fontFamily: "SF Pro Text",
          ),
        );
      },
      name: 'License plates');

  final snackBarStory = Story(
      builder: (context) {
        return MaterialApp(
          home: const SnackbarPage(),
          theme: ThemeData(
            extensions: [AppTheme.light()],
            fontFamily: "SF Pro Text",
          ),
        );
      },
      name: 'Snackbars');

  return Storybook(
    stories: [
      simpleButtonStory,
      buttonStory,
      iconTextButtonStory,
      chipStory,
      licensePlateStory,
      snackBarStory
    ],
    plugins: initializePlugins(enableThemeMode: true, enableCodeView: true),
  );
}
