import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../theme/app_theme.dart';
import 'theme_scope.dart';

const _kThemeMode = 'themeMode';

/// {@template theme_scope_widget}
/// A class which handles all theme processes
///
/// initialize() method should be used as app starter in order to use
/// [AppTheme] in the app

/// {@endtemplate}
class ThemeScopeWidget extends StatefulWidget {
  // Overridden thememode
  final ThemeMode? themeModeOverride;

  /// {@macro theme_scope_widget}
  const ThemeScopeWidget({
    super.key,
    required this.child,
    this.preferences,
    this.themeModeOverride,
  });

  /// The child widget
  final Widget child;

  /// The shared preferences
  final SharedPreferences? preferences;

  /// Initialize the [ThemeScopeWidget] with the given [child] widget
  static Future<ThemeScopeWidget> initialize(Widget child) async {
    final preferences = await SharedPreferences.getInstance();
    return ThemeScopeWidget(
      preferences: preferences,
      child: child,
    );
  }

  static ThemeScopeWidget initializeSynchronously(
      Widget child, ThemeMode themeModeOverride) {
    return ThemeScopeWidget(
      preferences: null,
      themeModeOverride: themeModeOverride,
      child: child,
    );
  }

  /// In order to use methods of [ThemeScopeWidget] this function
  /// should be called first. Theme change process will handled by
  /// [ThemeScopeWidget] automatically.
  static ThemeScopeWidgetState? of(BuildContext context) {
    return context.findRootAncestorStateOfType<ThemeScopeWidgetState>();
  }

  @override
  State<ThemeScopeWidget> createState() => ThemeScopeWidgetState();
}

/// The state for [ThemeScopeWidget].
class ThemeScopeWidgetState extends State<ThemeScopeWidget> {
  ThemeMode? _themeMode;

  /// Change the theme mode
  Future<void> changeTo(ThemeMode themeMode) async {
    if (_themeMode == themeMode) return;

    try {
      final index = ThemeMode.values.indexOf(themeMode);
      await widget.preferences?.setInt(_kThemeMode, index);

      setState(() {
        _themeMode = themeMode;
      });
    } on Exception catch (_) {
      _themeMode = ThemeMode.system;
      // ignore: avoid_print
      print("Failed to change theme mode.");
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    try {
      final themeModeIndex = widget.preferences?.getInt(_kThemeMode) ?? 0;
      final themeMode = ThemeMode.values[themeModeIndex];

      _themeMode = themeMode;
    } on Exception catch (_) {
      _themeMode = ThemeMode.system;
    }
  }

  @override
  Widget build(BuildContext context) {
    final brightness = MediaQuery.platformBrightnessOf(context);

    final appTheme = switch (_themeMode!) {
      ThemeMode.light => AppTheme.light(),
      ThemeMode.dark => AppTheme.dark(),
      ThemeMode.system =>
        brightness == Brightness.dark ? AppTheme.dark() : AppTheme.light(),
    };

    return ThemeScope(
      themeMode: _themeMode ?? widget.themeModeOverride ?? ThemeMode.light,
      appTheme: appTheme,
      child: widget.child,
    );
  }
}
