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
  });

  @override
  Widget build(BuildContext context) {
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
        style: Theme.of(
          context,
        ).textTheme.labelMedium!.copyWith(height: SizeConstants.s2),
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.never,
          enabled: enabled,
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
            ).textTheme.labelMedium!.copyWith(color: ColorConstants.grey500),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(SizeConstants.s8),
            borderSide: const BorderSide(color: ColorConstants.grey300),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: ColorConstants.grey300),
            borderRadius: BorderRadius.circular(SizeConstants.s8),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: ColorConstants.grey300),
          ),
        ),
      );
    } else {
      return CupertinoTextField(
        padding: const EdgeInsets.all(SizeConstants.s16),
        placeholder: hintText,
        focusNode: focusNode,
        textAlign: textAlign,
        maxLines: maxLines,
        enabled: enabled,
        textInputAction: textInputAction,
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
