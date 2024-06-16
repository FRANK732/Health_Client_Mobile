// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircleIcon extends StatelessWidget {
  CircleIcon(
      {super.key,
      this.color,
      required this.icon,
      this.iconColor,
      required this.iconSize});

  final IconData icon;
  final Color? color;
  final Color? iconColor;
  final double iconSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3.sp),
      decoration:
          BoxDecoration(color: color ?? Colors.white, shape: BoxShape.circle),
      child: Icon(
        icon,
        color: iconColor,
        size: iconSize,
      ),
    );
  }
}
