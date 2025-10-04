import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:vyra/core/utils/enums/enums.dart';

import 'main_state.dart';

class MainCubit extends HydratedCubit<MainState> {
  MainCubit() : super(MainState());

  void changeIndex(int index) {
    emit(state.copyWith(currentIndex: index));
  }

  void changeTheme(ThemeMode themeMode) {
    emit(state.copyWith(themeMode: themeMode));
  }

  void changeLanguage(Languages language) {
    emit(state.copyWith(language: Locale(language.code)));
  }

  @override
  MainState? fromJson(Map<String, dynamic> json) {
    final themeMode = ThemeMode.values.byName(json['themeMode'] as String);
    final language = Languages.values.byName(json['language'] as String);
    return MainState(themeMode: themeMode, language: Locale(language.code));
  }

  @override
  Map<String, dynamic>? toJson(MainState state) {
    return {
      'themeMode': state.themeMode.name,
      'language': state.language.languageCode,
    };
  }
}
