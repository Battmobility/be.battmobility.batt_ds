import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final class DatesFormatter {
  static RichText formatDates(
      DateTime start, DateTime end, TextTheme theme, Color color) {
    if (start.isBefore(DateTime.now()) && end.isBefore(DateTime.now())) {
      return RichText(
        text: TextSpan(children: [
          TextSpan(
              text: DateFormat('d MMM yyyy ').format(start),
              style: theme.bodyMedium!.copyWith(color: color)),
          TextSpan(
              text: " - ",
              style: theme.bodyMedium!
                  .copyWith(fontWeight: FontWeight.bold, color: color)),
          TextSpan(
              text: DateFormat('d MMM yyy').format(end),
              style: theme.bodyMedium!.copyWith(color: color))
        ]),
      );
    }

    if (start.isSameDayAs(end)) {
      return RichText(
        text: TextSpan(children: [
          TextSpan(
              text: DateFormat('d MMM ').format(start),
              style: theme.bodyMedium!
                  .copyWith(fontWeight: FontWeight.bold, color: color)),
          TextSpan(
              text: DateFormat('HH:mm').format(start),
              style: theme.bodyMedium!.copyWith(color: color)),
          TextSpan(
              text: " - ",
              style: theme.bodyMedium!
                  .copyWith(fontWeight: FontWeight.bold, color: color)),
          TextSpan(
              text: DateFormat('HH:mm').format(end),
              style: theme.bodyMedium!.copyWith(color: color))
        ]),
      );
    }
    return RichText(
      text: TextSpan(children: [
        TextSpan(
            text: DateFormat('d MMM ').format(start),
            style: theme.bodyMedium!
                .copyWith(fontWeight: FontWeight.bold, color: color)),
        TextSpan(
            text: DateFormat('HH:mm').format(start),
            style: theme.bodyMedium!.copyWith(color: color)),
        TextSpan(
            text: " - ",
            style: theme.bodyMedium!
                .copyWith(fontWeight: FontWeight.bold, color: color)),
        TextSpan(
            text: DateFormat('d MMM ').format(end),
            style: theme.bodyMedium!
                .copyWith(fontWeight: FontWeight.bold, color: color)),
        TextSpan(
            text: DateFormat('HH:mm').format(end),
            style: theme.bodyMedium!.copyWith(color: color))
      ]),
    );
  }
}

extension AdjacencyChecker on DateTime {
  bool isSameDayAs(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }

  bool get isToday {
    final now = DateTime.now();
    return year == now.year && month == now.month && day == now.day;
  }

  bool get isTomorrow {
    final now = DateTime.now();
    final tomorrow = DateTime(now.year, now.month, now.day + 1);
    return year == tomorrow.year &&
        month == tomorrow.month &&
        day == tomorrow.day;
  }
}
