// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:health_moble_client/core/app_export.dart';
import 'package:health_moble_client/core/constant/TColors.dart';
import 'package:health_moble_client/core/constant/TImages.dart';
import 'package:health_moble_client/core/constant/TSizes.dart';
import 'package:health_moble_client/src/widget/circle_icon.dart';
import 'package:health_moble_client/src/widget/custom_circle_back.dart';
import 'package:health_moble_client/src/widget/custom_image_view.dart';

class PatientProfileInfoScreen extends StatefulWidget {
  const PatientProfileInfoScreen({super.key});

  @override
  State<PatientProfileInfoScreen> createState() =>
      _PatientProfileInfoScreenState();
}

class _PatientProfileInfoScreenState extends State<PatientProfileInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(TSizes.md.w),
              child: Column(
                children: [
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "My Profile",
                          style: TextStyle(color: TColors.primaryColor),
                        ),
                        SizedBox(
                          height: TSizes.md.h,
                        ),
                        CustomImageView(
                          radius: TBorderRadiusStyle.roundedBorder100,
                          imagePath: TImages.profile,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: TSizes.md.h,
                        ),
                        Text("Jesse Yeboah"),

                        // SizedBox(height: TSizes.md.h),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: TSizes.xl3,
                  ),
                  _profileDetails(context),
                  SizedBox(height: TSizes.md.h),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: TSizes.md.w,
            child: CircleBack(),
          ),
        ]),
      ),
    );
  }

  Widget _profileDetails(BuildContext context) {
    return Column(
      children: [
        _buildDetails(
            icon: FontAwesomeIcons.userCheck,
            title: "Profile Info",
            onTap: () {}),
        _buildDetails(
            icon: Icons.medical_information,
            title: "Medical History",
            onTap: () {}),
        _buildDetails(
            icon: FontAwesomeIcons.fileMedical,
            title: "Insurance",
            onTap: () {}),
        _buildDetails(
            icon: Icons.contact_emergency,
            title: "Emergency Contacts",
            onTap: () {}),
      ],
    );
  }

  Widget _buildDetails(
      {required IconData icon,
      required String title,
      required VoidCallback onTap,
      Color? iconColor}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      decoration: BoxDecoration(
        color: TColors.primaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ListTile(
        leading: CircleIcon(
          icon: icon,
          iconSize: 15.sp,
          iconColor: iconColor ?? TColors.primaryColor,
        ),
        // Icon(icon, color: Colors.white, size: 24),
        title: Text(
          title,
        ),
        onTap: onTap,
        trailing: Icon(FontAwesomeIcons.anglesRight, size: 20.sp),
      ),
    );
  }
}
