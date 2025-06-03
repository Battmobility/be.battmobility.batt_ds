import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

class BattomNavigationBar extends StatefulWidget {
  final int initialIndex;
  final Function(int) onTap;
  final List<BattomNavigationBarItem> items;

  const BattomNavigationBar({
    super.key,
    this.initialIndex = 0,
    required this.onTap,
    required this.items,
  });

  @override
  State<BattomNavigationBar> createState() => _BattomNavigationBarState();
}

class _BattomNavigationBarState extends State<BattomNavigationBar> {
  late int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
  }

  @override
  void didUpdateWidget(BattomNavigationBar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initialIndex != oldWidget.initialIndex) {
      setState(() {
        _currentIndex = widget.initialIndex;
      });
    }
  }

  void _handleTap(int index) {
    setState(() {
      _currentIndex = index;
    });
    widget.onTap(index);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(25),
            blurRadius: 10,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      height: 80,
      child: LayoutBuilder(builder: (context, constraints) {
        return Stack(
          children: [
            // Animated selection indicator
            AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              left: (constraints.maxWidth *
                      (_currentIndex / widget.items.length)) +
                  AppSpacings.lg,
              top: AppSpacings.sm,
              bottom: AppSpacings.sm,
              width: (constraints.maxWidth / widget.items.length) -
                  AppSpacings.xxl,
              child: Padding(
                padding: AppPaddings.small.horizontal,
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.airFlow,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),

            // Navigation items row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(widget.items.length, (index) {
                final item = widget.items[index];
                final isSelected = _currentIndex == index;

                return Expanded(
                  child: GestureDetector(
                    onTap: () => _handleTap(index),
                    behavior: HitTestBehavior.opaque,
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: AppSpacings.sm,
                        horizontal: AppSpacings.sm,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Icon(
                                item.icon,
                                color: isSelected
                                    ? Theme.of(context)
                                        .bottomNavigationBarTheme
                                        .selectedItemColor
                                    : Theme.of(context)
                                        .bottomNavigationBarTheme
                                        .unselectedItemColor,
                                size: 28,
                              ),
                              if (item.badge != null)
                                Positioned(
                                  right: -10,
                                  top: -8,
                                  child: item.badge!,
                                ),
                            ],
                          ),
                          const SizedBox(height: AppSpacings.xs),
                          Text(
                            item.label,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: isSelected
                                  ? FontWeight.w600
                                  : FontWeight.normal,
                              color: isSelected
                                  ? Theme.of(context)
                                      .bottomNavigationBarTheme
                                      .selectedItemColor
                                  : Theme.of(context)
                                      .bottomNavigationBarTheme
                                      .unselectedItemColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
          ],
        );
      }),
    );
  }
}

class BattomNavigationBarItem {
  final IconData icon;
  final String label;
  final Badge? badge;

  BattomNavigationBarItem({
    required this.icon,
    required this.label,
    this.badge,
  });
}

class Badge extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final double size;

  const Badge({
    super.key,
    required this.text,
    this.backgroundColor = Colors.blue,
    this.textColor = Colors.white,
    this.size = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: size * 0.6,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
