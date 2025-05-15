import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

final class SvgIcon extends StatelessWidget {
  final String assetName;
  final Color? color;
  final Size? size;

  const SvgIcon({super.key, required this.assetName, this.color, this.size});

  @override
  Widget build(BuildContext context) {
    print("Attempting to load asset: assets/icons/$assetName");

    return SvgPicture.asset(
      "packages/batt_ds/assets/icons/$assetName",
      width: size?.width,
      height: size?.height,
      colorFilter:
          color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
    );
  }

  SvgIcon copyWith({String? assetName, Color? color, Size? size}) {
    return SvgIcon(
      assetName: assetName ?? this.assetName,
      color: color ?? this.color,
      size: size ?? this.size,
    );
  }
}

const carIcon = SvgIcon(assetName: 'car.svg');
const walkIcon = SvgIcon(assetName: 'walk.svg');
const rangeIcon = SvgIcon(assetName: 'range.svg');

extension Colored on SvgIcon {
  Widget colored(Color color) {
    return copyWith(color: color);
  }
}
