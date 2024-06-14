import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:health_moble_client/core/constant/TColors.dart';
import 'package:health_moble_client/src/widget/patient_drawer_header.dart';

class PatientDrawer extends StatefulWidget {
  const PatientDrawer({super.key});

  @override
  State<PatientDrawer> createState() => _PatientDrawerState();
}

class _PatientDrawerState extends State<PatientDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: TColors.primaryColor,
      child: Column(
        children: [
          PatientDrawerHeader(
            name: 'Jesse Yeboah',
            onTapProfile: () {},
          ),
          Icon(FontAwesomeIcons.tty)
        ],
      ),
    );
  }
}
