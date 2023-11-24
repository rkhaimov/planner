import 'package:flutter/material.dart';

final showConfirm = (
  BuildContext context, {
  required String title,
  required String description,
  required String ok,
  required String cancel,
}) async {
  final result = await showDialog<bool>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: Text(title),
      content: Text(description),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context, false),
          child: Text(cancel),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context, true),
          child: Text(ok),
        ),
      ],
    ),
  );

  return result ?? false;
};
