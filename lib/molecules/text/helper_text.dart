import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

final class Helpertext extends StatelessWidget {
  final String text;

  const Helpertext({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPaddings.xxsmall.all.add(AppPaddings.xsmall.horizontal),
      decoration: const BoxDecoration(
          color: AppColors.airFlow,
          borderRadius: BorderRadius.all(CornerRadii.xxs)),
      child: Text(text,
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: AppColors.b2bKeyColor)),
    );
  }
}
