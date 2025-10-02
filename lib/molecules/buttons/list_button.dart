import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

final class ListButton extends StatelessWidget {
  final double size;
  final Color backgroundColor;
  final Color iconColor;
  final Function() onTap;

  const ListButton({
    this.size = AppSpacings.xxxxl,
    this.backgroundColor = AppColors.offWhite,
    this.iconColor = AppColors.futureBlue,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        behavior: HitTestBehavior.opaque,
        child: Container(
          width: size,
          height: size,
          decoration: OffWhiteBorderedDecoration(),
          child: Padding(
            padding: AppPaddings.small.all,
            child: Center(
                child:
                    Icon(Icons.unfold_more, color: iconColor, size: size / 2)),
          ),
        ),
      ),
    );
  }
}
