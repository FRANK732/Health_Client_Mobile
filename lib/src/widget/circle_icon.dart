// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircleIcon extends StatelessWidget {
  CircleIcon({super.key, this.color, required this.icon});

  final Widget icon;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3.sp),
      decoration:
          BoxDecoration(color: color ?? Colors.white, shape: BoxShape.circle),
      child: icon,
    );
  }
}
