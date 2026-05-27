import 'package:flutter/material.dart';

Future<bool> showConfirmDialog(
  BuildContext context,
  String title,
  String content,
) {
  return showDialog<bool>(
    context: context,
    builder: (ctx) => AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(ctx).pop(false),
          child: const Text('取消'),
        ),
        TextButton(
          onPressed: () => Navigator.of(ctx).pop(true),
          child: const Text('确定'),
        ),
      ],
    ),
  ).then((result) => result ?? false);
}