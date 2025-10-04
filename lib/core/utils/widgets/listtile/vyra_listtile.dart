import 'package:flutter/material.dart';
import 'package:vyra/core/utils/widgets/widgets.dart';

import '../../constants/constants.dart';

class VyraListTile extends StatelessWidget {
  final void Function()? onTap;
  final Widget leading;
  final String title;
  final Widget? trailing;
  final bool showTrailingArrow;
  final bool showHeader;

  const VyraListTile({
    super.key,
    this.onTap,
    required this.leading,
    required this.title,
    this.trailing,
    this.showHeader = false,
    this.showTrailingArrow = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      hoverColor: ColorConstants.transparent,
      splashColor: ColorConstants.transparent,
      selectedTileColor: ColorConstants.transparent,
      selectedColor: ColorConstants.transparent,
      focusColor: ColorConstants.transparent,
      tileColor: ColorConstants.transparent,
      contentPadding: const EdgeInsets.only(
        top: SizeConstants.s4,
        right: SizeConstants.s8,
      ),
      leading: leading,
      visualDensity: VisualDensity.compact,
      title: Text(title, style: Theme.of(context).textTheme.bodyLarge),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (trailing != null) ...[
            trailing!,
            const VyraSizedBox(width: SizeConstants.s5),
            showTrailingArrow
                ? Icon(
                    IconConstants.forward,
                    size: SizeConstants.s18,
                    color: Theme.of(context).colorScheme.onSecondary,
                  )
                : const SizedBox(),
          ],
          trailing == null && showTrailingArrow
              ? Icon(
                  IconConstants.forward,
                  size: SizeConstants.s20,
                  color: Theme.of(context).colorScheme.onSecondary,
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
