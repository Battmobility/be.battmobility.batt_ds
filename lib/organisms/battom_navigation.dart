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
      ),
      height: 90,
      child: LayoutBuilder(builder: (context, constraints) {
        final double availableWidth = constraints.maxWidth;

        const double defaultFontSize = 14.0;
        const double minFontSize = 11.0;
        final int itemCount = widget.items.length;

        String longestLabel = "";
        for (var item in widget.items) {
          if (item.label.length > longestLabel.length) {
            longestLabel = item.label;
          }
        }

        double fontSize = defaultFontSize;
        final TextPainter textPainter = TextPainter(
          textDirection: TextDirection.ltr,
          maxLines: 1,
        );

        const double iconWidth = 28.0;
        final double initialItemWidth = availableWidth / itemCount;

        textPainter.text = TextSpan(
          text: longestLabel,
          style: const TextStyle(fontSize: defaultFontSize),
        );
        textPainter.layout(maxWidth: initialItemWidth - iconWidth);

        // If the text doesn't fit with default settings, adjust font size
        if (textPainter.didExceedMaxLines ||
            textPainter.width > (initialItemWidth - iconWidth)) {
          // Try different font sizes
          for (fontSize = defaultFontSize - 0.5;
              fontSize >= minFontSize;
              fontSize -= 0.5) {
            final double availableWidthPerItem = availableWidth / itemCount;

            textPainter.text = TextSpan(
              text: longestLabel,
              style: TextStyle(fontSize: fontSize),
            );
            textPainter.layout(maxWidth: availableWidthPerItem - iconWidth);

            if (!textPainter.didExceedMaxLines &&
                textPainter.width <= (availableWidthPerItem - iconWidth)) {
              break;
            }
          }
        }

        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                              top: -2,
                              child: item.badge!,
                            ),
                        ],
                      ),
                      const SizedBox(height: AppSpacings.xs),
                      Text(
                        item.label,
                        style: TextStyle(
                          fontSize: fontSize,
                          fontWeight: FontWeight.w400,
                          color: isSelected
                              ? Theme.of(context)
                                  .bottomNavigationBarTheme
                                  .selectedItemColor
                              : Theme.of(context)
                                  .bottomNavigationBarTheme
                                  .unselectedItemColor,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
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
    this.size = 16,
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
