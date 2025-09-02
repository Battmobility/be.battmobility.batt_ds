import 'dart:ui';
import 'package:flutter/material.dart';

final class GradualBlur extends StatelessWidget {
  final Widget child;
  final double maxBlur;
  final Alignment begin;
  final Alignment end;
  final List<double>? stops;

  const GradualBlur({
    required this.child,
    this.maxBlur = 10.0,
    this.begin = Alignment.topCenter,
    this.end = Alignment.bottomCenter,
    this.stops,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: maxBlur,
          sigmaY: maxBlur,
        ),
        child: Container(
          color: Colors.transparent,
        ),
      ),
    );
  }
}
