import 'package:flutter/material.dart';

class SettingsModel {
  final IconData icon;
  final String title;
  final VoidCallback? onTap;
  final Widget? trailing;

  const SettingsModel({
    required this.icon,
    required this.title,
    this.onTap,
    this.trailing,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is SettingsModel &&
        other.icon == icon &&
        other.title == title &&
        other.onTap == onTap &&
        other.trailing == trailing;
  }

  @override
  int get hashCode =>
      icon.hashCode ^ title.hashCode ^ onTap.hashCode ^ trailing.hashCode;

  @override
  String toString() {
    return 'SettingsModel(icon: $icon, title: $title, onTap: $onTap, trailing: $trailing)';
  }
}
