import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TBorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder50 => BorderRadius.circular(
        50.h,
      );
  static BorderRadius get circleBorder25 => BorderRadius.circular(
        25.h,
      );
  static BorderRadius get circleBorder20 => BorderRadius.circular(
        20.h,
      );

  // Custom borders
  static BorderRadius get customBorderTL50 => BorderRadius.vertical(
        top: Radius.circular(50.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder11 => BorderRadius.circular(
        11.h,
      );
  static BorderRadius get roundedBorder100 => BorderRadius.circular(
        100.h,
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
