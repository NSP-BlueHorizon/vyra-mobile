import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vyra/core/utils/constants/constants.dart';
import 'package:vyra/l10n/app_localizations.dart';

class VyraDatePicker {
  static Future<DateTime?> show({
    required BuildContext context,
    DateTime? initialDate,
    DateTime? minimumDate,
    DateTime? maximumDate,
  }) async {
    final DateTime initial =
        initialDate ?? DateTime.now().subtract(const Duration(days: 365 * 18));
    final DateTime minimum = minimumDate ?? DateTime(1900);
    final DateTime maximum = maximumDate ?? DateTime.now();

    DateTime? picked;
    DateTime? tempSelectedDate = initial;

    if (Platform.isIOS) {
      // iOS native date picker
      picked = await showCupertinoModalPopup<DateTime>(
        context: context,
        builder: (context) => Container(
          height: 300,
          color: Theme.of(context).scaffoldBackgroundColor,
          child: Column(
            children: [
              // Header with buttons
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  border: Border(
                    bottom: BorderSide(
                      color: Theme.of(
                        context,
                      ).colorScheme.outline.withValues(alpha: 0.3),
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CupertinoButton(
                      padding: EdgeInsets.zero,
                      onPressed: () => Navigator.of(context).pop(),
                      child: Text(
                        AppLocalizations.of(context)!.cancel,
                        style: TextStyle(
                          color: ColorConstants.red,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    CupertinoButton(
                      padding: EdgeInsets.zero,
                      onPressed: () =>
                          Navigator.of(context).pop(tempSelectedDate),
                      child: Text(
                        AppLocalizations.of(context)!.done,
                        style: TextStyle(
                          color: ColorConstants.accent,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Date picker
              Expanded(
                child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.date,
                  initialDateTime: initial,
                  minimumDate: minimum,
                  maximumDate: maximum,
                  onDateTimeChanged: (DateTime newDate) {
                    tempSelectedDate = newDate;
                  },
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      // Android native date picker
      picked = await showDatePicker(
        context: context,
        initialDate: initial,
        firstDate: minimum,
        lastDate: maximum,
        builder: (context, child) {
          return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: Theme.of(context).colorScheme.copyWith(
                primary: ColorConstants.accent,
                onPrimary: ColorConstants.white,
              ),
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                  foregroundColor: ColorConstants.red,
                  textStyle: const TextStyle(fontWeight: FontWeight.normal),
                ),
              ),
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorConstants.accent,
                  foregroundColor: ColorConstants.white,
                  textStyle: const TextStyle(fontWeight: FontWeight.normal),
                ),
              ),
            ),
            child: child!,
          );
        },
      );
    }

    return picked;
  }
}
