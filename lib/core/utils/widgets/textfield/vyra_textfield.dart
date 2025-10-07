import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vyra/core/utils/constants/constants.dart';

class VyraTextField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType keyboardType;
  final int? maxLines;
  final int? maxLength;
  final Widget? suffix, prefix;
  final bool enabled;
  final TextInputAction? textInputAction;
  final TextAlign textAlign;
  final bool expands;
  final String? hintText;
  final FocusNode? focusNode;
  final Color? backgroundColor;
  final double? borderRadius;
  final Color? hintTextColor;
  final void Function(String)? onSubmitted;

  const VyraTextField({
    super.key,
    required this.controller,
    this.hintText = "",
    this.maxLines = 1,
    this.enabled = true,
    this.textInputAction = TextInputAction.done,
    this.suffix,
    this.prefix,
    this.maxLength,
    this.expands = false,
    this.focusNode,
    this.textAlign = TextAlign.justify,
    this.keyboardType = TextInputType.text,
    this.backgroundColor,
    this.borderRadius,
    this.hintTextColor,
    this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    final effectiveBorderRadius = borderRadius ?? SizeConstants.s8;
    final effectiveHintTextColor = hintTextColor ?? ColorConstants.grey500;

    if (Platform.isAndroid) {
      return TextField(
        textAlign: textAlign,
        maxLines: maxLines,
        maxLength: maxLength,
        expands: expands,
        controller: controller,
        keyboardType: keyboardType,
        enabled: enabled,
        textInputAction: textInputAction,
        onSubmitted: onSubmitted,
        style: Theme.of(
          context,
        ).textTheme.labelMedium!.copyWith(height: SizeConstants.s2),
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.never,
          enabled: enabled,
          filled: backgroundColor != null,
          fillColor: backgroundColor,
          suffix: Padding(
            padding: const EdgeInsets.only(right: SizeConstants.s10),
            child: suffix,
          ),
          prefix: Padding(
            padding: const EdgeInsets.only(left: SizeConstants.s10),
            child: prefix,
          ),
          label: Text(
            hintText!,
            style: Theme.of(
              context,
            ).textTheme.labelMedium!.copyWith(color: effectiveHintTextColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(effectiveBorderRadius),
            borderSide: const BorderSide(color: ColorConstants.grey300),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: ColorConstants.grey300),
            borderRadius: BorderRadius.circular(effectiveBorderRadius),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: ColorConstants.grey300),
            borderRadius: BorderRadius.circular(effectiveBorderRadius),
          ),
        ),
      );
    } else {
      return CupertinoTextField(
        padding: const EdgeInsets.all(SizeConstants.s16),
        placeholder: hintText,
        placeholderStyle: Theme.of(
          context,
        ).textTheme.labelMedium!.copyWith(color: effectiveHintTextColor),
        focusNode: focusNode,
        textAlign: textAlign,
        maxLines: maxLines,
        enabled: enabled,
        textInputAction: textInputAction,
        onSubmitted: onSubmitted,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(effectiveBorderRadius),
          border: Border.all(color: ColorConstants.grey300),
        ),
        prefix: Padding(
          padding: const EdgeInsets.only(left: SizeConstants.s10),
          child: prefix,
        ),
        suffix: Padding(
          padding: const EdgeInsets.only(right: SizeConstants.s20),
          child: suffix,
        ),
        maxLength: maxLength,
        enableSuggestions: false,
        autocorrect: false,
        expands: expands,
        controller: controller,
        keyboardType: keyboardType,
        style: Theme.of(context).textTheme.labelMedium!.copyWith(height: 1.5),
      );
    }
  }
}
