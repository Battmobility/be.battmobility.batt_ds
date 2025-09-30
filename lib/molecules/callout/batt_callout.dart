import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../theme/gradient_theme.dart';

final class BattCallout extends StatelessWidget {
  final String? title;
  final RichText? message;
  final CalloutType type;
  final Function()? action;
  final String? actionLabel;
  final Duration? duration;
  final bool showCloseIcon;
  final bool showBorder;

  const BattCallout({
    super.key,
    required this.type,
    this.title,
    this.message,
    this.action,
    this.duration,
    this.showCloseIcon = false,
    this.showBorder = false,
    this.actionLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onSurface.withAlpha(225),
        borderRadius: const BorderRadius.all(CornerRadii.m),
        border: showBorder ? border : null,
      ),
      child: Padding(
        padding: AppPaddings.xsmall.leading
            .add(AppPaddings.small.all)
            .add(AppPaddings.xsmall.bottom),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: AppPaddings.medium.trailing,
              child: _icon,
            ),
            Expanded(
              child: Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (title != null) ...[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
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
                          if (action != null || showCloseIcon) ...[
                            const SizedBox(width: AppSpacings.md),
                            if (action != null && actionLabel != null)
                              SizedBox(
                                height: AppSpacings.lg,
                                child: MonochromeSimpleTextButton(
                                  label: actionLabel!,
                                  onPressed: action!,
                                  color: Theme.of(context).colorScheme.surface,
                                  underline: true,
                                ),
                              )
                            else if (showCloseIcon)
                              IconButton(
                                visualDensity: VisualDensity.compact,
                                onPressed: () {
                                  ScaffoldMessenger.of(
                                    context,
                                  ).hideCurrentSnackBar(
                                      reason: SnackBarClosedReason.dismiss);
                                },
                                icon: Icon(PhosphorIcons.x(),
                                    color: AppColors.white),
                              ),
                          ],
                        ],
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
            ),
          ],
        ),
      ),
    );
  }

  TextStyle _titleStyle(BuildContext context) {
    return Theme.of(context).textTheme.titleSmall!.copyWith(
        color: Theme.of(context).colorScheme.surfaceContainer,
        fontWeight: FontWeight.w600);
  }

  Icon get _icon {
    switch (type) {
      case CalloutType.info:
        return Icon(PhosphorIcons.info(), color: AppColors.futureBlue);
      case CalloutType.success:
        return Icon(PhosphorIcons.checkCircle(), color: AppColors.greenShift);
      case CalloutType.warning:
        return Icon(PhosphorIcons.warning(), color: AppColors.warningDark);
      case CalloutType.error:
        return Icon(PhosphorIcons.warningOctagon(), color: AppColors.errorDark);
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
