import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../constants/constants.dart';

class VyraShimmer extends StatelessWidget {
  final double? height;
  final double width;
  final double horizontalPadding;
  final double borderRadius;
  final double verticalPadding;
  const VyraShimmer({
    super.key,
    this.height,
    required this.width,
    this.horizontalPadding = 0,
    this.verticalPadding = 0,
    this.borderRadius = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding,
        vertical: verticalPadding,
      ),
      child: Shimmer.fromColors(
        baseColor: ColorConstants.grey100,
        highlightColor: ColorConstants.grey300,
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            color: ColorConstants.grey100,
          ),
        ),
      ),
    );
  }
}
