// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:health_moble_client/core/constant/TColors.dart';
import 'package:health_moble_client/core/constant/TSizes.dart';

class CircleBack extends StatelessWidget {
  const CircleBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: TSizes.md.h),
      child: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Container(
            width: 36.0,
            height: 36.0,
            decoration: BoxDecoration(
              color: TColors.primaryColor,
              shape: BoxShape.circle,
            ),
            child: Center(
                child: FaIcon(
              FontAwesomeIcons.angleLeft,
              color: TColors.white700,
            )),
          )),
    );
  }
}
