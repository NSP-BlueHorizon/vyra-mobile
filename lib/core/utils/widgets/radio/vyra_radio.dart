import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VyraRadio extends StatelessWidget {
  final dynamic value;
  final dynamic groupValue;
  final void Function(dynamic) onChanged;
  const VyraRadio({
    super.key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return Transform.scale(
        scale: 1.6,
        child: CupertinoRadio(
          activeColor: Theme.of(context).colorScheme.primary,

          value: value,
          groupValue: groupValue,
          onChanged: onChanged,
        ),
      );
    } else {
      return Transform.scale(
        scale: 1.3,
        child: Radio(
          activeColor: Theme.of(context).colorScheme.primary,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,

          value: value,
          groupValue: groupValue,
          onChanged: onChanged,
        ),
      );
    }
  }
}
