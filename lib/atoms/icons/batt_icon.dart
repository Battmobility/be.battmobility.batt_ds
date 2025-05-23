import 'package:batt_ds/atoms/app_colors.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

enum BattIcons {
  car,
  walk,
  range,
}

class BattIcon extends StatelessWidget {
  final Color? backgroundColor;
  final Color? iconColor;
  final String? iconPath;
  final BattIcons? battIcon;

  const BattIcon({
    super.key,
    this.backgroundColor = AppColors.softGrove,
    this.iconColor = AppColors.b2cKeyColor,
    this.iconPath,
    this.battIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
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
