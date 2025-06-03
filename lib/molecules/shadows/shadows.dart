import 'package:batt_ds/atoms/app_colors.dart';
import 'package:flutter/material.dart';

final softShadow = BoxShadow(
  color: AppColors.shadow.withAlpha(14),
  blurRadius: 16,
  spreadRadius: 5,
);

final topShadow = BoxShadow(
  color: AppColors.shadow.withAlpha(14),
  blurRadius: 16,
  spreadRadius: 5,
  offset: const Offset(0, -10),
);

final bottomShadow = BoxShadow(
  color: AppColors.shadow.withAlpha(14),
  blurRadius: 16,
  spreadRadius: 5,
  offset: const Offset(0, 10),
);
