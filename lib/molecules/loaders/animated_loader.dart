import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

enum LoaderSize {
  xxs(AppSpacings.xxs),
  xs(AppSpacings.xs),
  sm(AppSpacings.sm),
  md(AppSpacings.md),
  lg(AppSpacings.lg),
  xl(AppSpacings.xl),
  xxl(AppSpacings.xxl),
  xxxl(AppSpacings.xxxl),
  xxxxl(AppSpacings.xxxxl),
  xxxxxl(AppSpacings.xxxxl + AppSpacings.lg),
  xxxxxxl(AppSpacings.xxxxl + AppSpacings.xxxxl);

  const LoaderSize(this.value);
  final double value;
}

final class AnimatedLoader extends StatefulWidget {
  final LoaderSize size;

  const AnimatedLoader({
    super.key,
    this.size = LoaderSize.xxl,
  });

  @override
  State<AnimatedLoader> createState() => _AnimatedLoaderState();
}

class _AnimatedLoaderState extends State<AnimatedLoader>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<int> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _animation = IntTween(begin: 1, end: 24).animate(_controller);

    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.size.value,
      height: widget.size.value,
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return Image.asset(
            'packages/batt_ds/assets/loader/state=${_animation.value}.png',
            width: widget.size.value,
            height: widget.size.value,
            fit: BoxFit.contain,
          );
        },
      ),
    );
  }
}
