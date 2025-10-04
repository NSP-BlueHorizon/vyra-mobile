import 'package:flutter/material.dart';
import 'package:vyra/core/utils/widgets/widgets.dart';

import '../../constants/constants.dart';

class VyraChip extends StatelessWidget {
  final bool isSelected;
  final void Function(bool) onSelected;
  final Icon? icon;
  final String label;

  const VyraChip({
    super.key,
    required this.isSelected,
    required this.onSelected,
    required this.label,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      showCheckmark: false,
      color: WidgetStateProperty.all(
        isSelected
            ? Theme.of(context).colorScheme.primary
            : Theme.of(context).colorScheme.onSurface,
      ),
      label: Row(
        children: [
          icon != null
              ? Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (icon != null) ...[
                      icon!,
                      const VyraSizedBox(width: SizeConstants.s8),
                    ],
                  ],
                )
              : const SizedBox(),
          Text(
            label,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium!.copyWith(color: ColorConstants.white),
          ),
        ],
      ),
      selected: isSelected,
      onSelected: onSelected,
    );
  }
}
