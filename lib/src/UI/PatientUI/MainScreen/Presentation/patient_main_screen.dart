// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:health_moble_client/src/UI/PatientUI/Widgets/custom_sliver_appbar.dart';

class PatientDashBoard extends StatefulWidget {
  const PatientDashBoard({super.key});

  @override
  State<PatientDashBoard> createState() => _PatientDashBoardState();
}

class _PatientDashBoardState extends State<PatientDashBoard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: TSilvarAppBar(),
    ));
  }
}
