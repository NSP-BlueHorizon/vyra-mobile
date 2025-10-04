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
  final VoidCallback? onPasswordToggle;

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
    this.onPasswordToggle,
  });

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: enabled
                  ? Theme.of(context).colorScheme.surface
                  : Theme.of(context).colorScheme.onSurface,
              borderRadius: BorderRadius.circular(SizeConstants.s12),
              border: Border.all(
                color: Theme.of(context).colorScheme.outline,
                width: 1,
              ),
            ),
            child: Row(
              children: [
                if (prefixIcon != null)
                  Padding(
                    padding: const EdgeInsets.only(
                      left: SizeConstants.s16,
                      right: SizeConstants.s10,
                    ),
                    child: prefixIcon,
                  ),
                Expanded(
                  child: CupertinoTextFormFieldRow(
                    controller: controller,
                    focusNode: focusNode,
                    keyboardType: keyboardType,
                    obscureText: obscureText,
                    maxLines: maxLines,
                    maxLength: maxLength,
                    textInputAction: textInputAction,
                    onChanged: onChanged,
                    enabled: enabled,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    decoration: const BoxDecoration(),
                    padding: EdgeInsets.symmetric(
                      horizontal: 0,
                      vertical: verticalContentPadding,
                    ),
                    placeholder: hintText ?? labelText,
                    placeholderStyle: Theme.of(context).textTheme.bodyMedium!
                        .copyWith(
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                    validator: validator,
                  ),
                ),
                if (onPasswordToggle != null)
                  Padding(
                    padding: const EdgeInsets.only(
                      right: SizeConstants.s16,
                      left: SizeConstants.s10,
                    ),
                    child: GestureDetector(
                      onTap: onPasswordToggle,
                      child: Icon(
                        obscureText ? Icons.visibility_off : Icons.visibility,
                        color: Theme.of(context).colorScheme.onSecondary,
                        size: SizeConstants.s20,
                      ),
                    ),
                  )
                else if (suffixIcon != null)
                  Padding(
                    padding: const EdgeInsets.only(
                      right: SizeConstants.s16,
                      left: SizeConstants.s10,
                    ),
                    child: suffixIcon,
                  ),
              ],
            ),
          ),
        ],
      );
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (labelText.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(bottom: SizeConstants.s8),
              child: Text(
                labelText,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onSecondary,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ),
          TextFormField(
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
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontSize: 16,
              color: Theme.of(context).colorScheme.secondary,
            ),
            textCapitalization: TextCapitalization.none,
            decoration: InputDecoration(
              hintText: hintText,

              prefixIcon: prefixIcon,
              suffixIcon: onPasswordToggle != null
                  ? GestureDetector(
                      onTap: onPasswordToggle,
                      child: Icon(
                        obscureText ? Icons.visibility_off : Icons.visibility,
                        color: Theme.of(context).colorScheme.onSecondary,
                        size: SizeConstants.s20,
                      ),
                    )
                  : suffixIcon,
              contentPadding: EdgeInsets.symmetric(
                vertical: verticalContentPadding,
                horizontal: horizontalContentPadding,
              ),
              hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Theme.of(context).colorScheme.onSecondary,
                fontSize: 16,
              ),
              errorStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: ColorConstants.red,
                fontWeight: FontWeight.w500,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(SizeConstants.s12),
                borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.outline,
                  width: 1.5,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(SizeConstants.s12),
                borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.onSecondary,
                  width: 1.5,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(SizeConstants.s12),
                borderSide: BorderSide(color: ColorConstants.accent, width: 2),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(SizeConstants.s12),
                borderSide: BorderSide(color: ColorConstants.red, width: 1.5),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(SizeConstants.s12),
                borderSide: BorderSide(color: ColorConstants.red, width: 2),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(SizeConstants.s12),
                borderSide: BorderSide(
                  color: Theme.of(
                    context,
                  ).colorScheme.outline.withValues(alpha: 0.5),
                  width: 1.5,
                ),
              ),
              filled: true,
              fillColor: enabled
                  ? Theme.of(context).colorScheme.surface
                  : Theme.of(context).colorScheme.onSurface,
            ),
            validator: validator,
          ),
        ],
      );
    }
  }
}
