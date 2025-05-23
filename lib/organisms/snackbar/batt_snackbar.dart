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
      showCloseIcon: false,
      elevation: 0,
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
                gradient: const LinearGradient(
                    colors: [AppColors.rusticClay, AppColors.ctaSand],
                    transform: GradientRotation(3)),
                width: 2),
      ),
      child: Padding(
        padding: AppPaddings.large.all,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: AppPaddings.small.trailing,
                    child: _icon,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (title != null) ...[
                          Padding(
                            padding: message == null
                                ? AppPaddings.xxsmall.vertical
                                : AppPaddings.none.bottom,
                            child: Text(
                              title!,
                              style: _titleStyle(context),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                          ),
                        ],
                        if (message != null) ...[
                          Padding(
                            padding: title == null
                                ? AppPaddings.xsmall.vertical
                                : AppPaddings.small.top,
                            child: Text(
                              message!,
                              style: _messageStyle(context),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
            ),
            if (action != null || showCloseIcon) ...[
              const SizedBox(width: AppSpacings.md),
              if (action != null)
                DefaultSolidTextButton(
                  label: action!.label,
                  onPressed: action!.onPressed,
                )
              else if (showCloseIcon)
                IconButton.outlined(
                  visualDensity: VisualDensity.compact,
                  onPressed: () {
                    ScaffoldMessenger.of(
                      context,
                    ).hideCurrentSnackBar(reason: SnackBarClosedReason.dismiss);
                  },
                  icon: const Icon(Icons.close, color: AppColors.white),
                ),
            ],
          ],
        ),
      ),
    );
  }

  BattIcon get _icon {
    switch (type) {
      case SnackBarType.info:
        return const BattIcon(
            size: BattIconSize.small,
            backgroundColor: AppColors.ctaGreen,
            icon: Icons.info_outline,
            iconColor: AppColors.white);
      case SnackBarType.success:
        return const BattIcon(
            size: BattIconSize.small,
            backgroundColor: AppColors.b2cKeyColor,
            icon: Icons.check,
            iconColor: AppColors.white);
      case SnackBarType.warning:
        return const BattIcon(
            size: BattIconSize.small,
            backgroundColor: AppColors.rusticClay,
            icon: Icons.warning_amber,
            iconColor: AppColors.white);
      case SnackBarType.error:
        return const BattIcon(
            size: BattIconSize.small,
            backgroundColor: AppColors.rusticClay,
            icon: Icons.close,
            iconColor: AppColors.white);
    }
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
}

enum SnackBarType { info, success, warning, error }
