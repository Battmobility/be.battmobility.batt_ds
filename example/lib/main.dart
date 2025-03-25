import 'package:batt_ds/theme/app_theme.dart';
import 'package:example/storybook_pages/borders_page.dart';
import 'package:example/storybook_pages/chip_page.dart';
import 'package:example/storybook_pages/icon_text_button_page.dart';
import 'package:example/storybook_pages/license_plate_page.dart';
import 'package:example/storybook_pages/rounded_button_page.dart';
import 'package:example/storybook_pages/text_buttons_page.dart';
import 'package:flutter/material.dart';
import 'package:batt_ds/batt_ds.dart';
import 'package:storybook_toolkit/storybook_toolkit.dart';

import 'storybook_pages/snackbar_page.dart';

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
      name: 'Buttons');

  final textButtonStory = Story(
      builder: (context) {
        return MaterialApp(
          home: const TextButtonPage(),
          theme: ThemeData(
            extensions: [AppTheme.light()],
            fontFamily: "SF Pro Text",
          ),
        );
      },
      name: 'Text buttons');

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

  final bordersStory = Story(
      builder: (context) {
        return MaterialApp(
          home: const BordersPage(),
          theme: ThemeData(
            extensions: [AppTheme.light()],
            fontFamily: "SF Pro Text",
          ),
        );
      },
      name: 'Borders');

  return Storybook(
    stories: [
      buttonStory,
      textButtonStory,
      iconTextButtonStory,
      chipStory,
      licensePlateStory,
      snackBarStory,
      bordersStory
    ],
    plugins: initializePlugins(enableThemeMode: true, enableCodeView: true),
  );
}
