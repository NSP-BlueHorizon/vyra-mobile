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
            ? ColorConstants.accent.withValues(alpha: 0.1)
            : Theme.of(context).colorScheme.onSurface,
      ),
      label: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (icon != null) ...[
            Icon(
              icon!.icon,
              color: isSelected ? ColorConstants.accent : icon!.color,
            ),
            const VyraSizedBox(width: SizeConstants.s8),
          ],
          Text(
            label,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color:
                  isSelected
                      ? ColorConstants.accent
                      : Theme.of(context).colorScheme.onSecondary,
            ),
          ),
        ],
      ),
      selected: isSelected,
      onSelected: onSelected,
    );
  }
}
