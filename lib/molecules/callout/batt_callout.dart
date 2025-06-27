import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

import '../../theme/gradient_theme.dart';

final class BattCallout extends StatelessWidget {
  final String? title;
  final RichText? message;
  final CalloutType type;
  final Function()? action;
  final String? actionLabel;
  final Duration? duration;
  final bool showCloseIcon;

  const BattCallout({
    super.key,
    required this.type,
    this.title,
    this.message,
    this.action,
    this.duration,
    this.showCloseIcon = false,
    this.actionLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        borderRadius: const BorderRadius.all(CornerRadii.m),
        border: border,
      ),
      child: Padding(
        padding: AppPaddings.medium.leading
            .add(AppPaddings.small.all)
            .add(AppPaddings.small.bottom),
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
                            child: message,
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
              if (action != null && actionLabel != null)
                DefaultSolidTextButton(
                    label: actionLabel!, onPressed: action!())
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

  TextStyle _titleStyle(BuildContext context) {
    return Theme.of(context).textTheme.labelLarge!.copyWith(
        color: Theme.of(context).colorScheme.onSurface,
        fontWeight: FontWeight.bold);
  }

  BattIcon get _icon {
    switch (type) {
      case CalloutType.info:
        return const BattIcon(
            size: BattIconSize.small,
            backgroundColor: AppColors.ctaGreen,
            icon: Icons.info_outline,
            iconColor: AppColors.white);
      case CalloutType.success:
        return const BattIcon(
            size: BattIconSize.small,
            backgroundColor: AppColors.b2cKeyColor,
            icon: Icons.check,
            iconColor: AppColors.white);
      case CalloutType.warning:
        return const BattIcon(
            size: BattIconSize.small,
            backgroundColor: AppColors.rusticClay,
            icon: Icons.warning_amber,
            iconColor: AppColors.white);
      case CalloutType.error:
        return const BattIcon(
            size: BattIconSize.small,
            backgroundColor: AppColors.rusticClay,
            icon: Icons.close,
            iconColor: AppColors.white);
    }
  }

  GradientBorder get border {
    switch (type) {
      case CalloutType.info:
      case CalloutType.success:
        return GradientBorder(
            gradient: GradientTheme.standard().flowGradient, width: 2);
      case CalloutType.warning:
        return GradientBorder(
            gradient: GradientTheme.standard().warningBorderGradient, width: 2);
      case CalloutType.error:
        return GradientBorder(
            gradient: GradientTheme.standard().errorBorderGradient, width: 2);
    }
  }
}

enum CalloutType { info, success, warning, error }
