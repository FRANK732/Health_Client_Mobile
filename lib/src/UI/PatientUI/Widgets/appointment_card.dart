// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_moble_client/core/app_export.dart';
import 'package:health_moble_client/core/constant/TColors.dart';
import 'package:health_moble_client/core/constant/TImages.dart';
import 'package:health_moble_client/core/constant/TSizes.dart';
import 'package:health_moble_client/src/widget/custom_Image_View.dart';

class AppointmentCard extends StatelessWidget {
  const AppointmentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
          borderRadius: TBorderRadiusStyle.circleBorder25),
      child: Padding(
        padding: EdgeInsets.all(TSizes.ms),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomImageView(
              radius: TBorderRadiusStyle.circleBorder50,
              height: 80,
              width: 80.w,
              imagePath: TImages.profile,
            ),
            SizedBox(
              width: TSizes.ms,
            ),
            Column(
              children: [
                Text(
                  "Dr. Olivia Turner, M.D.",
                  style: TextStyle(
                    color: TColors.primaryColor,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
