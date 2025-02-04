import 'package:flutter/material.dart';

import 'app_spacings.dart';

enum AppPaddings {
  none(0),
  xxsmall(AppSpacings.xxs),
  xsmall(AppSpacings.xs),
  small(AppSpacings.sm),
  medium(AppSpacings.md),
  large(AppSpacings.lg),
  xlarge(AppSpacings.xl),
  xxlarge(AppSpacings.xxl),
  ;

  const AppPaddings(this.size);
  final double size;

  EdgeInsetsGeometry get all => EdgeInsets.all(size);
  EdgeInsetsGeometry get horizontal =>
      EdgeInsets.symmetric(horizontal: size, vertical: 0);
  EdgeInsetsGeometry get vertical =>
      EdgeInsets.symmetric(horizontal: 0, vertical: size);
  EdgeInsetsGeometry get leading => EdgeInsets.only(left: size);
  EdgeInsetsGeometry get top => EdgeInsets.only(top: size);
  EdgeInsetsGeometry get trailing => EdgeInsets.only(right: size);
  EdgeInsetsGeometry get bottom => EdgeInsets.only(bottom: size);
}
