import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vyra/core/utils/enums/enums.dart';

part 'main_state.freezed.dart';

@freezed
class MainState with _$MainState {
  const factory MainState({
    @Default(0) int currentIndex,
    @Default(ThemeMode.system) ThemeMode themeMode,
    @Default(Locale("tr")) Locale language,
  }) = _MainState;
}
