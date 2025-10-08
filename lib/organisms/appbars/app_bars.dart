import 'package:batt_ds/batt_ds.dart';
import 'package:batt_ds/theme/gradient_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

AppBar buildActiveAppBar(BuildContext context,
        {required String title,
        bool showBackButton = true,
        bool centerTitle = true,
        bool dark = false,
        Widget? trailing}) =>
    AppBar(
      backgroundColor: Colors.transparent,
      flexibleSpace: Container(
        decoration: BoxDecoration(
            gradient: GradientTheme.standard().activeAppBarGradient),
      ),
      systemOverlayStyle:
          dark ? SystemUiOverlayStyle.dark : SystemUiOverlayStyle.light,
      elevation: 0,
      leading: showBackButton
          ? IconButton(
              icon: Icon(PhosphorIcons.arrowLeft(),
                  color: Theme.of(context).colorScheme.surfaceContainer),
              onPressed: () => Navigator.of(context).pop(),
            )
          : const SizedBox.shrink(),
      title: centerTitle
          ? Text(title,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Theme.of(context).colorScheme.surfaceContainer))
          : Text(title,
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: Theme.of(context).colorScheme.surfaceContainer)),
      actions: trailing != null ? [trailing] : null,
      centerTitle: true,
    );

AppBar buildDefaultAppBar(BuildContext context,
        {required String title,
        bool showBackButton = true,
        bool centerTitle = true,
        bool dark = false,
        Widget? trailing}) =>
    AppBar(
      backgroundColor: Colors.transparent,
      flexibleSpace: Container(
        decoration: BoxDecoration(
            gradient: GradientTheme.standard().defaultAppBarGradient),
      ),
      systemOverlayStyle:
          dark ? SystemUiOverlayStyle.dark : SystemUiOverlayStyle.light,
      elevation: 0,
      leading: showBackButton
          ? IconButton(
              icon: Icon(PhosphorIcons.arrowLeft(),
                  color: Theme.of(context).colorScheme.onSurface),
              onPressed: () => Navigator.of(context).pop(),
            )
          : const SizedBox.shrink(),
      title: centerTitle
          ? Text(title,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: Theme.of(context).colorScheme.onSurface))
          : Text(title,
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onSurface)),
      actions: trailing != null ? [trailing] : null,
      centerTitle: true,
    );

AppBar buildTransparentAppBar(BuildContext context,
        {required String title,
        Color contentColor = AppColors.textColor,
        bool showBackButton = true,
        bool centerTitle = true,
        bool dark = false,
        Widget? leading,
        Widget? trailing}) =>
    AppBar(
      backgroundColor: Colors.transparent,
      systemOverlayStyle:
          dark ? SystemUiOverlayStyle.dark : SystemUiOverlayStyle.light,
      elevation: 0,
      leading: showBackButton
          ? leading ??
              IconButton(
                icon: Icon(PhosphorIcons.arrowLeft(), color: contentColor),
                onPressed: () => Navigator.of(context).pop(),
              )
          : const SizedBox.shrink(),
      title: Text(title,
          style: centerTitle
              ? Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: contentColor)
              : Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(color: contentColor)),
      actions: trailing != null ? [trailing] : null,
      centerTitle: centerTitle,
    );

AppBar buildBlurryAppBar(BuildContext context,
        {required String title,
        Color contentColor = AppColors.textColor,
        bool showBackButton = true,
        bool centerTitle = true,
        bool dark = false,
        Widget? leading,
        Widget? trailing}) =>
    AppBar(
      backgroundColor: Colors.transparent,
      flexibleSpace: ClipRect(
        child: GradualBlur(
          child: Container(
            color: Colors.transparent,
          ),
        ),
      ),
      systemOverlayStyle:
          dark ? SystemUiOverlayStyle.dark : SystemUiOverlayStyle.light,
      elevation: 0,
      leading: showBackButton
          ? IconButton(
              icon: Icon(PhosphorIcons.arrowLeft(), color: contentColor),
              onPressed: () => Navigator.of(context).pop(),
            )
          : const SizedBox.shrink(),
      title: Text(title,
          style: centerTitle
              ? Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: contentColor)
              : Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(color: contentColor)),
      actions: trailing != null ? [trailing] : null,
      centerTitle: true,
    );
