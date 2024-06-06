import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TBorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder50 => BorderRadius.circular(
        50.h,
      );
  static BorderRadius get circleBorder1 => BorderRadius.circular(
        1.h,
      );
  static BorderRadius get circleBorder20 => BorderRadius.circular(
        20.h,
      );

  // Custom borders
  static BorderRadius get customBorderTL50 => BorderRadius.vertical(
        top: Radius.circular(50.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder17 => BorderRadius.circular(
        17.h,
      );
  static BorderRadius get roundedBorder2 => BorderRadius.circular(
        2.h,
      );
  static BorderRadius get roundedBorder5 => BorderRadius.circular(
        5.h,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
  static BorderRadius get roundedBorder55 => BorderRadius.circular(
        55.h,
      );

  static BorderRadius get customBorderLR100 => BorderRadius.horizontal(
        right: Radius.circular(100.h),
      );

  // Rounded borders

  static BorderRadius get roundedBorder6 => BorderRadius.circular(
        6.h,
      );

  // Circle borders
  static BorderRadius get circleBorder46 => BorderRadius.circular(
        46.h,
      );

  // Custom borders
}
