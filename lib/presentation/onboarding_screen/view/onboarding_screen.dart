import 'package:advanced_app/domain/models/onboarding_model.dart';
import 'package:advanced_app/presentation/onboarding_screen/view_model/onBoarding_cubit.dart';
import 'package:advanced_app/presentation/onboarding_screen/view_model/onBoarding_states.dart';
import 'package:advanced_app/presentation/resources/assets_manager.dart';
import 'package:advanced_app/presentation/resources/color_manager.dart';
import 'package:advanced_app/presentation/resources/routes_manager.dart';
import 'package:advanced_app/presentation/resources/strings_manager.dart';
import 'package:advanced_app/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnBoardingCubit(),
      child: BlocBuilder<OnBoardingCubit, OnBoardingStates>(
        builder: (context, state) {
          return _getOnBoardingUi(context);
        },
      ),
    );
  }

  Widget _getOnBoardingUi(context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: Padding(
        padding: const EdgeInsets.all(AppPadding.p16),
        child: PageView.builder(
          onPageChanged: (index) {
            OnBoardingCubit.get(context).onPageChange(index);
          },
          itemCount: OnBoardingCubit.get(context).list.length,
          controller: _pageController,
          physics:const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return getPageViewUi(
              context,
              OnBoardingCubit.get(context)
                  .list[OnBoardingCubit.get(context).currenIndex],
            );
          },
        ),
      ),
      bottomSheet: _bottomSheetUi(context),
    );
  }

  Widget getPageViewUi(BuildContext context, OnboardingModel onboardingModel) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          onboardingModel.title,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        const SizedBox(
          height: AppSize.s8,
        ),
        Text(
          onboardingModel.subTitle,
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: AppSize.s30,
        ),
        SvgPicture.asset(
          onboardingModel.image,
        ),
      ],
    );
  }

  Widget _bottomSheetUi(BuildContext context) {
    return BlocBuilder<OnBoardingCubit, OnBoardingStates>(
        builder: (context, state) {
      return Container(
        color: ColorManager.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Routes.loginRoute);
                },
                child: Text(
                  AppStrings.skip,
                  style: Theme.of(context).textTheme.displayLarge,
                  textAlign: TextAlign.end,
                ),
              ),
            ),
            Container(
              color: ColorManager.primary,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(
                        AppPadding.p12,
                      ),
                      child: SvgPicture.asset(
                        AssetsManager.leftArrow,
                      ),
                    ),
                    onTap: () {
                      OnBoardingCubit.get(context).goprevious();
                    },
                  ),
                  for (int i = 0;
                      i < OnBoardingCubit.get(context).list.length;
                      i++)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: _getCircle(
                          i, OnBoardingCubit.get(context).currenIndex),
                    ),
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(
                        AppPadding.p12,
                      ),
                      child: SvgPicture.asset(
                        AssetsManager.rightArrow,
                      ),
                    ),
                    onTap: () {
                      OnBoardingCubit.get(context).goNext();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }

  Widget _getCircle(int index, currenIndex) {
    if (index == currenIndex) {
      return SvgPicture.asset(
        AssetsManager.hollowCircle,
      );
    } else {
      return SvgPicture.asset(
        AssetsManager.solidCircle,
      );
    }
  }
}
