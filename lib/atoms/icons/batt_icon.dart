import 'package:batt_ds/atoms/app_colors.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

enum BattIcons {
  car,
  walk,
  range,
}

enum BattIconSize {
  small,
  medium,
  large,
}

extension WithSize on BattIconSize {
  double get size => (this == BattIconSize.small)
      ? 24
      : (this == BattIconSize.medium)
          ? 32
          : 38;
}

class BattIcon extends StatelessWidget {
  final Color? backgroundColor;
  final Color? iconColor;
  final String? iconPath;
  final BattIcons? battIcon;
  final BattIconSize size;

  const BattIcon({
    super.key,
    this.backgroundColor = AppColors.softGrove,
    this.iconColor = AppColors.b2cKeyColor,
    this.size = BattIconSize.medium,
    this.iconPath,
    this.battIcon,
  });

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
        child: SvgPicture.asset(
          iconPath ?? "packages/batt_ds/assets/icons/${battIcon?.name}.svg",
          colorFilter: iconColor != null
              ? ColorFilter.mode(iconColor!, BlendMode.srcIn)
              : null,
        ),
      ),
    );
  }
}
