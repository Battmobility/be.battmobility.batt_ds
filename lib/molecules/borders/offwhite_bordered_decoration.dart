import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

class OffWhiteBorderedDecoration extends BoxDecoration {
  OffWhiteBorderedDecoration({
    double borderWidth = 1,
    BorderRadius? borderRadius = const BorderRadius.all(CornerRadii.s),
    super.shape,
    super.boxShadow,
  }) : super(
            color: AppColors.offWhite,
            border: Border.all(
              color: AppColors.offWhite,
            ),
            borderRadius: borderRadius);
}
