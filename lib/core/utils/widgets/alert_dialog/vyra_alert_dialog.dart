import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vyra/core/utils/routes/route_generator.dart';


Future<void> petsifyAlertDialog<T>({
  required BuildContext context,
  required String title,
  required String content,
  String? cancelButtonText,
  required String confirmButtonText,
  void Function()? onCancelPressed,
  required void Function()? onConfirmPressed,
  bool isDestructiveAction = false,
}) async {
  if (Platform.isIOS) {
    return showCupertinoModalPopup<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: Text(title, style: Theme.of(context).textTheme.titleLarge),
        content: Text(content, style: Theme.of(context).textTheme.bodyMedium),
        actions: [
          if (cancelButtonText != null)
            CupertinoDialogAction(
              onPressed: onCancelPressed ?? () => RouteGenerator.pop(),
              child: Text(
                cancelButtonText,
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
            ),
          CupertinoDialogAction(
            isDestructiveAction: isDestructiveAction,
            onPressed: onConfirmPressed,
            child: Text(
              confirmButtonText,
              style: TextStyle(
                color: isDestructiveAction
                    ? Theme.of(context).colorScheme.error
                    : Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
        ],
      ),
    );
  } else {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) => AlertDialog(
        title: Text(title),
        content: Text(content),
        actions: [
          if (cancelButtonText != null)
            TextButton(
              onPressed: onCancelPressed ?? () => RouteGenerator.pop(),
              child: Text(cancelButtonText),
            ),
          TextButton(
            onPressed: onConfirmPressed,
            style: isDestructiveAction
                ? TextButton.styleFrom(
                    foregroundColor: Theme.of(context).colorScheme.error,
                  )
                : null,
            child: Text(confirmButtonText),
          ),
        ],
      ),
    );
  }
}
