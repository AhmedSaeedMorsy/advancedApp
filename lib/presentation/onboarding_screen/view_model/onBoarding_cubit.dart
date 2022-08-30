import 'dart:async';

import 'package:advanced_app/presentation/onboarding_screen/view_model/onBoarding_states.dart';
import 'package:advanced_app/presentation/resources/assets_manager.dart';
import 'package:advanced_app/presentation/resources/strings_manager.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/models/onboarding_model.dart';

class OnBoardingCubit extends Cubit<OnBoardingStates> {
  OnBoardingCubit() : super(OnBoardingInitState());
  static OnBoardingCubit get(context) => BlocProvider.of(context);
  List<OnboardingModel> list = [
    OnboardingModel(
      AppStrings.onBoardingTitle1,
      AppStrings.onBoardingBody1,
      AssetsManager.onBoardingLogo1,
    ),
    OnboardingModel(
      AppStrings.onBoardingTitle2,
      AppStrings.onBoardingBody2,
      AssetsManager.onBoardingLogo2,
    ),
    OnboardingModel(
      AppStrings.onBoardingTitle3,
      AppStrings.onBoardingBody3,
      AssetsManager.onBoardingLogo3,
    ),
    OnboardingModel(
      AppStrings.onBoardingTitle4,
      AppStrings.onBoardingBody4,
      AssetsManager.onBoardingLogo4,
    ),
  ];
  int currenIndex = 0;
  void onPageChange(int index) {
    currenIndex = index;
    emit(OnBoardingChangePageState());
  }

  void goNext() {
    int goNextIndex = ++currenIndex;
    if (goNextIndex == list.length) {
      currenIndex = 0;
    }
    emit(OnBoardingGoNextState());
  }

  void goprevious() {
    int goPreviousIndex = --currenIndex;
    if (goPreviousIndex == -1) {
      currenIndex = list.length - 1;
    }
    emit(OnBoardingGoPreviousState());
  }
}
