// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_moble_client/core/constant/TColors.dart';

class TTextTheme {
  TTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    bodyLarge: TextStyle().copyWith(
      color: Color(0XFF000E8D),
      fontSize: 16..sp,
      fontFamily: 'Jost',
      fontWeight: FontWeight.w400,
    ),
    bodyMedium: TextStyle().copyWith(
      color: TColors.black900,
      fontSize: 15..sp,
      fontFamily: 'Jost',
      fontWeight: FontWeight.w400,
    ),
    bodySmall: TextStyle().copyWith(
      color: TColors.transparent,
      fontSize: 10..sp,
      fontFamily: 'Jost',
      fontWeight: FontWeight.w400,
    ),
    displayMedium: TextStyle().copyWith(
      color: TColors.white700,
      fontSize: 40..sp,
      fontFamily: 'Jost',
      fontWeight: FontWeight.w700,
    ),
    headlineLarge: TextStyle().copyWith(
      color: TColors.black900,
      fontSize: 32..sp,
      fontFamily: 'Jost',
      fontWeight: FontWeight.w400,
    ),
    headlineSmall: TextStyle().copyWith(
      color: TColors.white700,
      fontSize: 24..sp,
      fontFamily: 'Jost',
      fontWeight: FontWeight.w400,
    ),
    labelMedium: TextStyle().copyWith(
      color: TColors.blue700,
      fontSize: 10..sp,
      fontFamily: 'Jost',
      fontWeight: FontWeight.w600,
    ),
    titleLarge: TextStyle().copyWith(
      color: TColors.blue700,
      fontSize: 20..sp,
      fontFamily: 'Jost',
      fontWeight: FontWeight.w500,
    ),
    titleMedium: TextStyle().copyWith(
      color: TColors.white700,
      fontSize: 18..sp,
      fontFamily: 'Jost',
      fontWeight: FontWeight.w800,
    ),
    titleSmall: TextStyle().copyWith(
      color: TColors.blue700,
      fontSize: 14..sp,
      fontFamily: 'Jost',
      fontWeight: FontWeight.w600,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    bodyLarge: TextStyle().copyWith(
      color: TColors.white700,
      fontSize: 16..sp,
      fontFamily: 'Jost',
      fontWeight: FontWeight.w400,
    ),
    bodyMedium: TextStyle().copyWith(
      color: TColors.white700,
      fontSize: 15..sp,
      fontFamily: 'Jost',
      fontWeight: FontWeight.w400,
    ),
    bodySmall: TextStyle().copyWith(
      color: TColors.white700,
      fontSize: 10..sp,
      fontFamily: 'Jost',
      fontWeight: FontWeight.w400,
    ),
    displayMedium: TextStyle().copyWith(
      color: TColors.white700,
      fontSize: 40..sp,
      fontFamily: 'Jost',
      fontWeight: FontWeight.w700,
    ),
    headlineLarge: TextStyle().copyWith(
      color: TColors.white700,
      fontSize: 32..sp,
      fontFamily: 'Jost',
      fontWeight: FontWeight.w400,
    ),
    headlineSmall: TextStyle().copyWith(
      color: TColors.white700,
      fontSize: 24..sp,
      fontFamily: 'Jost',
      fontWeight: FontWeight.w400,
    ),
    labelMedium: TextStyle().copyWith(
      color: TColors.white700,
      fontSize: 10..sp,
      fontFamily: 'Jost',
      fontWeight: FontWeight.w600,
    ),
    titleLarge: TextStyle().copyWith(
      color: TColors.white700,
      fontSize: 20..sp,
      fontFamily: 'Jost',
      fontWeight: FontWeight.w500,
    ),
    titleMedium: TextStyle().copyWith(
      color: TColors.white700,
      fontSize: 18..sp,
      fontFamily: 'Jost',
      fontWeight: FontWeight.w800,
    ),
    titleSmall: TextStyle().copyWith(
      color: TColors.white700,
      fontSize: 14..sp,
      fontFamily: 'Jost',
      fontWeight: FontWeight.w600,
    ),
  );
}
