// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:health_moble_client/core/app_export.dart';
import 'package:health_moble_client/core/constant/TColors.dart';
import 'package:health_moble_client/core/constant/TImages.dart';
import 'package:health_moble_client/core/constant/TSizes.dart';
import 'package:health_moble_client/src/widget/custom_curved.dart';
import 'package:health_moble_client/src/widget/custom_image_view.dart';

class PatientDrawerHeader extends StatelessWidget {
  final String name;
  final GestureTapCallback onTapProfile;

  PatientDrawerHeader({
    Key? key,
    required this.name,
    required this.onTapProfile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCurveEdges(),
      child: Container(
        width: double.infinity,
        height: 250,
        decoration: BoxDecoration(color: TColors.white700),
        child: Padding(
          padding: EdgeInsets.all(TSizes.md.w),
          child: LayoutBuilder(
            builder: (context, constraints) {
              if (Get.width > 500) {
                return _buildColumnLayout(context);
              } else {
                return _buildRowLayout(context);
              }
            },
          ),
        ),
      ),
    );
  }

  Widget _buildRowLayout(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
            onTap: onTapProfile,
            child: name.isNotEmpty
                ? _buildInitialImage(name, context)
                : CustomImageView(
                    imagePath: TImages.profile,
                    radius: TBorderRadiusStyle.roundedBorder100,
                    fit: BoxFit.contain,
                  )),
        SizedBox(width: TSizes.ms),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi, Welcome Back",
                style: TextStyle(
                  color: TColors.primaryColor,
                  fontWeight: FontWeight.w900,
                ),
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
          ),
        ),
      ],
    );
  }

  Widget _buildColumnLayout(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
            onTap: onTapProfile,
            child: name.isNotEmpty
                ? _buildInitialImage(name, context)
                : CustomImageView(
                    imagePath: TImages.profile,
                    radius: TBorderRadiusStyle.roundedBorder100,
                    fit: BoxFit.contain,
                  )
            // CircleAvatar(
            //     radius: 20.h,
            //     foregroundImage: AssetImage(
            //       'assets/images/Coat_of_arms_of_Ghana.svg.png',
            //     ),
            //   ),
            ),
        SizedBox(height: TSizes.ms),
        Text(
          "Hi, Welcome Back",
          style: TextStyle(
              color: TColors.primaryColor,
              fontWeight: FontWeight.w700,
              fontSize: 10),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        SizedBox(height: TSizes.xs),
        Text(
          name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 15),
        ),
      ],
    );
  }

  Widget _buildInitialImage(String? username, BuildContext context) {
    String initial = username != null && username.isNotEmpty
        ? username[0].toUpperCase()
        : '';
    return Container(
      width: 70.h,
      height: 70.h,
      decoration: TBoxDecoration.profileOutline,
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
