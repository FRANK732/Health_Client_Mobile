// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:health_moble_client/core/app_export.dart';
import 'package:health_moble_client/core/constant/TColors.dart';
import 'package:health_moble_client/core/constant/TImages.dart';
import 'package:health_moble_client/core/constant/TSizes.dart';
import 'package:health_moble_client/src/widget/custom_image_view.dart';

class AppointmentCard extends StatelessWidget {
  const AppointmentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width * 0.8,
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: TBorderRadiusStyle.circleBorder25,
        ),
        child: Padding(
          padding: EdgeInsets.all(TSizes.ms),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                radius: TBorderRadiusStyle.roundedBorder100,
                height: Get.height < 600 ? 50.w : 60.w,
                width: Get.width < 300 ? 50.w : 60.w,
                imagePath: TImages.profile,
              ),
              SizedBox(
                width: TSizes.ms,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Dr. Olivia Turner, M.D.",
                      style: TextStyle(
                          color: TColors.primaryColor,
                          fontWeight: FontWeight.w900),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    // Icon(
                    //   FontAwesomeIcons.xmark,
                    // ),
                    Text(
                      "General Practitioner with over 10 years of experience in family medicine and healthcare ",
                      style: TextStyle(fontWeight: FontWeight.w100),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      "9:00 am - 12:00 pm",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 14.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
