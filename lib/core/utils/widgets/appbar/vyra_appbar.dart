import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class VyraAppbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  final String title;

  const VyraAppbar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: SizeConstants.s16),
        child: Text(title, style: Theme.of(context).textTheme.headlineLarge),
      ),
    );
  }
}
