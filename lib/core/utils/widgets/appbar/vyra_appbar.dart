import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../routes/route_generator.dart';

class VyraAppbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  final String title;
  final Widget? trailing;
  final bool automaticallyImplyLeading;

  const VyraAppbar({
    super.key,
    required this.title,
    this.trailing,
    this.automaticallyImplyLeading = true,
  });

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoNavigationBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        border: Border(
          bottom: BorderSide(color: Theme.of(context).dividerColor, width: 0.5),
        ),
        leading: automaticallyImplyLeading
            ? CupertinoNavigationBarBackButton(
                onPressed: () => RouteGenerator.pop(),
                color: Theme.of(context).colorScheme.primary,
              )
            : null,
        middle: Text(
          title,
          style: Theme.of(
            context,
          ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
        ),
        trailing: trailing,
      );
    } else {
      return AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        elevation: 0,
        scrolledUnderElevation: 1,
        surfaceTintColor: Theme.of(context).colorScheme.surfaceTint,
        title: Text(
          title,
          style: Theme.of(
            context,
          ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w500),
        ),
        leading: automaticallyImplyLeading
            ? IconButton(
                onPressed: () => RouteGenerator.pop(),
                icon: Icon(
                  Icons.arrow_back,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              )
            : null,
        actions: trailing != null ? [trailing!] : null,
      );
    }
  }
}
