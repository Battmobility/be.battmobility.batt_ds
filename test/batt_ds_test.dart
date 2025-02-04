import 'package:batt_ds/batt_ds.dart';
import 'package:batt_ds/storybook_pages/storybook_pages.dart';
import 'package:batt_ds/utils/theme_scope_widget.dart';
import 'package:storybook_toolkit/storybook_toolkit.dart';
import 'package:storybook_toolkit_tester/storybook_toolkit_tester.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Starts the Storybook app with the given stories and devices.
///
/// The given [stories] are shown on the given [devices].
///
/// The [filterStories] function can be used to skip stories from the Storybook.
Future<void> main() async {
  //WidgetsFlutterBinding.ensureInitialized();
  /*
    // Assuming the 'Roboto.ttf' file is declared in the pubspec.yaml file
  final Future<ByteData> font = rootBundle.load('path/to/font-file/Roboto.ttf');

  final FontLoader fontLoader = FontLoader('Roboto')..addFont(font);
  await fontLoader.load();

  or

    setUpAll(() async {
    final FontLoader fontLoader = FontLoader('SomeFont')..addFont(someFont);
    await fontLoader.load();
  });
  */
  SharedPreferences.setMockInitialValues({});
  await ThemeScopeWidget.initialize(storybook);
  return testStorybook(
    storybook,
    devices: {
      Devices.ios.iPhoneSE,
      Devices.android.pixel4,
      Devices.ios.iPadAir4
    },
    filterStories: (Story story) {
      final skipStories = [];
      return !skipStories.contains(story.name);
    },
  );
}
