import 'package:batt_ds/atoms/atoms.dart';
import 'package:flutter/material.dart';

enum TagType { standard, warning, booking }

final class Tag extends StatelessWidget {
  final String text;
  final TagType type;

  const Tag(this.text, {this.type = TagType.standard, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPaddings.xsmall.all.add(AppPaddings.small.horizontal),
      decoration: BoxDecoration(
        color: type == TagType.standard
            ? AppColors.airFlow
            : type == TagType.booking
                ? AppColors.ecoHorizon
                : AppColors.errorSecondary,
        borderRadius: BorderRadius.circular(CornerRadii.xs.x),
      ),
      child: Text(
        text,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: type == TagType.standard
                  ? AppColors.b2bKeyColor
                  : type == TagType.booking
                      ? AppColors.b2cKeyColor
                      : AppColors.errorPrimary,
            ),
      ),
    );
  }
}
