import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vyra/core/utils/constants/constants.dart';
import 'package:vyra/core/utils/routes/route_generator.dart';
import 'package:vyra/core/utils/widgets/sizedbox/vyra_sizedbox.dart';

class VyraDropdownItem {
  final dynamic value;
  final String label;
  final bool enabled;

  const VyraDropdownItem({
    required this.value,
    required this.label,
    this.enabled = true,
  });
}

class VyraDropDown extends StatelessWidget {
  final List<VyraDropdownItem> items;
  final bool enabled;
  final String hintText;
  final void Function(int?) onSelected;
  final IconData? leadingIcon;
  final double leadingIconSize;
  final int initialItem;
  const VyraDropDown({
    super.key,
    required this.items,
    required this.onSelected,
    required this.hintText,
    required this.initialItem,
    this.enabled = true,
    this.leadingIcon,
    this.leadingIconSize = SizeConstants.s24,
  });

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return DropdownMenu(
        enabled: enabled,
        expandedInsets: EdgeInsets.zero,
        textStyle: Theme.of(context).textTheme.bodySmall,
        leadingIcon: Icon(leadingIcon, size: leadingIconSize),
        onSelected: (id) => onSelected(id),
        menuStyle: MenuStyle(
          maximumSize: WidgetStatePropertyAll(
            Size(double.infinity, MediaQuery.sizeOf(context).height * 0.2),
          ),
        ),
        hintText: hintText,
        dropdownMenuEntries: items.map((item) {
          return DropdownMenuEntry(
            value: item.value,
            label: item.label,
            style: ButtonStyle(
              foregroundColor: WidgetStatePropertyAll(
                Theme.of(context).colorScheme.secondary,
              ),
              textStyle: WidgetStatePropertyAll(
                Theme.of(
                  context,
                ).textTheme.labelMedium!.copyWith(color: Colors.red),
              ),
            ),
          );
        }).toList(),
      );
    } else {
      return GestureDetector(
        onTap: () {
          showCupertinoModalPopup(
            context: context,
            barrierDismissible: true,
            builder: (context) {
              return CupertinoActionSheet(
                cancelButton: CupertinoActionSheetAction(
                  onPressed: () async {
                    await HapticFeedback.mediumImpact();
                    RouteGenerator.pop();
                  },
                  child: const Text('Close'),
                ),
                actions: [
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height / 5,
                    child: CupertinoPicker(
                      scrollController: FixedExtentScrollController(
                        initialItem: initialItem,
                      ),
                      itemExtent: SizeConstants.s50,
                      onSelectedItemChanged: (index) => onSelected(index),
                      children: items
                          .map((e) => Center(child: Text(e.label)))
                          .toList(),
                    ),
                  ),
                ],
              );
            },
          );
        },
        child: Container(
          width: double.infinity,
          height: SizeConstants.s55,
          padding: const EdgeInsets.only(
            left: SizeConstants.s10,
            right: SizeConstants.s16,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(SizeConstants.s8),
            border: Border.all(
              width: 0.5,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
          child: Row(
            children: [
              Icon(leadingIcon, size: leadingIconSize),
              const VyraSizedBox(width: SizeConstants.s20),
              Text(
                hintText,
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: hintText.contains('Select')
                      ? Theme.of(context).colorScheme.onSecondary
                      : Theme.of(context).colorScheme.secondary,
                ),
              ),
              const Spacer(),
              Icon(
                Icons.arrow_drop_down,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ],
          ),
        ),
      );
    }
  }
}
