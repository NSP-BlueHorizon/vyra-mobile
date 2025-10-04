import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VyraCheckBox extends StatelessWidget {
  final bool value;
  final void Function(bool?) onChanged;
  const VyraCheckBox({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoCheckbox(
        activeColor: Theme.of(context).colorScheme.primary,
        value: value,
        onChanged: (value) => onChanged(value),
      );
    } else {
      return Checkbox(
        activeColor: Theme.of(context).colorScheme.primary,
        value: value,
        onChanged: (value) => onChanged(value),
      );
    }
  }
}
