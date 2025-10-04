import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingState(controller: PageController()));

  void onPageChange({required int index}) {
    emit(state.copyWith(index: index));
  }

  void nextPage() {
    state.controller.nextPage(
      duration: const Duration(milliseconds: 600),
      curve: Curves.ease,
    );
  }
}
