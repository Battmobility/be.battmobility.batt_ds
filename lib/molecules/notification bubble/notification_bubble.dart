import 'package:batt_ds/atoms/app_colors.dart';
import 'package:flutter/material.dart';

final class NotificationBubble extends StatelessWidget {
  final String message;
  final Color color;

  const NotificationBubble(
      {super.key, required this.message, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      constraints: const BoxConstraints(
        minWidth: 14,
        minHeight: 14,
      ),
      child: Text(
        message,
        style: const TextStyle(
          color: AppColors.offWhite,
          fontSize: 10,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
