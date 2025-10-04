import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class VyraExpansiontile extends StatelessWidget {
  final int index;
  final String title;
  final String answer;

  const VyraExpansiontile({
    super.key,
    required this.index,
    required this.title,
    required this.answer,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      expandedAlignment: Alignment.centerLeft,
      tilePadding: EdgeInsets.zero,
      collapsedIconColor: Theme.of(context).colorScheme.onSecondary,
      childrenPadding: const EdgeInsets.symmetric(
        horizontal: SizeConstants.s10,
      ),

      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: SizeConstants.s10),
        child: Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.left,
        ),
      ),
      children: [
        Text(
          answer,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ],
    );
  }
}
