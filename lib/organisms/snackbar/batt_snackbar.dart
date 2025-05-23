import 'package:batt_ds/batt_ds.dart';
import 'package:batt_ds/theme/gradient_theme.dart';
import 'package:flutter/material.dart';

class BattSnackbar {
  final String? title;
  final String? message;
  final SnackBarType type;
  final SnackBarAction? action;
  final Duration? duration;
  final bool showCloseIcon;

  BattSnackbar({
    required this.type,
    this.title,
    this.message,
    this.action,
    this.duration,
    this.showCloseIcon = false,
  });

  factory BattSnackbar.info({
    String? title,
    String? message,
    SnackBarAction? action,
    Duration? duration = const Duration(seconds: 2),
    bool showCloseIcon = false,
  }) {
    return BattSnackbar(
      type: SnackBarType.info,
      title: title,
      message: message,
      action: action,
      duration: duration,
      showCloseIcon: showCloseIcon,
    );
  }

  factory BattSnackbar.success({
    String? title,
    String? message,
    bool? sticky = false,
    SnackBarAction? action,
    Duration? duration = const Duration(seconds: 2),
    bool showCloseIcon = false,
  }) {
    return BattSnackbar(
      type: SnackBarType.success,
      title: title,
      message: message,
      action: action,
      duration: duration,
      showCloseIcon: showCloseIcon,
    );
  }

  factory BattSnackbar.warning({
    String? title,
    String? message,
    bool? sticky = false,
    SnackBarAction? action,
    Duration? duration = const Duration(seconds: 4),
    bool showCloseIcon = false,
  }) {
    return BattSnackbar(
      type: SnackBarType.warning,
      title: title,
      message: message,
      action: action,
      duration: duration,
      showCloseIcon: showCloseIcon,
    );
  }

  factory BattSnackbar.error({
    String? title,
    String? message,
    bool? sticky = false,
    SnackBarAction? action,
    Duration? duration = const Duration(seconds: 4),
    bool showCloseIcon = false,
  }) {
    return BattSnackbar(
      type: SnackBarType.error,
      title: title,
      message: message,
      action: action,
      duration: duration,
      showCloseIcon: showCloseIcon,
    );
  }

  SnackBar build(BuildContext context) {
    return SnackBar(
      content: _body(context),
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      duration: duration ?? const Duration(seconds: 4),
      showCloseIcon: showCloseIcon,
      closeIconColor: _textColor(context),
    );
  }

  Widget _body(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        borderRadius: const BorderRadius.all(CornerRadii.m),
        border: (type == SnackBarType.success || type == SnackBarType.info)
            ? GradientBorder(
                gradient: GradientTheme.standard().progressGradient, width: 2)
            : GradientBorder(
                gradient: LinearGradient(
                    colors: [AppColors.rusticClay, AppColors.ctaSand],
                    transform: GradientRotation(3)),
                width: 2),
      ),
      child: Padding(
        padding: AppPaddings.small.all,
        child: Row(
          mainAxisAlignment: action != null
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: AppSpacings.xs,
              children: [
                const BattIcon(
                  iconColor: AppColors.white,
                  backgroundColor: AppColors.ctaGreen,
                  size: BattIconSize.small,
                  battIcon: BattIcons.walk, // TODO: various icons and colors
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (title != null) ...[
                      Text(title!, style: _titleStyle(context))
                    ],
                    if (message != null) ...[
                      Text(message!, style: _messageStyle(context))
                    ],
                  ],
                ),
              ],
            ),
            if (action != null) ...[
              DefaultSolidTextButton(
                  label: action!.label, onPressed: action!.onPressed)
            ]
          ],
        ),
      ),
    );
  }

  TextStyle _titleStyle(BuildContext context) {
    return Theme.of(context).textTheme.labelLarge!.copyWith(
        color: Theme.of(context).colorScheme.onSurface,
        fontWeight: FontWeight.bold);
  }

  TextStyle _messageStyle(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .labelMedium!
        .apply(color: Theme.of(context).colorScheme.onSurface);
  }

  Color _textColor(BuildContext context) {
    switch (type) {
      case SnackBarType.info:
        return context.appSnackbarTheme.infoTextColor;
      case SnackBarType.success:
        return context.appSnackbarTheme.successTextColor;
      case SnackBarType.warning:
        return context.appSnackbarTheme.warningTextColor;
      case SnackBarType.error:
        return context.appSnackbarTheme.errorTextColor;
    }
  }
}

enum SnackBarType { info, success, warning, error }
