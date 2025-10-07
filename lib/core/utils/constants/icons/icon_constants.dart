import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconConstants {
  IconConstants._();

  // * General Icons
  static const IconData back = Icons.arrow_back_ios_new_rounded;
  static const IconData forward = Icons.arrow_forward_ios_rounded;
  static const IconData done = Icons.done_rounded;
  static const IconData add = Icons.add_rounded;
  static const IconData currentLocation = Icons.my_location_rounded;
  static const IconData edit = Icons.edit_outlined;
  static const IconData lastSignIn = Icons.access_time_rounded;

  // * Bottom Navigation Icons - Material
  static const IconData materialNavigationOutlined = Icons.navigation_outlined;
  static const IconData materialNavigationFilled = Icons.navigation;
  static const IconData materialProfileOutlined = Icons.person_outline;
  static const IconData materialProfileFilled = Icons.person;

  // * Bottom Navigation Icons - Cupertino
  static const IconData cupertinoNavigationFilled =
      CupertinoIcons.location_fill;
  static const IconData cupertinoProfileFilled = CupertinoIcons.person_fill;

  // * Other Icons
  static const IconData calender = Icons.calendar_month_rounded;
  static const IconData assistant = Icons.assistant;
  static const IconData university = Icons.school;

  // * Theme Icons
  static const IconData light = Icons.light_mode_rounded;
  static const IconData dark = Icons.dark_mode_rounded;

  // * Authentication Icons
  static const IconData email = Icons.email_outlined;
  static const IconData password = Icons.lock_outline_rounded;
  static const IconData username = Icons.person_outline_rounded;
  static const IconData fullName = Icons.badge_outlined;
  static const IconData birthDate = Icons.cake_outlined;
  static const IconData confirmPassword = Icons.lock_outline_rounded;

  // * Map & Route Icons
  static const IconData walking = Icons.directions_walk;
  static const IconData cycling = Icons.directions_bike;
  static const IconData leaf = Icons.eco_outlined;
  static const IconData speed = Icons.speed;
  static const IconData route = Icons.route;

  // * Season Icons
  static const IconData spring = Icons.local_florist_rounded;
  static const IconData summer = Icons.wb_sunny_rounded;
  static const IconData fall = Icons.park_rounded;
  static const IconData winter = Icons.ac_unit_rounded;
}
