import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

final class RatingBar extends StatefulWidget {
  final int maxRating;
  final int? rating;
  final Function(int) onRatingChanged;

  const RatingBar({
    required this.onRatingChanged,
    this.maxRating = 5,
    this.rating,
    super.key,
  });

  @override
  RatingBarState createState() => RatingBarState();
}

class RatingBarState extends State<RatingBar>
    with SingleTickerProviderStateMixin {
  late int _currentRating;
  late AnimationController _animationController;
  late List<Animation<double>> _scaleAnimations;

  @override
  void initState() {
    super.initState();
    _currentRating = widget.rating ?? 0;

    _animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    _setupAnimations();
  }

  void _setupAnimations() {
    _scaleAnimations = List.generate(
      widget.maxRating,
      (index) => Tween<double>(
        begin: 1.0,
        end: 1.2,
      ).animate(
        CurvedAnimation(
          parent: _animationController,
          curve: Interval(
            index * (0.8 / widget.maxRating),
            (index + 1) * (0.8 / widget.maxRating),
            curve: Curves.easeInOut,
          ),
        ),
      ),
    );
  }

  @override
  void didUpdateWidget(RatingBar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.rating != null && widget.rating != _currentRating) {
      setState(() {
        _currentRating = widget.rating!;
      });
    }
    if (oldWidget.maxRating != widget.maxRating) {
      _setupAnimations();
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _handleStarTap(int rating) {
    setState(() {
      _currentRating = rating;
    });

    widget.onRatingChanged(rating);

    // Trigger animation
    _animationController.forward().then((_) {
      _animationController.reverse();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.offWhite,
        borderRadius: BorderRadius.all(CornerRadii.s),
      ),
      child: Center(
        child: Padding(
          padding: AppPaddings.large.all,
          child: LayoutBuilder(
            builder: (context, constraints) {
              final totalSpacing = AppSpacings.lg * (widget.maxRating - 1);
              final availableWidth = constraints.maxWidth - totalSpacing;
              final starSize = availableWidth / widget.maxRating;

              return Row(
                spacing: AppSpacings.lg,
                mainAxisSize: MainAxisSize.min,
                children: List.generate(widget.maxRating, (index) {
                  final starRating = index + 1;
                  final isFilled = starRating <= _currentRating;

                  return GestureDetector(
                    onTap: () => _handleStarTap(starRating),
                    child: AnimatedBuilder(
                      animation: _scaleAnimations[index],
                      builder: (context, child) {
                        return Transform.scale(
                          scale: isFilled ? _scaleAnimations[index].value : 1.0,
                          child: AnimatedSwitcher(
                            duration: const Duration(milliseconds: 200),
                            child: Icon(
                                weight: 0.8,
                                grade: 0.8,
                                key: ValueKey(isFilled),
                                isFilled
                                    ? Icons.star_rounded
                                    : Icons.star_outline_rounded,
                                size: starSize,
                                color: isFilled
                                    ? AppColors.futureBlue
                                    : AppColors.neutralColors[300]),
                          ),
                        );
                      },
                    ),
                  );
                }),
              );
            },
          ),
        ),
      ),
    );
  }
}
