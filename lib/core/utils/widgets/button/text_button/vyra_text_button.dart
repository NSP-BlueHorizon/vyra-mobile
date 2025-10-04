import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class VyraTextButton extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final void Function()? onPressed;
  const VyraTextButton({
    super.key,
    required this.text,
    this.textStyle,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: const ButtonStyle(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        splashFactory: NoSplash.splashFactory,
        padding: WidgetStatePropertyAll(EdgeInsets.zero),
        minimumSize: WidgetStatePropertyAll(Size.zero),
        overlayColor: WidgetStatePropertyAll(
          Colors.transparent,
        ), // Remove splash effect
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style:
            textStyle ??
            Theme.of(context).textTheme.labelMedium!.copyWith(
              color: ColorConstants.accent,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
