import 'package:advanced_app/presentation/font_manager.dart';
import 'package:flutter/material.dart';

TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color) {
  return TextStyle(
    fontFamily: FontConstance.fontFamily,
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
  );
}

// bold weight
TextStyle getBoldStyle({
  double fontSize = FontSizeManager.s14,
  required Color color,
}) {
  return _getTextStyle(
    fontSize,
    FontWeightManager.bold,
    color,
  );
}

// light weight
TextStyle getLightStyle({
  double fontSize = FontSizeManager.s14,
  required Color color,
}) {
  return _getTextStyle(
    fontSize,
    FontWeightManager.light,
    color,
  );
}

// medium weight
TextStyle getMediumStyle({
  double fontSize = FontSizeManager.s14,
  required Color color,
}) {
  return _getTextStyle(
    fontSize,
    FontWeightManager.medium,
    color,
  );
}

// regular weight
TextStyle getRegularStyle({
  double fontSize = FontSizeManager.s14,
  required Color color,
}) {
  return _getTextStyle(
    fontSize,
    FontWeightManager.regular,
    color,
  );
}

// semiBold weight
TextStyle getSemiBoldStyle({
  double fontSize = FontSizeManager.s14,
  required Color color,
}) {
  return _getTextStyle(
    fontSize,
    FontWeightManager.semiBold,
    color,
  );
}