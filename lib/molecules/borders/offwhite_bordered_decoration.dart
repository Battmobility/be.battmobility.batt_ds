import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

class OffWhiteBorderedDecoration extends BoxDecoration {
  OffWhiteBorderedDecoration({
    required double borderWidth,
    BorderRadius? super.borderRadius,
    super.shape,
    super.boxShadow,
  }) : super(
          color: AppColors.offWhite,
          border: Border.all(color: AppColors.b2bKeyColor.withAlpha(20)),
        );
}
