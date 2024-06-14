// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:health_moble_client/core/constant/TColors.dart';
import 'package:health_moble_client/core/constant/TSizes.dart';
import 'package:health_moble_client/src/UI/PatientUI/Widgets/appointment_card.dart';
import 'package:health_moble_client/src/UI/PatientUI/Widgets/doctor_card.dart';
import 'package:health_moble_client/src/widget/circle_icon.dart';
import 'package:intl/intl.dart';

class TSilvarAppBar extends StatefulWidget {
  const TSilvarAppBar({super.key});

  @override
  State<TSilvarAppBar> createState() => _TSilvarAppBarState();
}

class _TSilvarAppBarState extends State<TSilvarAppBar> {
  final globalKey = GlobalKey();
  final String dateNow = DateFormat('y-MM-dd').format(DateTime.now());
  final ScrollController _controller = ScrollController();

  late double _expandedHeight;
  late bool _isPinned = false;

  @override
  void initState() {
    super.initState();
    _expandedHeight = Get.height.w * 0.35.h;
    _controller.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (_controller.hasClients) {
      setState(() {
        _isPinned = _controller.offset > (_expandedHeight - kToolbarHeight);
      });
    }
  }

  @override
  void dispose() {
    _controller.removeListener(_scrollListener);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: _controller,
      slivers: <Widget>[
        SliverAppBar(
          leading: Builder(
              builder: (context) => IconButton(
                    icon: Icon(FontAwesomeIcons.bars),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                  )),
          expandedHeight: _expandedHeight,
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
                              style:
                                  TextStyle(fontSize: 24, color: Colors.black)),
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
                  child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: _buildDeliveryCardList(context)),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0.sp),
              child: FittedBox(
                fit: BoxFit.contain,
                child: Row(
                  children: [
                    CircleIcon(icon: Icon(Icons.notifications_none)),
                    SizedBox(
                      width: TSizes.ms,
                    ),
                    CircleIcon(
                        icon: Icon(
                      Icons.settings,
                    ))
                  ],
                ),
              ),
            ),
          ],
          shape: !_isPinned
              ? RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(25)))
              : null,
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
              return Padding(
                padding: EdgeInsets.only(
                    left: 15.0.w, right: 15.0.w, bottom: 10.0.w),
                child: DoctorCard(),
              );
              Container(
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
    );
  }

  Widget _buildDeliveryCardList(BuildContext context) {
    return Row(
      children: List.generate(5, (index) {
        return Padding(
          padding: EdgeInsets.only(bottom: TSizes.xs.h),
          child: AppointmentCard(),
        );
      }),
    );
  }
}
