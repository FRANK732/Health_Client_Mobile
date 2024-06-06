// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:health_moble_client/core/constant/TColors.dart';

class TAppBarTheme {
  TAppBarTheme._();

  static AppBarTheme lightAppBarTheme = AppBarTheme(
      color: TColors.primaryColor,
      elevation: 0,
      centerTitle: true,
      surfaceTintColor: TColors.transparent,
      scrolledUnderElevation: 0);

  static AppBarTheme darkAppBarTheme = AppBarTheme(
    color: TColors.primaryColor,
    elevation: 0,
    centerTitle: true,
    surfaceTintColor: TColors.transparent,
  );
}
