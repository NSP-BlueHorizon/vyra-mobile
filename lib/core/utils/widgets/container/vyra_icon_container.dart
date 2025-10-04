import 'package:flutter/material.dart';
import 'package:vyra/core/utils/constants/constants.dart';

class VyraIconContainer extends StatelessWidget {
  final IconData icon;
  const VyraIconContainer({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConstants.s40,
      height: SizeConstants.s40,
      decoration: BoxDecoration(
        color: ColorConstants.accent.withValues(alpha: 0.13),
        borderRadius: BorderRadius.circular(SizeConstants.s10),
      ),
      child: Icon(
        icon,
        size: SizeConstants.s24,
        color: ColorConstants.accent,
      ),
    );
  }
}
