import 'package:batt_ds/batt_ds.dart';
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
      backgroundColor: _backgroundColor(context),
      duration: duration ?? const Duration(seconds: 4),
      showCloseIcon: showCloseIcon,
      closeIconColor: _textColor(context),
      action: action != null
          ? SnackBarAction(
              label: action!.label,
              onPressed: action!.onPressed,
              textColor: _backgroundColor(context),
              backgroundColor: _textColor(context),
            )
          : null,
    );
  }

  Widget _body(BuildContext context) {
    return Padding(
      padding: AppPaddings.small.all,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          title != null
              ? Text(title!, style: _titleStyle(context))
              : Container(),
          (title != null && message != null)
              ? const SizedBox(height: AppSpacings.sm)
              : Container(),
          message != null
              ? Text(message!, style: _messageStyle(context))
              : Container(),
        ],
      ),
    );
  }

  TextStyle _titleStyle(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .labelLarge!
        .copyWith(color: _textColor(context), fontWeight: FontWeight.bold);
  }

  TextStyle _messageStyle(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .labelMedium!
        .apply(color: _textColor(context));
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

  Color _backgroundColor(BuildContext context) {
    switch (type) {
      case SnackBarType.info:
        return context.appSnackbarTheme.infoBackgroundColor;
      case SnackBarType.success:
        return context.appSnackbarTheme.successBackgroundColor;
      case SnackBarType.warning:
        return context.appSnackbarTheme.warningBackgroundColor;
      case SnackBarType.error:
        return context.appSnackbarTheme.errorBackgroundColor;
    }
  }
}

enum SnackBarType { info, success, warning, error }
