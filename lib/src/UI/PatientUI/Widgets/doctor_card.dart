// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:health_moble_client/core/app_export.dart';
import 'package:health_moble_client/core/constant/TColors.dart';
import 'package:health_moble_client/core/constant/TImages.dart';
import 'package:health_moble_client/core/constant/TSizes.dart';
import 'package:health_moble_client/src/widget/circle_icon.dart';
import 'package:health_moble_client/src/widget/custom_Image_View.dart';

class DoctorCard extends StatefulWidget {
  DoctorCard({super.key});

  @override
  State<DoctorCard> createState() => _DoctorCardState();
}

class _DoctorCardState extends State<DoctorCard> {
  bool _lovr = false;

  void _favorite() {
    setState(() {
      _lovr = !_lovr;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[350],
      child: Padding(
        padding: EdgeInsets.all(TSizes.ms.w),
        child: Row(
          children: [
            CustomImageView(
              radius: TBorderRadiusStyle.roundedBorder100,
              height: Get.height < 600 ? 50.w : 70.w,
              width: Get.width < 300 ? 50.w : 70.w,
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
                      fontWeight: FontWeight.w900,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  Text(
                    "Dermato-Endocrinology",
                    style: TextStyle(fontWeight: FontWeight.w100),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    children: [
                      CircleIcon(
                        icon: Icon(
                          FontAwesomeIcons.venus,
                          color: Colors.pink[200],
                          size: 17.sp,
                        ),
                      ),
                      SizedBox(
                        width: TSizes.ms,
                      ),
                      Icon(
                        FontAwesomeIcons.calendarDays,
                        size: 17.sp,
                        color: TColors.primaryColor,
                      ),
                      Spacer(), // This will push the IconButton to the end
                      IconButton(
                        onPressed: _favorite,
                        icon: !_lovr
                            ? Icon(
                                FontAwesomeIcons.heart,
                                size: 17.sp,
                                color: TColors.primaryColor,
                              )
                            : Icon(
                                Icons.favorite,
                                size: 17.sp,
                                color: TColors.primaryColor,
                              ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
