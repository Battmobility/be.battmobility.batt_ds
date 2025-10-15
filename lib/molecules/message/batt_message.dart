import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

final class BatMessage extends StatelessWidget {
  final String title;
  final String message;
  final CalloutType type;

  const BatMessage(
      {super.key,
      required this.title,
      required this.message,
      required this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPaddings.small.all,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.neutralColors[100]!),
          borderRadius: const BorderRadius.all(CornerRadii.s)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: AppSpacings.xxs,
        children: [
          Flexible(
            child: Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: type.borderColor),
              textAlign: TextAlign.start,
            ),
          ),
          Flexible(
            child: Text(
              message,
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.start,
            ),
          )
        ],
      ),
    );
  }
}

extension Colored on CalloutType {
  Color get borderColor {
    switch (this) {
      case CalloutType.info:
        return AppColors.b2bKeyColor;
      case CalloutType.warning:
        return AppColors.warningPrimary;
      case CalloutType.error:
        return AppColors.errorDark;
      case CalloutType.success:
        return AppColors.b2cKeyColor;
    }
  }
}
