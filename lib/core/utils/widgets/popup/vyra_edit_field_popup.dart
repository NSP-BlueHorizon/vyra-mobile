import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vyra/core/utils/constants/constants.dart';
import 'package:vyra/core/utils/routes/route_generator.dart';
import 'package:vyra/core/utils/widgets/date_picker/vyra_date_picker.dart';
import 'package:vyra/l10n/app_localizations.dart';

class VyraEditFieldPopup {
  static Future<void> show({
    required BuildContext context,
    required String fieldName,
    required String fieldLabel,
    required String initialValue,
    required IconData icon,
    required Function(String) onSave,
    String? Function(String?)? validator,
    bool isDateField = false,
  }) async {
    if (isDateField) {
      // Show date picker for birth date
      final DateTime? selectedDate = await VyraDatePicker.show(
        context: context,
        initialDate: _parseDate(initialValue),
      );

      if (selectedDate != null) {
        HapticFeedback.lightImpact();
        final formattedDate =
            '${selectedDate.year}-${selectedDate.month.toString().padLeft(2, '0')}-${selectedDate.day.toString().padLeft(2, '0')}';
        onSave(formattedDate);
      }
      return;
    }

    final TextEditingController controller = TextEditingController(
      text: initialValue,
    );
    String? errorText;

    if (Platform.isIOS) {
      return showCupertinoDialog(
        context: context,
        barrierDismissible: false,
        builder:
            (BuildContext dialogContext) => StatefulBuilder(
              builder: (context, setState) {
                return CupertinoAlertDialog(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(icon, size: SizeConstants.s18),
                      const SizedBox(width: SizeConstants.s8),
                      Text(
                        fieldLabel,
                        style: const TextStyle(fontSize: SizeConstants.s16),
                      ),
                    ],
                  ),
                  content: Column(
                    children: [
                      const SizedBox(height: SizeConstants.s16),
                      CupertinoTextField(
                        controller: controller,
                        placeholder: fieldLabel,
                        padding: const EdgeInsets.all(SizeConstants.s12),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.onSurface,
                          borderRadius: BorderRadius.circular(SizeConstants.s8),
                          border: Border.all(
                            color:
                                errorText != null
                                    ? ColorConstants.red
                                    : ColorConstants.grey300,
                          ),
                        ),
                        onChanged: (value) {
                          if (validator != null) {
                            setState(() {
                              errorText = validator(value);
                            });
                          }
                        },
                      ),
                      if (errorText != null) ...[
                        const SizedBox(height: SizeConstants.s8),
                        Text(
                          errorText!,
                          style: TextStyle(
                            color: ColorConstants.red,
                            fontSize: SizeConstants.s12,
                          ),
                        ),
                      ],
                    ],
                  ),
                  actions: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CupertinoDialogAction(
                          onPressed: () {
                            HapticFeedback.lightImpact();
                            RouteGenerator.pop();
                          },
                          child: Text(
                            AppLocalizations.of(context)!.cancel,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.error,
                            ),
                          ),
                        ),
                        CupertinoDialogAction(
                          onPressed: () {
                            HapticFeedback.lightImpact();
                            final value = controller.text;
                            if (validator != null) {
                              final error = validator(value);
                              if (error != null) {
                                setState(() {
                                  errorText = error;
                                });
                                return;
                              }
                            }
                            RouteGenerator.pop();
                            onSave(value);
                          },
                          child: Text(
                            AppLocalizations.of(context)!.update,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
      );
    } else {
      return showDialog(
        context: context,
        barrierDismissible: false,
        builder:
            (BuildContext dialogContext) => StatefulBuilder(
              builder: (context, setState) {
                return AlertDialog(
                  title: Row(
                    children: [
                      Icon(icon, size: SizeConstants.s20),
                      const SizedBox(width: SizeConstants.s10),
                      Text(
                        fieldLabel,
                        style: const TextStyle(fontSize: SizeConstants.s16),
                      ),
                    ],
                  ),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        controller: controller,
                        decoration: InputDecoration(
                          hintText: fieldLabel,
                          errorText: errorText,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              SizeConstants.s8,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              SizeConstants.s8,
                            ),
                            borderSide: BorderSide(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              SizeConstants.s8,
                            ),
                            borderSide: const BorderSide(
                              color: ColorConstants.red,
                            ),
                          ),
                        ),
                        onChanged: (value) {
                          if (validator != null) {
                            setState(() {
                              errorText = validator(value);
                            });
                          }
                        },
                      ),
                    ],
                  ),
                  actions: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            HapticFeedback.lightImpact();
                            RouteGenerator.pop();
                          },
                          child: Text(
                            AppLocalizations.of(context)!.cancel,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.error,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            HapticFeedback.lightImpact();
                            final value = controller.text;
                            if (validator != null) {
                              final error = validator(value);
                              if (error != null) {
                                setState(() {
                                  errorText = error;
                                });
                                return;
                              }
                            }
                            RouteGenerator.pop();
                            onSave(value);
                          },
                          child: Text(AppLocalizations.of(context)!.update),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
      );
    }
  }

  static DateTime _parseDate(String dateString) {
    try {
      return DateTime.parse(dateString);
    } catch (e) {
      return DateTime.now().subtract(const Duration(days: 365 * 18));
    }
  }
}
