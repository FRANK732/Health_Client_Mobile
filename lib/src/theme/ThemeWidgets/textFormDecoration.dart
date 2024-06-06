// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_moble_client/core/app_export.dart';
import 'package:health_moble_client/core/constant/TColors.dart'; // Ensure this file contains all necessary exports

/// Defines themes for text form fields within the app.
class TTextFormDFieldTheme {
  TTextFormDFieldTheme._();

  static final OutlineInputBorder _commonBorder = OutlineInputBorder(
    borderRadius: TBorderRadiusStyle.roundedBorder11,
    borderSide: BorderSide(color: TColors.green800),
  );

  // Light theme decoration for input fields
  static InputDecorationTheme get lightInputDecorationTheme =>
      InputDecorationTheme(
        // suffixStyle: ,
        contentPadding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.h),
        hintStyle: TextStyle(fontSize: 20.sp, color: TColors.black900),
        floatingLabelStyle: TextStyle(fontSize: 20.sp, color: TColors.gray700),
        border: _commonBorder,
        focusedBorder: _commonBorder.copyWith(
            borderSide: BorderSide(color: TColors.blue700)),
        enabledBorder: _commonBorder,
        disabledBorder: _commonBorder,
        errorBorder: _commonBorder.copyWith(
            borderSide: BorderSide(color: TColors.red700)),
        focusedErrorBorder: _commonBorder.copyWith(
            borderSide: BorderSide(color: TColors.red700)),
        errorStyle: TextStyle(color: TColors.red700),
      );

  // Dark theme decoration for input fields
  static InputDecorationTheme get darkInputDecorationTheme =>
      InputDecorationTheme(
        contentPadding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.h),
        hintStyle: TextStyle(fontSize: 20.sp, color: TColors.white700),
        floatingLabelStyle:
            TextStyle(fontSize: 20.sp, color: TColors.primaryColor),
        border: _commonBorder,
        focusedBorder: _commonBorder.copyWith(
            borderSide: BorderSide(color: TColors.primaryColor)),
        enabledBorder: _commonBorder,
        disabledBorder: _commonBorder,
        errorBorder: _commonBorder.copyWith(
            borderSide: BorderSide(color: TColors.red700)),
        focusedErrorBorder: _commonBorder.copyWith(
            borderSide: BorderSide(color: TColors.red700)),
        errorStyle: TextStyle(color: TColors.red700),
      );
}
