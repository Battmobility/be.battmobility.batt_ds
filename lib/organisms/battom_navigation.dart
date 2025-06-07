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
      height: 90,
      child: LayoutBuilder(builder: (context, constraints) {
        // Calculate the maximum font size that will fit all labels
        final double availableWidth = constraints.maxWidth;

        // Initial default font size
        const double defaultFontSize = 14.0;
        // Minimum font size we'll allow
        const double minFontSize = 11.0;
        // Default spacing between items
        const double defaultSpacing = AppSpacings.md;
        // Minimum spacing we'll allow
        const double minSpacing = AppSpacings.sm;
        // Number of items
        final int itemCount = widget.items.length;

        // Determine the longest label to use for font size calculation
        String longestLabel = "";
        for (var item in widget.items) {
          if (item.label.length > longestLabel.length) {
            longestLabel = item.label;
          }
        }

        // Start with default values
        double fontSize = defaultFontSize;
        double itemSpacing = defaultSpacing;
        final TextPainter textPainter = TextPainter(
          textDirection: TextDirection.ltr,
          maxLines: 1,
        );

        // First check if everything fits with default values
        final double iconWidth = 28.0;
        final double initialItemWidth =
            (availableWidth - (defaultSpacing * (itemCount - 1))) / itemCount;

        textPainter.text = TextSpan(
          text: longestLabel,
          style: TextStyle(fontSize: defaultFontSize),
        );
        textPainter.layout(maxWidth: initialItemWidth - iconWidth);

        // If the text doesn't fit with default settings, adjust both font size and spacing
        if (textPainter.didExceedMaxLines ||
            textPainter.width > (initialItemWidth - iconWidth)) {
          // Try different font size and spacing combinations
          for (fontSize = defaultFontSize - 0.5;
              fontSize >= minFontSize;
              fontSize -= 0.5) {
            // Calculate a proportional spacing based on how much we've reduced the font
            double fontReductionRatio = fontSize / defaultFontSize;
            itemSpacing = defaultSpacing * fontReductionRatio;
            // Don't go below minimum spacing
            itemSpacing = itemSpacing < minSpacing ? minSpacing : itemSpacing;

            // Calculate available width per item with current spacing
            final double availableWidthPerItem =
                (availableWidth - (itemSpacing * (itemCount - 1))) / itemCount;

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

        return Stack(
          children: [
            // Navigation items row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(widget.items.length, (index) {
                final item = widget.items[index];
                final isSelected = _currentIndex == index;

                // Only add spacing between items (not at the edges)
                final bool needsSpacerAfter = index < widget.items.length - 1;

                return Expanded(
                  child: Row(
                    children: [
                      Expanded(
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
                      ),

                      // Add spacing between items
                      if (needsSpacerAfter) SizedBox(width: itemSpacing),
                    ],
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
