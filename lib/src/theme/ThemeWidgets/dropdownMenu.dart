// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:health_moble_client/core/app_export.dart';

class TDropDownMenuTheme {
  TDropDownMenuTheme._();

  static DropdownMenuThemeData lightDropMenuTheme = DropdownMenuThemeData(
      inputDecorationTheme: TTextFormDFieldTheme.lightInputDecorationTheme);
  static DropdownMenuThemeData darkDropMenuTheme = DropdownMenuThemeData(
      inputDecorationTheme: TTextFormDFieldTheme.darkInputDecorationTheme);
}
