import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class VyraTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final Widget? prefixIcon;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;
  final Widget? suffixIcon;
  final int? maxLines;
  final String? hintText;
  final int? maxLength;
  final TextInputAction? textInputAction;
  final bool expands;
  final Function(String)? onChanged;
  final double verticalContentPadding;
  final double horizontalContentPadding;
  final bool obscureText;
  final bool enabled;
  final FocusNode? focusNode;

  const VyraTextFormField({
    super.key,
    required this.controller,
    this.keyboardType = TextInputType.text,
    required this.labelText,
    this.prefixIcon,
    this.validator,
    this.maxLines = 1,
    this.maxLength,
    this.textInputAction = TextInputAction.done,
    this.onChanged,
    this.hintText,
    this.expands = false,
    this.verticalContentPadding = SizeConstants.s16,
    this.horizontalContentPadding = SizeConstants.s16,
    this.suffixIcon,
    this.obscureText = false,
    this.enabled = true,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (labelText.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(bottom: SizeConstants.s8),
              child: Text(
                labelText,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          CupertinoTextFormFieldRow(
            controller: controller,
            focusNode: focusNode,
            keyboardType: keyboardType,
            obscureText: obscureText,
            maxLines: maxLines,
            maxLength: maxLength,
            textInputAction: textInputAction,
            onChanged: onChanged,
            enabled: enabled,
            style: Theme.of(context).textTheme.bodyMedium,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceContainerHighest,
              borderRadius: BorderRadius.circular(SizeConstants.s12),
              border: Border.all(
                color: Theme.of(context).colorScheme.outline,
                width: 1,
              ),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: horizontalContentPadding,
              vertical: verticalContentPadding,
            ),
            placeholder: hintText ?? labelText,
            placeholderStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
            prefix: prefixIcon,
            validator: validator,
          ),
        ],
      );
    } else {
      return TextFormField(
        controller: controller,
        focusNode: focusNode,
        keyboardType: keyboardType,
        expands: expands,
        obscureText: obscureText,
        maxLines: maxLines,
        maxLength: maxLength,
        textInputAction: textInputAction,
        autocorrect: false,
        onChanged: onChanged,
        enabled: enabled,
        style: Theme.of(context).textTheme.bodyMedium,
        textCapitalization: TextCapitalization.none,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          contentPadding: EdgeInsets.symmetric(
            vertical: verticalContentPadding,
            horizontal: horizontalContentPadding,
          ),
          labelStyle: Theme.of(
            context,
          ).textTheme.bodyMedium!.copyWith(color: ColorConstants.grey500),
          floatingLabelStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
            color: ColorConstants.accent,
            fontWeight: FontWeight.w500,
          ),
          hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
          errorStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
            color: ColorConstants.red,
            fontWeight: FontWeight.w500,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(SizeConstants.s12),
            borderSide: const BorderSide(color: ColorConstants.accent),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(SizeConstants.s12),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.outline,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(SizeConstants.s12),
            borderSide: const BorderSide(
              color: ColorConstants.accent,
              width: 2,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(SizeConstants.s12),
            borderSide: const BorderSide(color: ColorConstants.red, width: 2),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(SizeConstants.s12),
            borderSide: const BorderSide(color: ColorConstants.red, width: 2),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(SizeConstants.s12),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
          filled: true,
          fillColor: enabled
              ? Theme.of(context).colorScheme.surface
              : Theme.of(context).colorScheme.onSurface,
        ),
        validator: validator,
      );
    }
  }
}
