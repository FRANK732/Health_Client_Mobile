// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:health_moble_client/core/constant/TSizes.dart';
import 'package:health_moble_client/src/UI/PatientUI/Widgets/appointment_card.dart';
import 'package:intl/intl.dart';

class TSilvarAppBar extends StatefulWidget {
  const TSilvarAppBar({super.key});

  @override
  State<TSilvarAppBar> createState() => _TSilvarAppBarState();
}

class _TSilvarAppBarState extends State<TSilvarAppBar> {
  final globalKey = GlobalKey();
  String dateNow = DateFormat('y-m-d').format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: Get.height.w * 0.35,
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.tty),
                        SizedBox(
                          width: TSizes.ms,
                        ),
                        Column(
                          children: [
                            Text("Today's Appointments",
                                style: TextStyle(
                                    fontSize: 24, color: Colors.black)),
                            Text(
                              dateNow,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AppointmentCard(),
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.favorite),
                onPressed: () {
                  // Add your onPressed code here!
                },
              ),
            ],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(25),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
                onChanged: (value) {
                  // Add your search logic here!
                },
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  color: index.isOdd ? Colors.white : Colors.black12,
                  height: 100.0,
                  child: Center(
                    child: Text('$index',
                        key: index == 2 ? globalKey : null, textScaleFactor: 5),
                  ),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
