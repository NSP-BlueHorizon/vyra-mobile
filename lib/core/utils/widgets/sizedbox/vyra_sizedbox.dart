import 'package:flutter/material.dart';
import 'package:vyra/core/utils/constants/constants.dart';

class VyraSizedBox extends StatelessWidget {
  final double? width;
  final double? height;

  const VyraSizedBox({
    super.key,
    this.width = SizeConstants.s10,
    this.height = SizeConstants.s10,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width, height: height);
  }
}
