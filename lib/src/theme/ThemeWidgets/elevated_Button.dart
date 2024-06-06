// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:health_moble_client/core/app_export.dart';
import 'package:health_moble_client/core/constant/TColors.dart';

class TElevatedTheme {
  TElevatedTheme._();

  static final lightElevatedTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: TColors.white700,
      backgroundColor: TColors.green800,
      // disabledBackgroundColor: TColors.blueGray400,
      disabledForegroundColor: TColors.gray700,
      side: BorderSide(
        color: TColors.green800,
      ),
      // textStyle: CustomTextStyles.bodySmallBlack900,
      shape: RoundedRectangleBorder(
          borderRadius: TBorderRadiusStyle.circleBorder25),
    ),
  );

  static final darkElevatedTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: TColors.white700,
      backgroundColor: TColors.green800,
      disabledBackgroundColor: TColors.gray700,
      disabledForegroundColor: TColors.gray700,
      side: BorderSide(
        color: TColors.primaryColor,
      ),
      // textStyle: CustomTextStyles.bodySmallBlack900,
      shape: RoundedRectangleBorder(
          borderRadius: TBorderRadiusStyle.circleBorder25),
    ),
  );
}
