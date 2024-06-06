import 'package:flutter/material.dart';
import 'package:health_moble_client/core/constant/TColors.dart';

class TBottomSheetTheme {
  TBottomSheetTheme._();

  static BottomSheetThemeData lightBottomSheetTheme =
      BottomSheetThemeData(backgroundColor: TColors.white700);

  static BottomSheetThemeData darkBottomSheetTheme =
      BottomSheetThemeData(backgroundColor: TColors.black900);
}
