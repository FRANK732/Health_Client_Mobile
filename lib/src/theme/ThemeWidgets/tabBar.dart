// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TTabBarTheme {
  TTabBarTheme._();

  static TabBarTheme lightTabBArTheme = TabBarTheme(
    labelStyle: TextStyle(
      fontSize: 23.sp,
      fontWeight: FontWeight.bold,
    ),
    unselectedLabelStyle: TextStyle(
      fontSize: 16.sp,
    ),
    labelColor: Colors.blue,
    unselectedLabelColor: Colors.grey,
    indicator: UnderlineTabIndicator(
      borderSide: BorderSide(color: Colors.blue, width: 2.0),
    ),
  );

  static TabBarTheme darkTabBArTheme = TabBarTheme(
    labelStyle: TextStyle(
      fontSize: 23.sp,
      fontWeight: FontWeight.bold,
    ),
    unselectedLabelStyle: TextStyle(
      fontSize: 16.sp,
    ),
    labelColor: Colors.white,
    unselectedLabelColor: Colors.grey[600],
    indicator: UnderlineTabIndicator(
      borderSide: BorderSide(color: Colors.white, width: 2.0),
    ),
  );
}
