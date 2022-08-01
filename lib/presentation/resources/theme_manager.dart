import 'package:advanced_app/presentation/resources/color_manager.dart';
import 'package:advanced_app/presentation/resources/font_manager.dart';
import 'package:advanced_app/presentation/resources/styles_manager.dart';
import 'package:advanced_app/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';

ThemeData getAppTheme() {
  return ThemeData(
    // main color
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.lightPrimary,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1,

    //card theme
    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.lightGrey,
      elevation: AppSize.s4,
    ),
    //app bar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.primary,
      shadowColor: ColorManager.lightPrimary,
      elevation: AppSize.s4,
      titleTextStyle: getRegularStyle(
        fontSize: FontSizeManager.s16,
        color: ColorManager.white,
      ),
    ),
    // button theme
    buttonTheme: ButtonThemeData(
      buttonColor: ColorManager.primary,
      splashColor: ColorManager.lightPrimary,
      disabledColor: ColorManager.grey1,
      shape: const StadiumBorder(),
    ),
    //elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: ColorManager.primary,
        textStyle: getRegularStyle(
          color: ColorManager.white,
          fontSize: FontSizeManager.s17,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            AppSize.s12,
          ),
        ),
      ),
    ),
    //text theme
    textTheme: TextTheme(
      headline1: getSemiBoldStyle(
        color: ColorManager.grey1,
        fontSize: FontSizeManager.s16,
      ),
      bodyMedium: getRegularStyle(
        color: ColorManager.grey2,
      ),
      button: getMediumStyle(
        color: ColorManager.white,
        fontSize: FontSizeManager.s16,
      ),
      bodySmall: getRegularStyle(
        color: ColorManager.primary,
        fontSize: FontSizeManager.s12,
      ),
      bodyText1: getRegularStyle(
        color: ColorManager.darkGrey,
        fontSize: FontSizeManager.s12,
      ),
      labelMedium: getBoldStyle(
        color: ColorManager.primary,
        fontSize: FontSizeManager.s12,
      ),
      labelLarge: getSemiBoldStyle(
        color: ColorManager.primary,
        fontSize: FontSizeManager.s18,
      ),
    ),
    // input decoration theme (text form field)
    inputDecorationTheme: InputDecorationTheme(
      //content padding
      contentPadding: EdgeInsets.all(
        AppSize.s8,
      ),
      // hint style
      hintStyle: getRegularStyle(
        color: ColorManager.grey1,
      ),
      // label style
      labelStyle: getMediumStyle(
        color: ColorManager.grey1,
      ),
      //enable style
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.grey1,
          width: AppSize.s1,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            AppSize.s8,
          ),
        ),
      ),
      // focus style
      focusColor: ColorManager.primary,
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.primary,
          width: AppSize.s1,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            AppSize.s8,
          ),
        ),
      ),
      //error style
      errorStyle: getRegularStyle(
        color: ColorManager.error,
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.primary,
          width: AppSize.s1,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            AppSize.s8,
          ),
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.error,
          width: AppSize.s1,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            AppSize.s8,
          ),
        ),
      ),
    ),
  );
}
