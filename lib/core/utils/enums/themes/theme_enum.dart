import 'package:flutter/material.dart';

import '../../constants/constants.dart';

enum Themes {
  light(
    name: 'Light',
    image: AssetConstants.lightIllustration,
    themeMode: ThemeMode.light,
  ),
  dark(
    name: 'Dark',
    image: AssetConstants.darkIllustration,
    themeMode: ThemeMode.dark,
  ),
  system(
    name: 'System',
    image: AssetConstants.systemIllustration,
    themeMode: ThemeMode.system,
  );

  const Themes({
    required this.name,
    required this.image,
    required this.themeMode,
  });

  final String name;
  final String image;
  final ThemeMode themeMode;

  static List<Themes> get all => Themes.values;

  String getLocalizedTitle(BuildContext context) {
    switch (this) {
      case Themes.light:
        return 'Light';
      case Themes.dark:
        return 'Dark';
      case Themes.system:
        return 'System';
    }
  }
}
