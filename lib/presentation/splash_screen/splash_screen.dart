import 'package:advanced_app/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:advanced_app/presentation/resources/assets_manager.dart';
import 'package:advanced_app/presentation/resources/color_manager.dart';
import 'package:advanced_app/presentation/resources/constants_manager.dart';

import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: const OnBoardingScreen(),
      duration: AppConstants.splashTime,
      imageSrc: ImageAssets.splashIcon,
      backgroundColor: ColorManager.primary,
    );
  }
}
