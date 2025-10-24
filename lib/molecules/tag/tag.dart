import 'package:batt_ds/atoms/atoms.dart';
import 'package:flutter/material.dart';

enum TagType { standard, warning, booking, price, stoppedBooking }

final class Tag extends StatelessWidget {
  final String text;
  final TagType type;

  const Tag(this.text, {this.type = TagType.standard, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPaddings.xsmall.all.add(AppPaddings.small.horizontal),
      decoration: BoxDecoration(
        color: _getBackgroundColor(),
        borderRadius: BorderRadius.circular(CornerRadii.xs.x),
      ),
      child: Text(
        text,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: _getTextColor(),
            ),
      ),
    );
  }

  Color _getBackgroundColor() {
    return switch (type) {
      TagType.standard => AppColors.informativeLight,
      TagType.booking => AppColors.ecoHorizon,
      TagType.price => AppColors.offWhite,
      TagType.warning => AppColors.dangerLight,
      TagType.stoppedBooking => AppColors.neutralColors[50]!,
    };
  }

  Color _getTextColor() {
    return switch (type) {
      TagType.standard => AppColors.b2bKeyColor,
      TagType.booking => AppColors.b2cKeyColor,
      TagType.price => AppColors.b2bKeyColor,
      TagType.warning => AppColors.errorDark,
      TagType.stoppedBooking => AppColors.neutralColors[950]!,
    };
  }
}
