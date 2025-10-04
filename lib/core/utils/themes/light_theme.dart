import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';

ThemeData lightTheme = ThemeData(
  cupertinoOverrideTheme: const CupertinoThemeData(
    textTheme: CupertinoTextThemeData(
      dateTimePickerTextStyle: TextStyle(
        fontFamily: 'InterTight',
        fontWeight: FontWeight.w500,
        color: ColorConstants.black,
        fontSize: 18,
      ),
      tabLabelTextStyle: TextStyle(
        fontFamily: 'InterTight',
        fontWeight: FontWeight.w500,
        color: ColorConstants.grey500,
        fontSize: 12,
      ),
    ),
  ),
  scaffoldBackgroundColor: ColorConstants.lightBackground,
  splashColor: ColorConstants.transparent,
  highlightColor: ColorConstants.transparent,
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: ColorConstants.accent,
    onPrimary: ColorConstants.white,
    secondary: ColorConstants.black,
    onSecondary: ColorConstants.grey500,
    error: ColorConstants.red,
    onError: ColorConstants.white,
    surface: ColorConstants.lightBackground,
    onSurface: ColorConstants.white,
  ),
  appBarTheme: const AppBarTheme(
    titleTextStyle: TextStyle(color: ColorConstants.black),
    color: ColorConstants.transparent,
    iconTheme: IconThemeData(size: 25, color: ColorConstants.black),
  ),
  dropdownMenuTheme: DropdownMenuThemeData(
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: const TextStyle(
        fontFamily: 'InterTight',
        color: ColorConstants.grey500,
        fontWeight: FontWeight.w400,
        fontSize: 14,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(SizeConstants.s8),
        borderSide: const BorderSide(width: 0.5, color: ColorConstants.grey300),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(SizeConstants.s8),
        borderSide: const BorderSide(width: 0.5, color: ColorConstants.grey300),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(SizeConstants.s8),
        borderSide: const BorderSide(width: 0.5, color: ColorConstants.grey300),
      ),
    ),
    // textStyle:
  ),
  dividerColor: ColorConstants.grey300,
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
      color: ColorConstants.black,
      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),
    selectedTileColor: ColorConstants.accent,
    iconColor: ColorConstants.grey500,
  ),
  iconTheme: const IconThemeData(color: ColorConstants.grey500),
  primaryIconTheme: const IconThemeData(color: ColorConstants.white),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: ColorConstants.white,
    unselectedItemColor: ColorConstants.grey700,
    selectedItemColor: ColorConstants.accent,
  ),
  tabBarTheme: const TabBarThemeData(labelColor: ColorConstants.grey600),
  cardTheme: const CardThemeData(color: ColorConstants.white),
  cardColor: ColorConstants.white,
  elevatedButtonTheme: const ElevatedButtonThemeData(style: ButtonStyle()),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontFamily: 'InterTight',
      color: ColorConstants.black,
      fontWeight: FontWeight.w900,
      fontSize: 42,
    ),
    displayMedium: TextStyle(
      fontFamily: 'InterTight',
      color: ColorConstants.black,
      fontWeight: FontWeight.w900,
      fontSize: 40,
    ),
    displaySmall: TextStyle(
      fontFamily: 'InterTight',
      color: ColorConstants.black,
      fontWeight: FontWeight.w900,
      fontSize: 38,
    ),
    headlineLarge: TextStyle(
      fontFamily: 'InterTight',
      color: ColorConstants.black,
      fontWeight: FontWeight.w900,
      fontSize: 28,
    ),
    headlineMedium: TextStyle(
      fontFamily: 'InterTight',
      color: ColorConstants.black,
      fontWeight: FontWeight.w900,
      fontSize: 26,
    ),
    headlineSmall: TextStyle(
      fontFamily: 'InterTight',
      color: ColorConstants.black,
      fontWeight: FontWeight.w800,
      fontSize: 24,
    ),
    titleLarge: TextStyle(
      fontFamily: 'InterTight',
      color: ColorConstants.black,
      fontSize: 22,
      fontWeight: FontWeight.w800,
    ),
    titleMedium: TextStyle(
      fontFamily: 'InterTight',
      color: ColorConstants.black,
      fontSize: 20,
      fontWeight: FontWeight.w800,
    ),
    titleSmall: TextStyle(
      fontFamily: 'InterTight',
      color: ColorConstants.black,
      fontSize: 18,
      fontWeight: FontWeight.w700,
    ),
    bodyLarge: TextStyle(
      fontFamily: 'InterTight',
      color: ColorConstants.black,
      fontSize: 16,
      fontWeight: FontWeight.w700,
    ),
    bodyMedium: TextStyle(
      fontFamily: 'InterTight',
      fontWeight: FontWeight.w500,
      color: ColorConstants.black,
      height: 2,
      fontSize: 14,
    ),
    bodySmall: TextStyle(
      fontFamily: 'InterTight',
      color: ColorConstants.black,
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
      color: ColorConstants.black,
      fontWeight: FontWeight.w400,
      fontSize: 14,
    ),
    labelSmall: TextStyle(
      fontFamily: 'InterTight',
      color: ColorConstants.black,
      fontWeight: FontWeight.w500,
      fontSize: 12,
    ),
  ),
);
