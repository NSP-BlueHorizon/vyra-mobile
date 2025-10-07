import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class VyraFloatingActionButton extends StatelessWidget {
  final void Function() onPressed;
  final IconData? cupertinoIcon;
  final IconData? materialIcon;
  const VyraFloatingActionButton({
    super.key,
    required this.onPressed,
    this.cupertinoIcon,
    this.materialIcon,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: 'currentLocation',
      splashColor: ColorConstants.transparent,
      focusColor: ColorConstants.transparent,
      focusElevation: 0,
      highlightElevation: 2,
      elevation: 0,
      backgroundColor: Theme.of(
        context,
      ).colorScheme.onPrimary.withValues(alpha: 0.7),
      onPressed: onPressed,
      child: Icon(
        IconConstants.currentLocation,
        size: SizeConstants.s25,
        color: Theme.of(context).colorScheme.secondary,
      ),
    );
  }
}
