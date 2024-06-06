// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:health_moble_client/core/app_export.dart';
import 'package:health_moble_client/core/constant/TColors.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      textTheme: TTextTheme.lightTextTheme,
      elevatedButtonTheme: TElevatedTheme.lightElevatedTheme,
      appBarTheme: TAppBarTheme.lightAppBarTheme,
      checkboxTheme: TCheckBoxTheme.lightCheckBoxTheme,
      inputDecorationTheme: TTextFormDFieldTheme.lightInputDecorationTheme,
      bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
      tabBarTheme: TTabBarTheme.lightTabBArTheme,
      scaffoldBackgroundColor: TColors.backgroundColor,
      dropdownMenuTheme: TDropDownMenuTheme.lightDropMenuTheme
      // cardTheme:

      // dropdownMenuTheme:
      // tabBarTheme:
      // elevatedButtonTheme:
      );

  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      useMaterial3: true,
      textTheme: TTextTheme.darkTextTheme,
      elevatedButtonTheme: TElevatedTheme.darkElevatedTheme,
      appBarTheme: TAppBarTheme.darkAppBarTheme,
      checkboxTheme: TCheckBoxTheme.darkCheckBoxTheme,
      inputDecorationTheme: TTextFormDFieldTheme.darkInputDecorationTheme,
      bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
      tabBarTheme: TTabBarTheme.darkTabBArTheme,
      dropdownMenuTheme: TDropDownMenuTheme.darkDropMenuTheme);
}
