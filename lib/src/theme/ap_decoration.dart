// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_moble_client/core/constant/TColors.dart';

class TBoxDecoration {
  // Doctor Card decoration
  static BoxDecoration get doctorOutline => BoxDecoration(
        color: Colors.grey[350],
        boxShadow: [
          BoxShadow(
            color: TColors.primaryColor.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 4),
          ),
        ],
      );

  static BoxDecoration get profileOutline => BoxDecoration(
        color: TColors.primaryColor,
        borderRadius: BorderRadius.circular(35.h),
        boxShadow: [
          BoxShadow(
            color: TColors.primaryColor.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 4),
          ),
        ],
      );
}

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
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
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
}
