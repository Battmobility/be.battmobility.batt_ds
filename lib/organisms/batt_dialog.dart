import 'package:batt_ds/batt_ds.dart';
import 'package:flutter/material.dart';

class BattDialog {
  final String? title;
  final String? message;
  final List<Widget> actions;

  BattDialog({
    this.title,
    this.message,
    required this.actions,
  });

  AlertDialog build(BuildContext context) {
    return AlertDialog(
        title: title != null
            ? Text(title!, style: context.typographyTheme.smallTitle)
            : null,
        content: message != null
            ? Text(message!, style: context.typographyTheme.defaultText)
            : null,
        actions: actions);
  }
}
