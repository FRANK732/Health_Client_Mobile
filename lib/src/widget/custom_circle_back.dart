// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:health_moble_client/core/constant/TColors.dart';

class CircleBack extends StatelessWidget {
  const CircleBack({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Get.back();
        },
        child: Container(
          width: 56.0,
          height: 56.0,
          decoration: BoxDecoration(
            color: TColors.primaryColor,
            shape: BoxShape.circle,
          ),
          child: Center(
              child: FaIcon(
            FontAwesomeIcons.angleLeft,
            color: TColors.white700,
          )),
        ));
  }
}
