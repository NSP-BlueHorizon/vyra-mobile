import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';

ThemeData darkTheme = ThemeData(
  cupertinoOverrideTheme: const CupertinoThemeData(
    textTheme: CupertinoTextThemeData(
      dateTimePickerTextStyle: TextStyle(
        fontFamily: 'InterTight',
        fontWeight: FontWeight.w500,
        color: ColorConstants.white,
        fontSize: 18,
      ),
      tabLabelTextStyle: TextStyle(
        fontFamily: 'InterTight',
        fontWeight: FontWeight.w500,
        color: ColorConstants.grey600,
        fontSize: 12,
      ),
    ),
  ),
  scaffoldBackgroundColor: ColorConstants.darkGrey,
  splashColor: ColorConstants.transparent,
  highlightColor: ColorConstants.transparent,
  colorScheme: const ColorScheme(
    brightness: Brightness.dark,
    primary: ColorConstants.accent,
    onPrimary: ColorConstants.grey900,
    secondary: ColorConstants.white,
    onSecondary: ColorConstants.grey600,
    error: ColorConstants.red,
    onError: ColorConstants.white,
    surface: ColorConstants.darkBackground,
    onSurface: ColorConstants.lightGrey,
  ),
  appBarTheme: const AppBarTheme(
    titleTextStyle: TextStyle(color: ColorConstants.white),
    color: ColorConstants.transparent,
    iconTheme: IconThemeData(size: 30, color: ColorConstants.white),
  ),
  dropdownMenuTheme: DropdownMenuThemeData(
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: const TextStyle(
        fontFamily: 'InterTight',
        color: ColorConstants.white,
        fontWeight: FontWeight.w400,
        fontSize: 14,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(SizeConstants.s8),
        borderSide: const BorderSide(width: 0.5, color: ColorConstants.grey600),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(SizeConstants.s8),
        borderSide: const BorderSide(width: 0.5, color: ColorConstants.grey600),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(SizeConstants.s8),
        borderSide: const BorderSide(width: 0.5, color: ColorConstants.grey600),
      ),
    ),
    // textStyle:
  ),
  dividerColor: ColorConstants.lightGrey,
  dividerTheme: const DividerThemeData(thickness: 0.4),
  chipTheme: ChipThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(SizeConstants.s30),
    ),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: ColorConstants.accent,
    foregroundColor: ColorConstants.white,
  ),
  listTileTheme: const ListTileThemeData(
    contentPadding: EdgeInsets.symmetric(horizontal: SizeConstants.s10),
    titleTextStyle: TextStyle(
      fontFamily: 'InterTight',
      color: ColorConstants.white,
      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),
    selectedTileColor: ColorConstants.accent,
    iconColor: ColorConstants.lightGrey,
    textColor: ColorConstants.white,
  ),
  iconTheme: const IconThemeData(color: ColorConstants.grey600),
  primaryIconTheme: const IconThemeData(color: ColorConstants.white),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: ColorConstants.grey900,
    unselectedItemColor: ColorConstants.grey600,
    selectedItemColor: ColorConstants.accent,
  ),
  tabBarTheme: const TabBarThemeData(labelColor: ColorConstants.grey600),
  cardTheme: const CardThemeData(color: ColorConstants.grey900),
  cardColor: ColorConstants.grey900,
  elevatedButtonTheme: const ElevatedButtonThemeData(style: ButtonStyle()),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontFamily: 'InterTight',
      color: ColorConstants.white,
      fontWeight: FontWeight.w900,
      fontSize: 42,
    ),
    displayMedium: TextStyle(
      fontFamily: 'InterTight',
      color: ColorConstants.white,
      fontWeight: FontWeight.w900,
      fontSize: 40,
    ),
    displaySmall: TextStyle(
      fontFamily: 'InterTight',
      color: ColorConstants.white,
      fontWeight: FontWeight.w900,
      fontSize: 38,
    ),
    headlineLarge: TextStyle(
      fontFamily: 'InterTight',
      color: ColorConstants.white,
      fontWeight: FontWeight.w900,
      fontSize: 28,
    ),
    headlineMedium: TextStyle(
      fontFamily: 'InterTight',
      color: ColorConstants.white,
      fontWeight: FontWeight.w900,
      fontSize: 26,
    ),
    headlineSmall: TextStyle(
      fontFamily: 'InterTight',
      color: ColorConstants.white,
      fontWeight: FontWeight.w800,
      fontSize: 24,
    ),
    titleLarge: TextStyle(
      fontFamily: 'InterTight',
      color: ColorConstants.white,
      fontSize: 22,
      fontWeight: FontWeight.w800,
    ),
    titleMedium: TextStyle(
      fontFamily: 'InterTight',
      color: ColorConstants.white,
      fontSize: 20,
      fontWeight: FontWeight.w800,
    ),
    titleSmall: TextStyle(
      fontFamily: 'InterTight',
      color: ColorConstants.white,
      fontSize: 18,
      fontWeight: FontWeight.w700,
    ),
    bodyLarge: TextStyle(
      fontFamily: 'InterTight',
      color: ColorConstants.white,
      fontSize: 16,
      fontWeight: FontWeight.w700,
    ),
    bodyMedium: TextStyle(
      fontFamily: 'InterTight',
      fontWeight: FontWeight.w500,
      color: ColorConstants.white,
      height: 2,
      fontSize: 14,
    ),
    bodySmall: TextStyle(
      fontFamily: 'InterTight',
      color: ColorConstants.white,
      fontWeight: FontWeight.w400,
      fontSize: 12,
    ),
    labelLarge: TextStyle(
      fontFamily: 'InterTight',
      fontWeight: FontWeight.w900,
      color: ColorConstants.white,
      fontSize: 18,
    ),
    labelMedium: TextStyle(
      fontFamily: 'InterTight',
      color: ColorConstants.white,
      fontWeight: FontWeight.w400,
      fontSize: 14,
    ),
    labelSmall: TextStyle(
      fontFamily: 'InterTight',
      color: ColorConstants.white,
      fontWeight: FontWeight.w500,
      fontSize: 12,
    ),
  ),
);
