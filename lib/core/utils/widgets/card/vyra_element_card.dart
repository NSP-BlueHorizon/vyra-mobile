import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class VyraElementCard extends StatelessWidget {
  final Widget child;
  final double? padding;
  final Color? borderColor;
  final double? borderRadius;

  const VyraElementCard({
    super.key,
    required this.child,
    this.padding,
    this.borderColor,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding ?? SizeConstants.s16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onSurface,
        borderRadius: BorderRadius.circular(borderRadius ?? SizeConstants.s12),
        border: borderColor != null
            ? Border.all(color: borderColor!, width: 1.5)
            : null,
      ),
      child: child,
    );
  }
}
