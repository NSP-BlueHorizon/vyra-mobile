import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class VyraActionButton extends StatelessWidget {
  final bool isLoading;
  final String text;
  final TextStyle? textStyle;
  final double? width;
  final double height;
  final double horizontalPadding;
  final double borderRadius;
  final Color? color;
  final Color disabledColor;
  final Function()? onTap;

  const VyraActionButton({
    super.key,
    required this.text,
    this.textStyle,
    required this.onTap,
    this.width,
    this.horizontalPadding = 0,
    this.isLoading = false,
    this.height = SizeConstants.s58,
    this.color = ColorConstants.accent,
    this.disabledColor = ColorConstants.grey300,
    this.borderRadius = SizeConstants.s18,
  });

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return GestureDetector(
        onTap: onTap,
        child: Container(
          width: width,
          height: height,
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          ),
          child: isLoading
              ? const CircularProgressIndicator.adaptive(
                  strokeCap: StrokeCap.round,
                )
              : Text(
                  text,
                  textAlign: TextAlign.center,
                  style:
                      textStyle ??
                      Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: ColorConstants.white,
                      ),
                ),
        ),
      );
    } else {
      return Container(
        width: width ?? double.infinity,
        height: height,
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        ),
        child: CupertinoButton(
          padding: EdgeInsets.zero,
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          disabledColor: disabledColor,
          onPressed: onTap,
          color: color,
          child: isLoading
              ? const CircularProgressIndicator.adaptive(
                  strokeCap: StrokeCap.round,
                )
              : Text(
                  text,
                  textAlign: TextAlign.center,
                  style:
                      textStyle ??
                      Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: ColorConstants.white,
                      ),
                ),
        ),
      );
    }
  }
}
