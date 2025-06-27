import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

enum BattIcons {
  car,
  walk,
  range,
}

enum BattIconSize { small, medium, large, xlarge }

extension WithSize on BattIconSize {
  double get size {
    switch (this) {
      case BattIconSize.small:
        return AppSpacings.xl;
      case BattIconSize.medium:
        return AppSpacings.xxl;
      case BattIconSize.large:
        return AppSpacings.xxxl;
      case BattIconSize.xlarge:
        return AppSpacings.xxxxl;
    }
  }
}

class BattIcon extends StatelessWidget {
  final Color? backgroundColor;
  final Color? iconColor;
  final String? iconPath;
  final BattIcons? battIcon;
  final IconData? icon;
  final BattIconSize size;

  const BattIcon(
      {super.key,
      this.backgroundColor = AppColors.softGrove,
      this.iconColor = AppColors.b2cKeyColor,
      this.size = BattIconSize.medium,
      this.iconPath,
      this.battIcon,
      this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.size,
      height: size.size,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(size.size / 2),
      ),
      child: Padding(
        padding: EdgeInsets.all(size.size / 4),
        child: icon == null
            ? SvgPicture.asset(
                iconPath ??
                    "packages/batt_ds/assets/icons/${battIcon?.name}.svg",
                colorFilter: iconColor != null
                    ? ColorFilter.mode(iconColor!, BlendMode.srcIn)
                    : null,
              )
            : Icon(icon,
                size: size.size * 0.5, color: iconColor ?? AppColors.white),
      ),
    );
  }
}
