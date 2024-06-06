import 'package:flutter/material.dart';
import 'package:health_moble_client/core/app_export.dart';
import 'package:health_moble_client/core/constant/TColors.dart';

class TCheckBoxTheme {
  TCheckBoxTheme._();

  static CheckboxThemeData lightCheckBoxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(
        borderRadius: TBorderRadiusStyle.roundedBorder11),
    checkColor: MaterialStateProperty.resolveWith(
      (states) {
        if (states.contains(MaterialState.selected)) {
          return TColors.white700;
        } else {
          return TColors.black900;
        }
      },
    ),
    fillColor: MaterialStateProperty.resolveWith(
      (states) {
        if (states.contains(MaterialState.selected)) {
          return TColors.primaryColor;
        } else {
          return TColors.transparent;
        }
      },
    ),
  );

  static CheckboxThemeData darkCheckBoxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(
        borderRadius: TBorderRadiusStyle.roundedBorder11),
    checkColor: MaterialStateProperty.resolveWith(
      (states) {
        if (states.contains(MaterialState.selected)) {
          return TColors.white700;
        } else {
          return TColors.black900;
        }
      },
    ),
    fillColor: MaterialStateProperty.resolveWith(
      (states) {
        if (states.contains(MaterialState.selected)) {
          return TColors.primaryColor;
        } else {
          return TColors.transparent;
        }
      },
    ),
  );
}
