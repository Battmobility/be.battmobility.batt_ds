import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

class BattSnackbar {
  final String? title;
  final String? message;
  final CalloutType type;
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
      type: CalloutType.info,
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
      type: CalloutType.success,
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
      type: CalloutType.warning,
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
      type: CalloutType.error,
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
      showCloseIcon: false,
      elevation: 0,
      padding: EdgeInsets.zero,
      margin: AppPaddings.medium.horizontal,
    );
  }

  Widget _body(BuildContext context) {
    return BattCallout(
        type: type,
        title: title,
        message: RichText(
          text: TextSpan(
            text: message,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: Theme.of(context).colorScheme.surfaceContainerHighest),
          ),
        ),
        action: () {
          action?.onPressed();
        },
        actionLabel: action?.label,
        showCloseIcon: showCloseIcon);
  }
}
