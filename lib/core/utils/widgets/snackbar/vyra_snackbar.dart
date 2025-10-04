import 'package:flutter/material.dart';

import '../../constants/constants.dart';

SnackBar vyraSnackbar({
  required BuildContext context,
  required String text,
  Color? backgroundColor = ColorConstants.green,
}) {
  return SnackBar(
    content: Text(
      text,
      style: Theme.of(context).textTheme.bodySmall!.copyWith(
        color: Theme.of(context).colorScheme.surface,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
    ),
    backgroundColor: backgroundColor,
    closeIconColor: Theme.of(context).colorScheme.surface,
    showCloseIcon: true,
  );
}
