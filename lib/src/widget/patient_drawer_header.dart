// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:health_moble_client/core/constant/TColors.dart';
import 'package:health_moble_client/core/constant/TSizes.dart';
import 'package:health_moble_client/src/widget/custom_curved.dart';

class PatientDrawerHeader extends StatelessWidget {
  final String name;
  final GestureTapCallback onTapProfile;

  const PatientDrawerHeader({
    Key? key,
    required this.name,
    required this.onTapProfile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCurveEdges(),
      child: Container(
        height: Get.height.w / 5,
        decoration: BoxDecoration(color: TColors.white700),
        child: Padding(
          padding: EdgeInsets.all(TSizes.md.w),
          child: SizedBox(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: onTapProfile,
                  child: name.isNotEmpty
                      ? _buildInitialImage(name, context)
                      : CircleAvatar(
                          radius: 20.h,
                          foregroundImage: AssetImage(
                            'assets/images/Coat_of_arms_of_Ghana.svg.png',
                          ),
                        ),
                ),
                SizedBox(width: TSizes.ms),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Hi, WelcomeBack",
                      style: TextStyle(
                          color: TColors.primaryColor,
                          fontWeight: FontWeight.w900),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    SizedBox(height: TSizes.ms),
                    Text(
                      name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 14.sp,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInitialImage(String? username, BuildContext context) {
    String initial = username != null && username.isNotEmpty
        ? username[0].toUpperCase()
        : '';
    return Container(
      width: 70.h,
      height: 70.h,
      decoration: BoxDecoration(
        color: Colors.amber.shade400,
        borderRadius: BorderRadius.circular(35.h),
      ),
      alignment: Alignment.center,
      child: Center(
        child: Text(
          initial,
          style: TextStyle(
            fontSize: 40.h,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
