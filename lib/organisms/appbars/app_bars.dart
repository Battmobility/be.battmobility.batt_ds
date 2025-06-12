import 'package:batt_ds/theme/gradient_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

AppBar buildActiveAppBar(BuildContext context,
        {required String title,
        bool showBackButton = true,
        Widget? trailing}) =>
    AppBar(
      backgroundColor: Colors.transparent,
      flexibleSpace: Container(
        decoration: BoxDecoration(
            gradient: GradientTheme.standard().activeAppBarGradient),
      ),
      systemOverlayStyle: SystemUiOverlayStyle.light,
      elevation: 0,
      leading: showBackButton
          ? IconButton(
              icon: Icon(Icons.arrow_back,
                  color: Theme.of(context).colorScheme.surfaceContainer),
              onPressed: () => Navigator.of(context).pop(),
            )
          : null,
      title: Text(title,
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: Theme.of(context).colorScheme.surfaceContainer)),
      actions: trailing != null ? [trailing] : null,
      centerTitle: true,
    );

AppBar buildDefaultAppBar(BuildContext context,
        {required String title,
        bool showBackButton = true,
        Widget? trailing}) =>
    AppBar(
      backgroundColor: Colors.transparent,
      flexibleSpace: Container(
        decoration: BoxDecoration(
            gradient: GradientTheme.standard().defaultAppBarGradient),
      ),
      systemOverlayStyle: SystemUiOverlayStyle.light,
      elevation: 0,
      leading: showBackButton
          ? IconButton(
              icon: Icon(Icons.arrow_back,
                  color: Theme.of(context).colorScheme.onSurface),
              onPressed: () => Navigator.of(context).pop(),
            )
          : null,
      title: Text(title,
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: Theme.of(context).colorScheme.onSurface)),
      actions: trailing != null ? [trailing] : null,
      centerTitle: true,
    );

AppBar buildTransparentAppBar(BuildContext context,
        {required String title,
        bool showBackButton = true,
        Widget? trailing}) =>
    AppBar(
      backgroundColor: Colors.transparent,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      elevation: 0,
      leading: showBackButton
          ? Theme(
              data: ThemeData(
                  iconButtonTheme: IconButtonThemeData(
                      style: ButtonStyle(
                          iconSize: const WidgetStatePropertyAll(20),
                          fixedSize: const WidgetStatePropertyAll(Size(44, 44)),
                          visualDensity: VisualDensity.compact,
                          elevation: const WidgetStatePropertyAll(2),
                          backgroundColor: WidgetStatePropertyAll(
                              Theme.of(context).colorScheme.surface)))),
              child: IconButton.filled(
                color: Theme.of(context).colorScheme.onSurface,
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(Icons.arrow_back),
                style: ButtonStyle(
                    iconSize: const WidgetStatePropertyAll(20),
                    fixedSize: const WidgetStatePropertyAll(Size(44, 44)),
                    visualDensity: VisualDensity.compact,
                    backgroundColor: WidgetStatePropertyAll(
                        Theme.of(context).colorScheme.surface),
                    iconColor: WidgetStatePropertyAll(
                        Theme.of(context).colorScheme.onSurface)),
              ),
            )
          : null,
      title: Text(title,
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: Theme.of(context).colorScheme.onSurface)),
      actions: trailing != null ? [trailing] : null,
      centerTitle: true,
    );
